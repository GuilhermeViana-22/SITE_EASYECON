<template>
  <section id="contact" class="py-24 px-4">
    <div class="container mx-auto max-w-4xl">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">Entre em Contato</h2>
        <p class="text-xl text-gray-300 leading-relaxed mb-16">
          Pronto para começar seu projeto? Vamos conversar sobre como podemos ajudar.
        </p>
      </div>
      
      <div class="grid md:grid-cols-3 gap-10">
        <div class="text-center group">
          <div class="w-16 h-16 bg-gradient-to-r from-primary-green to-emerald-400 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/30 transition-all duration-300">
            <svg class="w-8 h-8 text-primary-dark" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
            </svg>
          </div>
          <h3 class="text-xl font-bold mb-3 text-white group-hover:text-primary-green transition-colors duration-300">E-mail</h3>
          <p class="text-gray-300">contato@easyecon.com</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-gradient-to-r from-primary-green to-emerald-400 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/30 transition-all duration-300">
            <svg class="w-8 h-8 text-primary-dark" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
            </svg>
          </div>
          <h3 class="text-xl font-bold mb-3 text-white group-hover:text-primary-green transition-colors duration-300">Telefone</h3>
          <p class="text-gray-300">+55 (11) 99999-9999</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-gradient-to-r from-primary-green to-emerald-400 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/30 transition-all duration-300">
            <svg class="w-8 h-8 text-primary-dark" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
            </svg>
          </div>
          <h3 class="text-xl font-bold mb-3 text-white group-hover:text-primary-green transition-colors duration-300">Localização</h3>
          <p class="text-gray-300">São Paulo, Brasil</p>
        </div>
      </div>

      <div class="text-center mt-16">
        <button class="bg-gradient-to-r from-primary-green to-emerald-400 hover:from-primary-green hover:to-primary-green text-primary-dark px-12 py-4 rounded-xl font-bold text-lg transition-all duration-300 transform hover:scale-105 hover:shadow-lg hover:shadow-primary-green/25">
          Agendar Reunião
        </button>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'ContactSection'
}
</script>
