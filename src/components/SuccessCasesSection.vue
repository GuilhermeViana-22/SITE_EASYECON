<template>
  <section class="py-24 px-4">
    <div class="container mx-auto">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">Casos de Sucesso</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto leading-relaxed">
          Conheça alguns dos projetos que transformaram negócios e impulsionaram o crescimento de nossos clientes.
        </p>
      </div>
      
      <div class="grid md:grid-cols-3 gap-10">
        <div v-for="case_ in successCases" :key="case_.id" class="bg-gradient-to-br from-slate-900/50 to-slate-800/30 p-8 rounded-2xl border border-slate-700/50 hover:border-primary-green/30 transition-all duration-500 backdrop-blur-sm group">
          <h3 class="text-2xl font-bold mb-6 text-white group-hover:text-primary-green transition-colors duration-300">{{ case_.title }}</h3>
          <p class="text-gray-300 mb-6 leading-relaxed">{{ case_.description }}</p>
          <div class="text-primary-green font-bold text-lg">{{ case_.metrics }}</div>
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
        },
        {
          id: 2,
          title: 'Fintech Inovadora',
          description: 'Sistema de analytics com IA que identificou padrões de fraude, reduzindo perdas em 80% e aumentando a confiança dos usuários.',
          metrics: '-80% Fraudes | +95% Confiança',
        },
        {
          id: 3,
          title: 'Indústria 4.0',
          description: 'Solução IoT integrada que otimizou processos produtivos, resultando em 40% de aumento na eficiência operacional.',
          metrics: '+40% Eficiência | 24/7 Monitoramento',
        }
      ]
    }
  }
}
</script>
