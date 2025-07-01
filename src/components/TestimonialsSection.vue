<template>
  <section class="py-24 px-4 relative">
    <!-- Subtle background blur -->
    <div class="absolute inset-0 bg-radial-green-soft opacity-5 blur-3xl"></div>
    
    <div class="container mx-auto relative z-10">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">O que nossos clientes dizem</h2>
        <p class="text-lg text-gray-300">Mensagens diretas de nossos clientes satisfeitos</p>
      </div>
      
      <div class="grid gap-6 max-w-2xl mx-auto whatsapp-style">
        <TestimonialMessage 
          v-for="testimonial in testimonials" 
          :key="testimonial.id"
          :testimonial="testimonial"
        />
      </div>
    </div>
  </section>
</template>

<script>
import TestimonialMessage from './TestimonialMessage.vue'

export default {
  name: 'TestimonialsSection',
  components: {
    TestimonialMessage
  },
  data() {
    return {
      testimonials: [
        {
          id: 1,
          name: 'Maria Rodriguez',
          time: '11:23',
          avatar: 'MR',
          content: 'A EasyEcon transformou completamente nossa infraestrutura! A migração para cloud foi perfeita 👏 Os resultados superaram todas expectativas.'
        },
        {
          id: 2,
          name: 'João Silva',
          time: '11:25',
          avatar: 'JS',
          content: 'O sistema de IA que vocês desenvolveram é incrível! Nos deu insights que revolucionaram toda nossa estratégia 💡'
        },
        {
          id: 3,
          name: 'Ana Santos',
          time: '11:27',
          avatar: 'AS',
          content: 'Profissionalismo excepcional! Sempre entregam no prazo e com qualidade. Vocês são nossos parceiros de confiança!'
        },
        {
          id: 4,
          name: 'Carlos Menezes',
          time: '11:30',
          avatar: 'CM',
          content: 'O atendimento da EasyEcon é diferenciado. Resolvem nossos problemas em tempo recorde ⏱️'
        },
        {
          id: 5,
          name: 'Fernanda Lima',
          time: '11:32',
          avatar: 'FL',
          content: 'Depois que contratamos a EasyEcon, nossa produtividade aumentou em 40%! Números não mentem 📈'
        },
        {
          id: 6,
          name: 'Ricardo Alves',
          time: '11:35',
          avatar: 'RA',
          content: 'Recomendo a todos! A equipe é super competente e o preço justo pelo serviço de excelência.'
        },
        {
          id: 7,
          name: 'Patrícia Gomes',
          time: '11:37',
          avatar: 'PG',
          content: 'O suporte 24/7 faz toda diferença! Nunca ficamos na mão, mesmo em feriados e madrugadas 🌙'
        },
        {
          id: 8,
          name: 'Marcos Oliveira',
          time: '11:40',
          avatar: 'MO',
          content: 'Implementação rápida e sem traumas. A migração foi tão suave que ninguém percebeu a mudança!'
        },
        {
          id: 9,
          name: 'Juliana Costa',
          time: '11:42',
          avatar: 'JC',
          content: 'Soluções personalizadas que realmente entendem nossa necessidade. Parabéns pelo trabalho! 🎉'
        },
        {
          id: 10,
          name: 'Roberto Nunes',
          time: '11:45',
          avatar: 'RN',
          content: '5 anos de parceria e só tenho elogios! Continuem com esse excelente trabalho, equipe EasyEcon!'
        }
      ]
    }
  }
}
</script>

<style scoped>
.whatsapp-style {
  background-color: #1f2c34; /* Cor de fundo similar ao WhatsApp */
  border-radius: 12px;
  padding: 20px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
}

/* Adapte estas cores para combinar com o esquema do seu site */
:root {
  --primary-color: #25D366; /* Verde WhatsApp - substitua pela cor primária do seu site */
  --secondary-color: #128C7E; /* Verde mais escuro - ajuste conforme necessário */
  --text-color: #e1e1e1;
  --time-color: #a8a8a8;
}
</style>