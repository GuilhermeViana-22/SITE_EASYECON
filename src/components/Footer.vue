<template>
  <footer class="bg-[#110F1F] border-t border-slate-800 py-12 px-4">
    <div class="container mx-auto">
      <div class="grid md:grid-cols-4 gap-8 mb-8">
        <div>
          <div class="flex items-center space-x-2 mb-4">
            <div class="w-8 h-8 bg-gradient-to-r from-blue-500 to-purple-600 rounded-lg flex items-center justify-center">
              <span class="text-white font-bold text-sm">AS</span>
            </div>
            <span class="text-xl font-bold text-white">Amane Soft</span>
          </div>
          <p class="text-gray-400 mb-4">Soluções de software pioneiras para a era digital.</p>
          <div class="flex space-x-4">
            <a href="#" class="text-gray-400 hover:text-white transition-colors">
              <!-- Twitter -->
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="..."/>
              </svg>
            </a>
            <a href="#" class="text-gray-400 hover:text-white transition-colors">
              <!-- LinkedIn -->
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="..."/>
              </svg>
            </a>
            <a href="#" class="text-gray-400 hover:text-white transition-colors">
              <!-- GitHub -->
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="..."/>
              </svg>
            </a>
          </div>
        </div>

        <div>
          <h3 class="font-bold mb-4 text-white">Soluções</h3>
          <ul class="space-y-2 text-gray-400">
            <li><a href="#" class="hover:text-white transition-colors">IA e Análises</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Serviços em Nuvem</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Segurança</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Desempenho</a></li>
          </ul>
        </div>

        <div>
          <h3 class="font-bold mb-4 text-white">Empresa</h3>
          <ul class="space-y-2 text-gray-400">
            <li><a href="#" class="hover:text-white transition-colors">Sobre Nós</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Carreiras</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Blog</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Notícias</a></li>
          </ul>
        </div>

        <div>
          <h3 class="font-bold mb-4 text-white">Conectar</h3>
          <ul class="space-y-2 text-gray-400">
            <li><a href="#" class="hover:text-white transition-colors">Contato</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Suporte</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Parceiros</a></li>
            <li><a href="#" class="hover:text-white transition-colors">Comunidade</a></li>
          </ul>
        </div>
      </div>

      <div class="border-t border-slate-800 pt-8 flex flex-col md:flex-row justify-between items-center">
        <p class="text-gray-400 text-sm">© 2025 Amane Soft. Todos os direitos reservados.</p>
        <div class="flex space-x-6 mt-4 md:mt-0">
          <a href="#" class="text-gray-400 hover:text-white text-sm transition-colors">Termos de Serviço</a>
          <a href="#" class="text-gray-400 hover:text-white text-sm transition-colors">Política de Privacidade</a>
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
