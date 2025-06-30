<template>
  <section class="py-20 px-4 bg-gradient-to-r from-[#110F1F] to-gray-900">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">O que nossos clientes dizem</h2>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <TestimonialCard 
          v-for="testimonial in testimonials" 
          :key="testimonial.id"
          :testimonial="testimonial"
        />
      </div>
    </div>
  </section>
</template>

<script>
import TestimonialCard from './TestimonialCard.vue'

export default {
  name: 'TestimonialsSection',
  components: {
    TestimonialCard
  },
  data() {
    return {
      testimonials: [
        {
          id: 1,
          name: 'Maria Rodriguez',
          position: 'CTO, TechCorp',
          avatar: 'MR',
          gradient: 'from-blue-500 to-purple-600',
          content: 'A Amane Soft transformou completamente nossa infraestrutura. A migração para cloud foi perfeita e os resultados superaram nossas expectativas.'
        },
        {
          id: 2,
          name: 'João Silva',
          position: 'CEO, InnovateNow',
          avatar: 'JS',
          gradient: 'from-green-500 to-emerald-600',
          content: 'O sistema de IA desenvolvido pela equipe nos deu insights valiosos que revolucionaram nossa estratégia de negócios.'
        },
        {
          id: 3,
          name: 'Ana Santos',
          position: 'Diretora de TI, GlobalTech',
          avatar: 'AS',
          gradient: 'from-purple-500 to-pink-600',
          content: 'Profissionalismo excepcional e entrega no prazo. A Amane Soft é nosso parceiro estratégico para todos os projetos de tecnologia.'
        }
      ]
    }
  }
}
</script>
