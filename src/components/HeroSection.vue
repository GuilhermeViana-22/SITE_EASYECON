<template>
  <section
    class="pt-32 px-4 sm:pb-20 md:pb-0 relative flex items-center"
  >
    <!-- Blur verde sutil no fundo -->
    <div class="absolute inset-0 bg-radial-green-soft opacity-5 blur-3xl"></div>

    <div class="container mx-auto text-center relative z-10">
      <h1 class="text-5xl md:text-6xl font-bold mb-8 bg-gradient-to-r from-white via-gray-100 to-primary-green bg-clip-text text-transparent leading-tight">
        Transforme sua empresa com a<br>tecnologia do futuro
      </h1>
      <p class="text-xl md:text-1xl text-gray-300 mb-16 md:mb-4 max-w-4xl mx-auto leading-relaxed">
        Na EasyEcon, desenvolvemos soluções inteligentes que impulsionam resultados reais — de IA avançada à integração
        em nuvem de alto desempenho.
      </p>
      <div class="flex flex-col sm:flex-row gap-6 justify-center">
        <button
          class="bg-gradient-to-r from-primary-green to-emerald-400 hover:from-primary-green hover:to-primary-green text-primary-dark px-10 rounded-md md:px-2 font-bold text-lg md:text-sm transition-all duration-300 transform hover:scale-105 hover:shadow-lg hover:shadow-primary-green/25"
        >
          Ver Soluções
        </button>
        <button
          class="border-2 border-primary-green/50 px-10 py-4 md:px-2 md:py-2 rounded-md font-bold text-lg md:text-sm hover:bg-primary-green/10 hover:border-primary-green transition-all duration-300 text-white backdrop-blur-sm"
        >
          Agendar Demonstração
        </button>
      </div>
    </div>
  </section>

  <div class="mx-auto w-full"><img :src="backgroundImage" sizes="(max-width: 767px) 100vw, 619.5px" width="619.5" data-w-id="a5ae7d10-ceb2-5d52-2b80-cb65aa799491" alt="Mão de Deus" class="image-107 no-drag blur-section w-full relative mt-20 md:mt-0"></div>

</template>

<script>
import backgroundImage from '../assets/images/background/background.webp';

export default {
  name: 'HeroSection',
  data() {
    return {
      backgroundImage
    }
  }
}
</script>

<style scoped>
section {
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;

  /* Garante que o gradiente de texto seja compatível com todos os navegadores */
  -webkit-background-clip: text;
  background-clip: text;
}

/* Melhora a legibilidade do texto sobre a imagem */
.text-gray-300 {
  text-shadow: 0 2px 4px rgba(0,0,0,0.3);
}
</style>