<template>
  <section id="contact" class="py-20 px-4">
    <div class="container mx-auto max-w-4xl">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">Entre em Contato</h2>
        <p class="text-xl text-gray-300">
          Pronto para começar seu projeto? Vamos conversar sobre como podemos ajudar.
        </p>
      </div>
      
      <form @submit.prevent="submitForm" class="bg-gradient-to-br from-slate-800 to-slate-900 p-8 rounded-2xl border border-slate-700">
        <div class="grid md:grid-cols-2 gap-6 mb-6">
          <div>
            <label class="block text-sm font-medium mb-2 text-white">Nome</label>
            <input 
              v-model="form.name"
              type="text" 
              class="w-full px-4 py-3 bg-slate-700 border border-slate-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent text-white"
              required
            >
          </div>
          <div>
            <label class="block text-sm font-medium mb-2 text-white">E-mail</label>
            <input 
              v-model="form.email"
              type="email" 
              class="w-full px-4 py-3 bg-slate-700 border border-slate-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent text-white"
              required
            >
          </div>
        </div>
        <div class="mb-6">
          <label class="block text-sm font-medium mb-2 text-white">Mensagem</label>
          <textarea 
            v-model="form.message"
            rows="5" 
            class="w-full px-4 py-3 bg-slate-700 border border-slate-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent text-white"
            required
          ></textarea>
        </div>
        <button 
          type="submit"
          class="w-full bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700 px-8 py-4 rounded-lg font-semibold transition-all duration-300 transform hover:scale-105 text-white"
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
