<template>
  <section id="team" class="py-20 px-4">
    <div class="container mx-auto">
      <div class="text-center mb-16">
        <h2 class="text-4xl md:text-5xl font-bold mb-6 text-white">Nosso Time</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto">
          Conheça os especialistas por trás das soluções inovadoras da Amane Soft.
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <TeamMember 
          v-for="member in teamMembers" 
          :key="member.id"
          :member="member"
        />
      </div>
    </div>
  </section>
</template>

<script>
import TeamMember from './TeamMember.vue'

export default {
  name: 'TeamSection',
  components: {
    TeamMember
  },
  data() {
    return {
      teamMembers: [
        {
          id: 1,
          name: 'Rafael Costa',
          position: 'CEO & Founder',
          avatar: 'RC',
          gradient: 'from-blue-500 to-purple-600',
          description: '15+ anos em arquitetura de software'
        },
        {
          id: 2,
          name: 'Lucia Martins',
          position: 'CTO',
          avatar: 'LM',
          gradient: 'from-green-500 to-emerald-600',
          description: 'Especialista em IA e Machine Learning'
        },
        {
          id: 3,
          name: 'Diego Pereira',
          position: 'Head of Security',
          avatar: 'DP',
          gradient: 'from-purple-500 to-pink-600',
          description: 'Expert em segurança corporativa'
        },
        {
          id: 4,
          name: 'Carla Santos',
          position: 'Head of Cloud',
          avatar: 'CS',
          gradient: 'from-orange-500 to-red-600',
          description: 'Arquiteta cloud-native certificada'
        }
      ]
    }
  }
}
</script>
