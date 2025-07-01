<template>
  <section class="py-24 px-4 relative">
    <!-- Background com blur verde -->
    <div class="absolute inset-0 bg-radial-green-soft opacity-8 blur-3xl"></div>
    
    <div class="container mx-auto text-center relative z-10">
      <h2 class="text-4xl md:text-6xl font-bold mb-8 text-white leading-tight">
        Vamos transformar sua ideia em realidade?
      </h2>
      <p class="text-xl text-gray-300 mb-16 max-w-3xl mx-auto leading-relaxed">
        Junte-se às empresas que já estão liderando a transformação digital com a EasyEcon.
      </p>
      <button
        class="bg-gradient-to-r from-primary-green to-emerald-400 hover:from-primary-green hover:to-primary-green text-primary-dark px-14 py-5 rounded-xl font-bold text-xl transition-all duration-300 transform hover:scale-105 hover:shadow-2xl hover:shadow-primary-green/30">
        Comece agora
      </button>
    </div>
  </section>
</template>

<script>
export default {
  name: 'CTASection'
}
</script>
