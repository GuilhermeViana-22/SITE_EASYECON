<template>
  <section class="py-24 px-4 relative">
    <!-- Subtle background blur -->
    <div class="absolute inset-0 bg-radial-green-soft opacity-3 blur-3xl"></div>
    
    <div class="container mx-auto relative z-10">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">Transformação Digital que Impulsiona Resultados</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto leading-relaxed">
          Empresas que adotaram nossas soluções de CRM e automação digital viram seus lucros aumentarem em até 200%
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-10">
        <!-- Benefit Cards -->
        <div v-for="benefit in benefits" :key="benefit.id" class="group bg-gradient-to-br from-slate-900/50 to-slate-800/30 p-8 rounded-2xl border border-slate-700/50 hover:border-primary-green/50 transition-all duration-500 backdrop-blur-sm hover:shadow-lg hover:shadow-primary-green/10 flex flex-col">
          <div class="w-14 h-14 bg-gradient-to-r from-primary-green/80 to-emerald-400/80 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/25 transition-all duration-300">
            <component :is="benefit.icon" class="w-7 h-7 text-primary-dark" />
          </div>
          <h3 class="text-2xl font-bold mb-6 text-white group-hover:text-primary-green transition-colors duration-300">{{ benefit.title }}</h3>
          <p class="text-gray-300 group-hover:text-gray-100 leading-relaxed transition-colors duration-300">{{ benefit.description }}</p>
        </div>

        <!-- Client Success Stories -->
        <div v-for="testimonial in testimonials" :key="testimonial.id" class="group bg-gradient-to-br from-slate-900/50 to-slate-800/30 p-8 rounded-2xl border border-slate-700/50 hover:border-primary-green/50 transition-all duration-500 backdrop-blur-sm hover:shadow-lg hover:shadow-primary-green/10 flex flex-col">
          <div class="flex items-center mb-6">
            <div class="w-14 h-14 rounded-full bg-gradient-to-r from-primary-green to-emerald-400 flex items-center justify-center mr-4 group-hover:scale-110 transition-transform duration-300">
              <span class="text-lg font-bold text-primary-dark">{{ testimonial.initials }}</span>
            </div>
            <div>
              <h4 class="text-white group-hover:text-primary-green font-bold transition-colors duration-300">{{ testimonial.name }}</h4>
              <p class="text-sm text-gray-400 group-hover:text-gray-300 transition-colors duration-300">{{ testimonial.company }}</p>
            </div>
          </div>
          <p class="text-gray-300 group-hover:text-gray-100 mb-6 italic leading-relaxed transition-colors duration-300">"{{ testimonial.quote }}"</p>
          <div class="mt-auto pt-6 border-t border-slate-700/50 group-hover:border-primary-green/30 transition-colors duration-300">
            <div class="flex justify-between items-center">
              <span class="text-sm text-gray-400 group-hover:text-gray-300 transition-colors duration-300">Resultado após 6 meses:</span>
              <span class="text-lg font-bold text-primary-green group-hover:text-emerald-300 transition-colors duration-300">{{ testimonial.result }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import { BoltIcon, UsersIcon, ChartBarIcon, ArrowTrendingUpIcon, DevicePhoneMobileIcon, SparklesIcon } from '@heroicons/vue/24/solid'

export default {
  name: 'WhyChooseUsSection',
  components: {
    BoltIcon,
    UsersIcon,
    ChartBarIcon,
    ArrowTrendingUpIcon,
    DevicePhoneMobileIcon,
    SparklesIcon
  },
  data() {
    return {
      benefits: [
        {
          id: 1,
          title: 'Automação Inteligente',
          description: 'Reduza custos operacionais em até 40% com nossos sistemas de automação de processos.',
          icon: SparklesIcon
        },
        {
          id: 2,
          title: 'CRM Personalizado',
          description: 'Soluções de CRM que aumentam a retenção de clientes em até 3x para seu negócio.',
          icon: UsersIcon
        },
        {
          id: 3,
          title: 'Análise de Dados',
          description: 'Tomadas de decisão baseadas em dados que impulsionam o crescimento sustentável.',
          icon: ChartBarIcon
        }
      ],
      testimonials: [
        {
          id: 1,
          name: "Carlos Mendes",
          initials: "CM",
          company: "Mendes & Cia (Varejo)",
          quote: "A EasyEcon revolucionou nosso atendimento ao cliente. Em 8 meses, nosso faturamento cresceu 180% com as mesmas equipes.",
          result: "+180% Lucro"
        },
        {
          id: 2,
          name: "Ana Lúcia Souza",
          initials: "AL",
          company: "Souza Consultoria",
          quote: "As automações implementadas reduziram nosso tempo de resposta em 85% e aumentaram as conversões em 200%.",
          result: "+200% Conversão"
        },
        {
          id: 3,
          name: "Ricardo Torres",
          initials: "RT",
          company: "Torres Imóveis",
          quote: "O CRM personalizado da EasyEcon nos permitiu fechar 3x mais negócios com o mesmo número de leads.",
          result: "+210% Vendas"
        }
      ]
    }
  }
}
</script>

<style scoped>
.glass-card {
  @apply p-8 rounded-2xl backdrop-blur-md bg-white/5 border border-white/10 hover:border-white/20 transition-all duration-300;
  @apply flex flex-col;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
}

.glass-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 12px 40px rgba(16, 185, 129, 0.15);
}

.icon-container {
  @apply w-14 h-14 rounded-xl bg-gradient-to-r from-primary-green/20 to-emerald-400/20 flex items-center justify-center mb-6;
  @apply border border-white/10;
}

.bg-noise {
  background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 200 200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.65' numOctaves='3' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)' opacity='0.20'/%3E%3C/svg%3E");
}
</style>