<template>
  <section id="solutions" class="py-20 px-4">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">Cutting-Edge Solutions</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto">
          Discover how Amane Soft can transform your business with our innovative technologies.
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
          title: 'AI-Powered Analytics',
          description: 'Harness the power of machine learning to deliver actionable insights from your data.',
          icon: 'brain',
          gradient: 'from-blue-500 to-cyan-500',
          hoverColor: 'hover:border-blue-500'
        },
        {
          id: 2,
          title: 'Cloud-Native Architecture',
          description: 'Scalable, resilient, and efficient solutions built for the modern cloud ecosystem.',
          icon: 'cloud',
          gradient: 'from-purple-500 to-pink-500',
          hoverColor: 'hover:border-purple-500'
        },
        {
          id: 3,
          title: 'Enterprise-Grade Security',
          description: 'State-of-the-art security measures to protect your most valuable assets.',
          icon: 'shield',
          gradient: 'from-green-500 to-emerald-500',
          hoverColor: 'hover:border-green-500'
        },
        {
          id: 4,
          title: 'High-Performance Systems',
          description: 'Optimized for speed and efficiency, our solutions deliver unparalleled performance.',
          icon: 'lightning',
          gradient: 'from-orange-500 to-red-500',
          hoverColor: 'hover:border-orange-500'
        }
      ]
    }
  }
}
</script>
