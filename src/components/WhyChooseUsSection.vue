<template>
  <section class="py-20 px-4 bg-gradient-to-r from-[#110F1F] to-gray-900">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">Por que escolher a EasyEcon?</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto">
          Nossa expertise e compromisso com a inovação nos tornam o parceiro ideal para sua transformação digital.
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div v-for="benefit in benefits" :key="benefit.id" class="text-center">
          <div
            :class="`w-16 h-16 bg-gradient-to-r ${benefit.gradient} rounded-full flex items-center justify-center mx-auto mb-6`">
            <component :is="benefit.icon" class="w-8 h-8 text-white" />
          </div>
          <h3 class="text-2xl font-bold mb-4 text-white">{{ benefit.title }}</h3>
          <p class="text-gray-300">{{ benefit.description }}</p>
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
          gradient: 'from-blue-500 to-purple-600',
          icon: BoltIcon
        },
        {
          id: 2,
          title: 'Time Especializado',
          description: 'Profissionais altamente qualificados com vasta experiência em projetos complexos.',
          gradient: 'from-green-500 to-emerald-600',
          icon: UsersIcon
        },
        {
          id: 3,
          title: 'Resultados Comprovados',
          description: 'Histórico de sucesso com clientes de diversos setores e tamanhos.',
          gradient: 'from-purple-500 to-pink-600',
          icon: CheckCircleIcon
        }
      ]
    }
  }
}
</script>
