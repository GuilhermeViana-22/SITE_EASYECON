# Usando imagem Node.js Alpine para menor tamanho
FROM node:18-alpine AS builder

# Definir diretório de trabalho
WORKDIR /app

# Copiar arquivos de dependências primeiro (para aproveitar cache do Docker)
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./

# Instalar dependências baseado no gerenciador de pacotes disponível
RUN if [ -f yarn.lock ]; then yarn install --frozen-lockfile; \
    elif [ -f package-lock.json ]; then npm ci; \
    elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm install --frozen-lockfile; \
    else npm install; fi

# Copiar código fonte
COPY . .

# Build da aplicação para produção
RUN if [ -f yarn.lock ]; then yarn build; \
    elif [ -f pnpm-lock.yaml ]; then corepack enable pnpm && pnpm build; \
    else npm run build; fi

# Estágio de produção com Nginx
FROM nginx:alpine AS production

# Instalar curl para health checks
RUN apk add --no-cache curl

# Copiar arquivos buildados do estágio anterior
COPY --from=builder /app/dist /usr/share/nginx/html

# Copiar configuração customizada do Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Criar usuário não-root para segurança
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nextjs -u 1001

# Definir permissões corretas
RUN chown -R nextjs:nodejs /usr/share/nginx/html && \
    chown -R nextjs:nodejs /var/cache/nginx && \
    chown -R nextjs:nodejs /var/log/nginx && \
    chown -R nextjs:nodejs /etc/nginx/conf.d

# Criar diretórios necessários com permissões corretas
RUN touch /var/run/nginx.pid && \
    chown -R nextjs:nodejs /var/run/nginx.pid

# Mudar para usuário não-root
USER nextjs

# Expor porta 8081 (não privilegiada)
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
