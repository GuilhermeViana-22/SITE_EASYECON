<template>
  <section class="py-24 px-4 relative">
    <!-- Subtle background blur -->
    <div class="absolute inset-0 bg-radial-green-soft opacity-5 blur-3xl"></div>
    
    <div class="container mx-auto relative z-10">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">O que nossos clientes dizem</h2>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-10">
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
          content: 'A EasyEcon transformou completamente nossa infraestrutura. A migração para cloud foi perfeita e os resultados superaram nossas expectativas.'
        },
        {
          id: 2,
          name: 'João Silva',
          position: 'CEO, InnovateNow',
          avatar: 'JS',
          content: 'O sistema de IA desenvolvido pela equipe nos deu insights valiosos que revolucionaram nossa estratégia de negócios.'
        },
        {
          id: 3,
          name: 'Ana Santos',
          position: 'Diretora de TI, GlobalTech',
          avatar: 'AS',
          content: 'Profissionalismo excepcional e entrega no prazo. A EasyEcon é nosso parceiro estratégico para todos os projetos de tecnologia.'
        }
      ]
    }
  }
}
</script>
