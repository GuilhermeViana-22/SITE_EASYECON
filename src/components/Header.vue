<template>
  <header class="fixed top-0 w-full z-50 bg-primary-dark/90 backdrop-blur-md border-b border-slate-800/50">
    <nav class="container mx-auto px-4 py-3 flex items-center justify-between">
      <div class="flex items-center space-x-2">
        <div class="rounded-lg flex items-center justify-center gap-2">
          <img src="/public/easyIcon.png" alt="Logotipo" class="w-8 h-8 md:w-7 md:h-7" />
          <img src="/public/logoName.png" alt="Logotipo" class="w-24 mt-1 md:w-20" />
        </div>
      </div>

      <div class="hidden md:flex items-center space-x-6">
        <a href="#solutions" class="text-sm text-gray-300 hover:text-primary-green transition-colors font-medium">Soluções</a>
        <a href="#about" class="text-sm text-gray-300 hover:text-primary-green transition-colors font-medium">Sobre</a>
        <a href="#team" class="text-sm text-gray-300 hover:text-primary-green transition-colors font-medium">Time</a>
        <a href="#contact" class="text-sm text-gray-300 hover:text-primary-green transition-colors font-medium">Contatos</a>
      </div>

      <button
          class="hidden md:block bg-gradient-to-r from-primary-green to-emerald-400 hover:from-primary-green hover:to-primary-green text-primary-dark px-5 py-2 rounded-lg text-sm font-bold transition-all duration-300 transform hover:scale-105 hover:shadow-lg hover:shadow-primary-green/25">
        Agendar demonstração
      </button>

      <button @click="$emit('toggle-mobile-menu')" class="md:hidden text-white hover:text-primary-green transition-colors">
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
        </svg>
      </button>
    </nav>

    <div v-if="mobileMenuOpen" class="md:hidden bg-primary-dark/95 border-t border-slate-800/50 backdrop-blur-md">
      <div class="px-4 py-3 space-y-1">
        <a href="#solutions" class="block py-3 text-gray-300 hover:text-primary-green transition-colors font-medium">Soluções</a>
        <a href="#about" class="block py-3 text-gray-300 hover:text-primary-green transition-colors font-medium">Sobre</a>
        <a href="#team" class="block py-3 text-gray-300 hover:text-primary-green transition-colors font-medium">Time</a>
        <a href="#contact" class="block py-3 text-gray-300 hover:text-primary-green transition-colors font-medium">Contatos</a>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',
  props: {
    mobileMenuOpen: {
      type: Boolean,
      default: false
    }
  },
  emits: ['toggle-mobile-menu']
}
</script>

<style scoped>
</style>