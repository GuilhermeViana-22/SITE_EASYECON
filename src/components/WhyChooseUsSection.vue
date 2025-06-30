<template>
  <section class="py-20 px-4 bg-gradient-to-r from-[#110F1F] to-gray-900">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">Por que escolher a Amane Soft?</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto">
          Nossa expertise e compromisso com a inovação nos tornam o parceiro ideal para sua transformação digital.
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div v-for="benefit in benefits" :key="benefit.id" class="text-center">
          <div :class="`w-16 h-16 bg-gradient-to-r ${benefit.gradient} rounded-full flex items-center justify-center mx-auto mb-6`">
            <component :is="benefit.iconComponent" class="w-8 h-8 text-white" />
          </div>
          <h3 class="text-2xl font-bold mb-4 text-white">{{ benefit.title }}</h3>
          <p class="text-gray-300">{{ benefit.description }}</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'WhyChooseUsSection',
  data() {
    return {
      benefits: [
        {
          id: 1,
          title: 'Inovação Constante',
          description: 'Sempre na vanguarda das tecnologias emergentes, garantindo soluções futuro-proof.',
          gradient: 'from-blue-500 to-purple-600',
          iconComponent: () => ({
            template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path></svg>`
          })
        },
        {
          id: 2,
          title: 'Time Especializado',
          description: 'Profissionais altamente qualificados com vasta experiência em projetos complexos.',
          gradient: 'from-green-500 to-emerald-600',
          iconComponent: () => ({
            template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path></svg>`
          })
        },
        {
          id: 3,
          title: 'Resultados Comprovados',
          description: 'Histórico de sucesso com clientes de diversos setores e tamanhos.',
          gradient: 'from-purple-500 to-pink-600',
          iconComponent: () => ({
            template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>`
          })
        }
      ]
    }
  }
}
</script>
