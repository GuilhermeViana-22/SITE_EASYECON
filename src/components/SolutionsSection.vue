<template>
  <section id="solutions" class="md:py-24 px-4">
    <div class="container mx-auto">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white leading-tight">
          Tecnologia de <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-green via-emerald-400 to-cyan-400">Ponta</span> para o Sucesso do Seu Negócio
        </h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto leading-relaxed">
          Descubra como nossas soluções podem acelerar seu crescimento com inovação, eficiência e segurança.
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <SolutionCard 
          v-for="solution in solutions" 
          :key="solution.id"
          :solution="solution"
        />
      </div>
    </div>
  </section>
</template>

<script>
import SolutionCard from './SolutionCard.vue'

export default {
  name: 'SolutionsSection',
  components: {
    SolutionCard
  },
  data() {
    return {
      solutions: [
        {
          id: 1,
          title: 'IA Avançada para Decisões Inteligentes',
          description: 'Obtenha insights valiosos com o poder do aprendizado de máquina aplicado aos seus dados.',
          icon: 'brain',
        },
        {
          id: 2,
          title: 'Arquitetura Nativa em Nuvem',
          description: 'Soluções escaláveis e resilientes, desenvolvidas para o ecossistema moderno de nuvem.',
          icon: 'cloud',
        },
        {
          id: 3,
          title: 'Segurança em Nível Corporativo',
          description: 'Proteja seus dados com as tecnologias mais avançadas em segurança digital.',
          icon: 'shield',
        },
        {
          id: 4,
          title: 'Performance que Supera Expectativas',
          description: 'Sistemas otimizados para máxima velocidade, estabilidade e eficiência.',
          icon: 'lightning',
        }
      ]
    }
  }
}
</script>
