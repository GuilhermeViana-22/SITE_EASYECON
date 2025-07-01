<template>
  <footer class="bg-primary-dark border-t border-slate-800/50 py-16 px-4">
    <div class="container mx-auto">
      <div class="grid md:grid-cols-4 gap-10 mb-12">
        <div>
          <div class="flex items-center space-x-2 mb-6">
            <div class="rounded-lg flex items-center justify-center gap-2">
              <img src="/public/easyIcon.png" alt="Logotipo" class="w-9 h-9" />
              <img src="/public/logoName.png" alt="Logotipo" class="w-28 mt-1" />
            </div>
          </div>
          <p class="text-gray-400 mb-6 leading-relaxed">Soluções de software pioneiras para a era digital.</p>
          <div class="flex space-x-4">
            <a href="#" class="text-gray-400 hover:text-primary-green transition-colors duration-300">
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"/>
              </svg>
            </a>
            <a href="#" class="text-gray-400 hover:text-primary-green transition-colors duration-300">
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"/>
                <circle cx="4" cy="4" r="2"/>
              </svg>
            </a>
            <a href="#" class="text-gray-400 hover:text-primary-green transition-colors duration-300">
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 00-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0020 4.77 5.07 5.07 0 0019.91 1S18.73.65 16 2.48a13.38 13.38 0 00-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 005 4.77a5.44 5.44 0 00-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 009 18.13V22"/>
              </svg>
            </a>
          </div>
        </div>

        <div>
          <h3 class="font-bold mb-6 text-white">Soluções</h3>
          <ul class="space-y-3 text-gray-400">
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">IA e Análises</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Serviços em Nuvem</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Segurança</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Performance</a></li>
          </ul>
        </div>

        <div>
          <h3 class="font-bold mb-6 text-white">Empresa</h3>
          <ul class="space-y-3 text-gray-400">
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Sobre Nós</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Carreiras</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Blog</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Notícias</a></li>
          </ul>
        </div>

        <div>
          <h3 class="font-bold mb-6 text-white">Conectar</h3>
          <ul class="space-y-3 text-gray-400">
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Contato</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Suporte</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Parceiros</a></li>
            <li><a href="#" class="hover:text-primary-green transition-colors duration-300">Comunidade</a></li>
          </ul>
        </div>
      </div>

      <div class="border-t border-slate-800/50 pt-8 flex flex-col md:flex-row justify-between items-center">
        <p class="text-gray-400 text-sm">© 2025 EasyEcon. Todos os direitos reservados.</p>
        <div class="flex space-x-6 mt-4 md:mt-0">
          <a href="#" class="text-gray-400 hover:text-primary-green text-sm transition-colors duration-300">Termos de Serviço</a>
          <a href="#" class="text-gray-400 hover:text-primary-green text-sm transition-colors duration-300">Política de Privacidade</a>
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'Footer'
}
</script>
