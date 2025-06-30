<template>
  <header class="fixed top-0 w-full z-50 bg-[#110F1F]/90 backdrop-blur-md border-b border-slate-800">
    <nav class="container mx-auto px-4 py-4 flex items-center justify-between">
      <div class="flex items-center space-x-2">
        <div class="w-8 h-8 bg-gradient-to-r from-blue-500 to-purple-600 rounded-lg flex items-center justify-center">
          <span class="text-white font-bold text-sm">AS</span>
        </div>
        <span class="text-xl font-bold text-white">Amane Soft</span>
      </div>
      
      <div class="hidden md:flex items-center space-x-8">
        <a href="#solutions" class="text-gray-300 hover:text-blue-400 transition-colors">Solutions</a>
        <a href="#about" class="text-gray-300 hover:text-blue-400 transition-colors">Industries</a>
        <a href="#team" class="text-gray-300 hover:text-blue-400 transition-colors">About Us</a>
        <a href="#contact" class="text-gray-300 hover:text-blue-400 transition-colors">Contact</a>
      </div>
      
      <button class="bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700 px-6 py-2 rounded-lg font-medium transition-all duration-300 transform hover:scale-105 text-white">
        Get a Demo
      </button>
      
      <!-- Mobile menu button -->
      <button @click="$emit('toggle-mobile-menu')" class="md:hidden text-white">
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
        </svg>
      </button>
    </nav>
    
    <div v-if="mobileMenuOpen" class="md:hidden bg-[#110F1F] border-t border-slate-800">
      <div class="px-4 py-2 space-y-2">
        <a href="#solutions" class="block py-2 text-gray-300 hover:text-blue-400">Solutions</a>
        <a href="#about" class="block py-2 text-gray-300 hover:text-blue-400">Industries</a>
        <a href="#team" class="block py-2 text-gray-300 hover:text-blue-400">About Us</a>
        <a href="#contact" class="block py-2 text-gray-300 hover:text-blue-400">Contact</a>
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
