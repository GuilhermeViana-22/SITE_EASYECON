<template>
  <section class="py-32 px-4 relative overflow-hidden">
    <!-- Background futurístico -->
    <div class="absolute inset-0">
      <!-- Subtle background blur -->
      <div class="absolute inset-0 bg-radial-green-soft opacity-5 blur-3xl"></div>
      <!-- Animated particles -->
      <div class="floating-particles">
        <div class="particle particle-1"></div>
        <div class="particle particle-2"></div>
        <div class="particle particle-3"></div>
        <div class="particle particle-4"></div>
      </div>
    </div>
    
    <div class="container mx-auto relative z-10">
      <!-- Header moderno -->
      <div class="text-center mb-24">
        <div class="inline-block mb-6">
          <span class="section-badge">
            <span class="badge-emoji">💬</span>
            DEPOIMENTOS
          </span>
        </div>
        <h2 class="text-5xl md:text-6xl font-bold mb-8 text-white leading-tight">
          O que nossos <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-green via-emerald-400 to-cyan-400">clientes</span> dizem
        </h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto leading-relaxed">
          Histórias reais de transformação digital que mudaram empresas inteiras
        </p>
      </div>
      
      <!-- Grid de depoimentos modernos -->
      <div class="testimonials-grid">
        <div 
          v-for="(testimonial, index) in testimonials" 
          :key="testimonial.id"
          :class="`testimonial-card testimonial-${index + 1}`"
          @mouseenter="playCardHover"
        >
          <!-- Background glow -->
          <div class="card-glow"></div>
          
          <!-- Header do card -->
          <div class="card-header">
            <!-- Avatar futurístico -->
            <div class="avatar-container">
              <div class="avatar-ring"></div>
              <div class="avatar-image">
                <img :src="testimonial.avatar" :alt="testimonial.name" class="w-full h-full object-cover rounded-full" />
                <div class="avatar-status"></div>
              </div>
            </div>
            
            <!-- Info do cliente -->
            <div class="client-info">
              <h4 class="client-name">{{ testimonial.name }}</h4>
              <p class="client-position">{{ testimonial.position }}</p>
              <p class="client-company">{{ testimonial.company }}</p>
            </div>
            
            <!-- Rating com estrelas -->
            <div class="rating-container">
              <div class="stars">
                <span v-for="star in 5" :key="star" class="star">⭐</span>
              </div>
              <span class="rating-text">5.0</span>
            </div>
          </div>
          
          <!-- Quote principal -->
          <div class="quote-container">
            <div class="quote-icon">"</div>
            <p class="quote-text">{{ testimonial.quote }}</p>
          </div>
          
          <!-- Resultados impressionantes -->
          <div class="results-section">
            <div class="result-item">
              <span class="result-emoji">{{ testimonial.resultEmoji }}</span>
              <span class="result-text">{{ testimonial.result }}</span>
            </div>
            <div class="happiness-indicator">
              <span class="happiness-emoji">{{ testimonial.happinessEmoji }}</span>
              <span class="happiness-text">Cliente Satisfeito</span>
            </div>
          </div>
          
          <!-- Footer com tempo -->
          <div class="card-footer">
            <span class="time-badge">
              <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>
              </svg>
              {{ testimonial.timeframe }}
            </span>
          </div>
          
          <!-- Holographic border -->
          <div class="holographic-border"></div>
        </div>
      </div>
      
      <!-- Stats impressionantes -->
      <div class="testimonials-stats">
        <div class="stat-card">
          <div class="stat-number">4.9</div>
          <div class="stat-label">Rating Médio</div>
          <div class="stat-stars">⭐⭐⭐⭐⭐</div>
        </div>
        <div class="stat-divider"></div>
        <div class="stat-card">
          <div class="stat-number">500+</div>
          <div class="stat-label">Clientes Felizes</div>
          <div class="stat-emoji">😍</div>
        </div>
        <div class="stat-divider"></div>
        <div class="stat-card">
          <div class="stat-number">98%</div>
          <div class="stat-label">Recomendam</div>
          <div class="stat-emoji">🚀</div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'TestimonialsSection',
  data() {
    return {
      testimonials: [
        {
          id: 1,
          name: "Maria Rodriguez",
          position: "CEO",
          company: "TechCorp Solutions",
          avatar: "https://images.unsplash.com/photo-1494790108755-2616b332c3ca?w=150&h=150&fit=crop&crop=face",
          quote: "A EasyEcon revolucionou completamente nossa operação. Em apenas 6 meses, vimos resultados que superaram todas as expectativas. A automação implementada nos deu superpoderes!",
          result: "+340% ROI",
          resultEmoji: "📈",
          happinessEmoji: "🤩",
          timeframe: "Há 3 meses"
        },
        {
          id: 2,
          name: "João Silva",
          position: "CTO",
          company: "InnovateNow",
          avatar: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face",
          quote: "Impressionante! O sistema de IA desenvolvido pela EasyEcon nos deu insights que mudaram nossa estratégia. Nunca imaginei que poderíamos crescer tão rápido.",
          result: "+250% Crescimento",
          resultEmoji: "🎯",
          happinessEmoji: "😎",
          timeframe: "Há 5 meses"
        },
        {
          id: 3,
          name: "Ana Santos",
          position: "Diretora de TI",
          company: "GlobalTech",
          avatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150&h=150&fit=crop&crop=face",
          quote: "Profissionalismo excepcional! A EasyEcon não é apenas um fornecedor, é um parceiro estratégico. Cada projeto é entregue com perfeição e supera o esperado.",
          result: "+180% Eficiência",
          resultEmoji: "⚡",
          happinessEmoji: "🥳",
          timeframe: "Há 2 meses"
        },
        {
          id: 4,
          name: "Carlos Mendes",
          position: "Founder",
          company: "StartupX",
          avatar: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face",
          quote: "Game changer total! A solução de CRM que desenvolveram transformou nossa startup numa máquina de vendas. Nossos investidores ficaram impressionados com os números.",
          result: "+420% Conversões",
          resultEmoji: "💰",
          happinessEmoji: "🔥",
          timeframe: "Há 4 meses"
        },
        {
          id: 5,
          name: "Lucia Martinez",
          position: "VP Marketing",
          company: "Digital Corp",
          avatar: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&h=150&fit=crop&crop=face",
          quote: "Simplesmente fantástico! A automação de marketing que implementaram nos deu resultados que nem sonhávamos. Agora geramos leads 24/7 no piloto automático.",
          result: "+500% Leads",
          resultEmoji: "🎨",
          happinessEmoji: "✨",
          timeframe: "Há 1 mês"
        },
        {
          id: 6,
          name: "Roberto Lima",
          position: "CEO",
          company: "FintechPro",
          avatar: "https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?w=150&h=150&fit=crop&crop=face",
          quote: "Inacreditável! A segurança que implementaram é de nível militar. Nossos clientes confiam 100% na plataforma, e isso se reflete diretamente no nosso crescimento.",
          result: "+95% Confiança",
          resultEmoji: "🛡️",
          happinessEmoji: "😍",
          timeframe: "Há 6 meses"
        }
      ]
    }
  },
  methods: {
    playCardHover() {
      // Adiciona feedback sonoro se necessário
    }
  }
}
</script>

<style scoped>
/* Floating particles */
.floating-particles {
  position: absolute;
  inset: 0;
  pointer-events: none;
}

.particle {
  position: absolute;
  width: 3px;
  height: 3px;
  background: #19dc82;
  border-radius: 50%;
  opacity: 0.6;
  animation: particleFloat 8s ease-in-out infinite;
}

.particle-1 {
  top: 10%;
  left: 10%;
  animation-delay: 0s;
}

.particle-2 {
  top: 30%;
  right: 15%;
  animation-delay: 2s;
}

.particle-3 {
  bottom: 20%;
  left: 70%;
  animation-delay: 4s;
}

.particle-4 {
  top: 70%;
  left: 20%;
  animation-delay: 6s;
}

@keyframes particleFloat {
  0%, 100% { transform: translateY(0px) scale(1); opacity: 0.6; }
  25% { transform: translateY(-20px) scale(1.2); opacity: 1; }
  50% { transform: translateY(-10px) scale(0.8); opacity: 0.8; }
  75% { transform: translateY(-30px) scale(1.1); opacity: 0.9; }
}

/* Section badge */
.section-badge {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.5rem;
  background: rgba(25, 220, 130, 0.1);
  border: 1px solid rgba(25, 220, 130, 0.3);
  border-radius: 50px;
  font-size: 0.875rem;
  font-weight: 600;
  color: #19dc82;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  backdrop-filter: blur(10px);
}

.badge-emoji {
  font-size: 1.2rem;
  animation: bounce 2s ease-in-out infinite;
}

/* Grid de testimoniais */
.testimonials-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
  gap: 2rem;
  margin-bottom: 4rem;
}

/* Card de testemunho futurístico */
.testimonial-card {
  position: relative;
  background: rgba(15, 23, 42, 0.4);
  border-radius: 24px;
  padding: 2rem;
  backdrop-filter: blur(16px);
  border: 1px solid rgba(25, 220, 130, 0.1);
  overflow: hidden;
  transition: all 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  cursor: pointer;
}

.testimonial-card:hover {
  transform: translateY(-8px) scale(1.02);
  border-color: rgba(25, 220, 130, 0.4);
}

/* Card glow effect */
.card-glow {
  position: absolute;
  inset: -40px;
  background: radial-gradient(circle, rgba(25, 220, 130, 0.1), transparent);
  opacity: 0;
  transition: opacity 0.6s ease;
  z-index: -1;
}

.testimonial-card:hover .card-glow {
  opacity: 1;
}

/* Holographic border */
.holographic-border {
  position: absolute;
  inset: -1px;
  background: linear-gradient(45deg, 
    rgba(25, 220, 130, 0.3),
    rgba(34, 197, 94, 0.3),
    rgba(16, 185, 129, 0.3),
    rgba(25, 220, 130, 0.3));
  background-size: 400% 400%;
  border-radius: 24px;
  opacity: 0;
  animation: holographicShimmer 3s ease-in-out infinite;
  z-index: -1;
}

.testimonial-card:hover .holographic-border {
  opacity: 1;
}

@keyframes holographicShimmer {
  0%, 100% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
}

/* Header do card */
.card-header {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  margin-bottom: 1.5rem;
}

/* Avatar futurístico */
.avatar-container {
  position: relative;
  flex-shrink: 0;
}

.avatar-ring {
  position: absolute;
  inset: -6px;
  border: 2px solid rgba(25, 220, 130, 0.4);
  border-radius: 50%;
  animation: avatarSpin 8s linear infinite;
}

@keyframes avatarSpin {
  from { transform: rotate(0deg); }
  to { transform: rotate(360deg); }
}

.avatar-image {
  position: relative;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  overflow: hidden;
  border: 3px solid rgba(25, 220, 130, 0.6);
  transition: transform 0.3s ease;
}

.testimonial-card:hover .avatar-image {
  transform: scale(1.1);
}

.avatar-status {
  position: absolute;
  bottom: 2px;
  right: 2px;
  width: 12px;
  height: 12px;
  background: #19dc82;
  border: 2px solid #0f172a;
  border-radius: 50%;
  animation: statusPulse 2s ease-in-out infinite;
}

@keyframes statusPulse {
  0%, 100% { transform: scale(1); }
  50% { transform: scale(1.2); }
}

/* Info do cliente */
.client-info {
  flex-grow: 1;
}

.client-name {
  font-size: 1.125rem;
  font-weight: 700;
  color: white;
  margin-bottom: 0.25rem;
  transition: color 0.3s ease;
}

.testimonial-card:hover .client-name {
  color: #19dc82;
}

.client-position {
  font-size: 0.875rem;
  color: #19dc82;
  font-weight: 600;
  margin-bottom: 0.125rem;
}

.client-company {
  font-size: 0.75rem;
  color: #64748b;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

/* Rating */
.rating-container {
  text-align: right;
}

.stars {
  font-size: 0.875rem;
  margin-bottom: 0.25rem;
  animation: starsGlow 2s ease-in-out infinite;
}

@keyframes starsGlow {
  0%, 100% { filter: brightness(1); }
  50% { filter: brightness(1.3); }
}

.rating-text {
  font-size: 0.875rem;
  font-weight: 700;
  color: #19dc82;
}

/* Quote */
.quote-container {
  position: relative;
  margin-bottom: 1.5rem;
}

.quote-icon {
  position: absolute;
  top: -10px;
  left: -10px;
  font-size: 3rem;
  color: rgba(25, 220, 130, 0.3);
  font-family: serif;
  z-index: 1;
}

.quote-text {
  color: #cbd5e1;
  line-height: 1.7;
  font-style: italic;
  position: relative;
  z-index: 2;
  transition: color 0.3s ease;
}

.testimonial-card:hover .quote-text {
  color: #e2e8f0;
}

/* Results section */
.results-section {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
  padding: 1rem;
  background: rgba(25, 220, 130, 0.05);
  border-radius: 12px;
  border: 1px solid rgba(25, 220, 130, 0.1);
}

.result-item {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.result-emoji {
  font-size: 1.5rem;
  animation: resultBounce 3s ease-in-out infinite;
}

@keyframes resultBounce {
  0%, 100% { transform: scale(1); }
  50% { transform: scale(1.2); }
}

.result-text {
  font-weight: 700;
  font-size: 1.125rem;
  color: #19dc82;
  text-shadow: 0 0 10px rgba(25, 220, 130, 0.3);
}

.happiness-indicator {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.happiness-emoji {
  font-size: 1.25rem;
  animation: happinessPulse 2s ease-in-out infinite;
}

@keyframes happinessPulse {
  0%, 100% { transform: scale(1); }
  50% { transform: scale(1.3); }
}

.happiness-text {
  font-size: 0.75rem;
  color: #64748b;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

/* Footer do card */
.card-footer {
  display: flex;
  justify-content: flex-end;
}

.time-badge {
  display: flex;
  align-items: center;
  gap: 0.25rem;
  font-size: 0.75rem;
  color: #64748b;
  background: rgba(25, 220, 130, 0.1);
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  border: 1px solid rgba(25, 220, 130, 0.2);
}

/* Stats finais */
.testimonials-stats {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 3rem;
  margin-top: 4rem;
  flex-wrap: wrap;
}

.stat-card {
  text-align: center;
}

.stat-number {
  font-size: 3rem;
  font-weight: 900;
  color: #19dc82;
  text-shadow: 0 0 20px rgba(25, 220, 130, 0.5);
  margin-bottom: 0.5rem;
  animation: statGlow 3s ease-in-out infinite;
}

@keyframes statGlow {
  0%, 100% { filter: brightness(1); }
  50% { filter: brightness(1.2); }
}

.stat-label {
  font-size: 0.875rem;
  color: #94a3b8;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  font-weight: 500;
  margin-bottom: 0.5rem;
}

.stat-stars {
  font-size: 1.125rem;
  animation: starsFloat 2s ease-in-out infinite;
}

.stat-emoji {
  font-size: 2rem;
  animation: emojiDance 3s ease-in-out infinite;
}

@keyframes starsFloat {
  0%, 100% { transform: translateY(0px); }
  50% { transform: translateY(-5px); }
}

@keyframes emojiDance {
  0%, 100% { transform: rotate(0deg) scale(1); }
  25% { transform: rotate(-10deg) scale(1.1); }
  75% { transform: rotate(10deg) scale(1.1); }
}

.stat-divider {
  width: 1px;
  height: 4rem;
  background: linear-gradient(to bottom, transparent, #19dc82, transparent);
  opacity: 0.5;
}

/* Responsive */
@media (max-width: 768px) {
  .testimonials-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .testimonial-card {
    padding: 1.5rem;
  }
  
  .card-header {
    flex-direction: column;
    text-align: center;
    gap: 1rem;
  }
  
  .results-section {
    flex-direction: column;
    gap: 1rem;
    text-align: center;
  }
  
  .testimonials-stats {
    gap: 2rem;
  }
  
  .stat-divider {
    display: none;
  }
}
</style>