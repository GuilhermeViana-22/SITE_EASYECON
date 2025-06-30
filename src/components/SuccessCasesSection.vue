<template>
  <section class="py-20 px-4">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">Casos de Sucesso</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto">
          Conheça alguns dos projetos que transformaram negócios e impulsionaram o crescimento de nossos clientes.
        </p>
      </div>
      
      <div class="grid md:grid-cols-3 gap-8">
        <div v-for="case_ in successCases" :key="case_.id" class="bg-gradient-to-br from-slate-800 to-slate-900 p-8 rounded-2xl border border-slate-700">
          <h3 class="text-2xl font-bold mb-4 text-white">{{ case_.title }}</h3>
          <p class="text-gray-300 mb-4">{{ case_.description }}</p>
          <div :class="`${case_.metricColor} font-semibold`">{{ case_.metrics }}</div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'SuccessCasesSection',
  data() {
    return {
      successCases: [
        {
          id: 1,
          title: 'E-commerce Global',
          description: 'Implementação de arquitetura cloud-native que resultou em 300% de aumento na capacidade de processamento e 50% de redução nos custos operacionais.',
          metrics: '+300% Performance | -50% Custos',
          metricColor: 'text-blue-400'
        },
        {
          id: 2,
          title: 'Fintech Inovadora',
          description: 'Sistema de analytics com IA que identificou padrões de fraude, reduzindo perdas em 80% e aumentando a confiança dos usuários.',
          metrics: '-80% Fraudes | +95% Confiança',
          metricColor: 'text-green-400'
        },
        {
          id: 3,
          title: 'Indústria 4.0',
          description: 'Solução IoT integrada que otimizou processos produtivos, resultando em 40% de aumento na eficiência operacional.',
          metrics: '+40% Eficiência | 24/7 Monitoramento',
          metricColor: 'text-purple-400'
        }
      ]
    }
  }
}
</script>
