<template>
  <section id="contact" class="py-24 px-4">
    <div class="container mx-auto max-w-4xl">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">Entre em Contato</h2>
        <p class="text-xl text-gray-300 leading-relaxed">
          Pronto para começar seu projeto? Vamos conversar sobre como podemos ajudar.
        </p>
      </div>
      
      <form @submit.prevent="submitForm" class="bg-gradient-to-br from-slate-900/50 to-slate-800/30 p-10 rounded-2xl border border-slate-700/50 backdrop-blur-sm">
        <div class="grid md:grid-cols-2 gap-6 mb-6">
          <div>
            <label class="block text-sm font-medium mb-3 text-white">Nome</label>
            <input 
              v-model="form.name"
              type="text" 
              class="w-full px-4 py-3 bg-slate-800/50 border border-slate-600/50 rounded-lg focus:ring-2 focus:ring-primary-green focus:border-primary-green transition-all duration-300 text-white backdrop-blur-sm"
              required
            >
          </div>
          <div>
            <label class="block text-sm font-medium mb-3 text-white">E-mail</label>
            <input 
              v-model="form.email"
              type="email" 
              class="w-full px-4 py-3 bg-slate-800/50 border border-slate-600/50 rounded-lg focus:ring-2 focus:ring-primary-green focus:border-primary-green transition-all duration-300 text-white backdrop-blur-sm"
              required
            >
          </div>
        </div>
        <div class="mb-8">
          <label class="block text-sm font-medium mb-3 text-white">Mensagem</label>
          <textarea 
            v-model="form.message"
            rows="5" 
            class="w-full px-4 py-3 bg-slate-800/50 border border-slate-600/50 rounded-lg focus:ring-2 focus:ring-primary-green focus:border-primary-green transition-all duration-300 text-white backdrop-blur-sm resize-none"
            required
          ></textarea>
        </div>
        <button 
          type="submit"
          class="w-full bg-gradient-to-r from-primary-green to-emerald-400 hover:from-primary-green hover:to-primary-green text-primary-dark px-8 py-4 rounded-xl font-bold text-lg transition-all duration-300 transform hover:scale-105 hover:shadow-lg hover:shadow-primary-green/25"
        >
          Enviar Mensagem
        </button>
      </form>
    </div>
  </section>
</template>

<script>
export default {
  name: 'ContactSection',
  data() {
    return {
      form: {
        name: '',
        email: '',
        message: ''
      }
    }
  },
  methods: {
    submitForm() {
      console.log('Form submitted:', this.form)
      alert('Mensagem enviada com sucesso! Entraremos em contato em breve.')
      this.form = { name: '', email: '', message: '' }
    }
  }
}
</script>
