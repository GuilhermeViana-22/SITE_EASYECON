<template>
  <section class="py-24 px-4 relative">
    <!-- Subtle background blur -->
    <div class="absolute inset-0 bg-radial-green-soft opacity-3 blur-3xl"></div>
    
    <div class="container mx-auto relative z-10">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">Por que escolher a EasyEcon?</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto leading-relaxed">
          Nossa expertise e compromisso com a inovação nos tornam o parceiro ideal para sua transformação digital.
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-10">
        <div v-for="benefit in benefits" :key="benefit.id" class="text-center group">
          <div class="w-18 h-18 bg-gradient-to-r from-primary-green to-emerald-400 rounded-full flex items-center justify-center mx-auto mb-8 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/30 transition-all duration-300">
            <component :is="benefit.icon" class="w-9 h-9 text-primary-dark" />
          </div>
          <h3 class="text-2xl font-bold mb-6 text-white group-hover:text-primary-green transition-colors duration-300">{{ benefit.title }}</h3>
          <p class="text-gray-300 leading-relaxed">{{ benefit.description }}</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import { BoltIcon, UsersIcon, CheckCircleIcon } from '@heroicons/vue/24/solid'

export default {
  name: 'WhyChooseUsSection',
  components: {
    BoltIcon,
    UsersIcon,
    CheckCircleIcon
  },
  data() {
    return {
      benefits: [
        {
          id: 1,
          title: 'Inovação Constante',
          description: 'Sempre na vanguarda das tecnologias emergentes, garantindo soluções futuro-proof.',
          icon: BoltIcon
        },
        {
          id: 2,
          title: 'Time Especializado',
          description: 'Profissionais altamente qualificados com vasta experiência em projetos complexos.',
          icon: UsersIcon
        },
        {
          id: 3,
          title: 'Resultados Comprovados',
          description: 'Histórico de sucesso com clientes de diversos setores e tamanhos.',
          icon: CheckCircleIcon
        }
      ]
    }
  }
}
</script>
