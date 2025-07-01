<template>
  <section id="team" class="py-24 px-4">
    <div class="container mx-auto">
      <div class="text-center mb-20">
        <h2 class="text-4xl md:text-5xl font-bold mb-8 text-white">Nosso Time</h2>
        <p class="text-xl text-gray-300 max-w-3xl mx-auto leading-relaxed">
          Conheça os especialistas por trás das soluções inovadoras da EasyEcon.
        </p>
      </div>
      
      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-10">
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
          description: '15+ anos em arquitetura de software'
        },
        {
          id: 2,
          name: 'Lucia Martins',
          position: 'CTO',
          avatar: 'LM',
          description: 'Especialista em IA e Machine Learning'
        },
        {
          id: 3,
          name: 'Diego Pereira',
          position: 'Head of Security',
          avatar: 'DP',
          description: 'Expert em segurança corporativa'
        },
        {
          id: 4,
          name: 'Carla Santos',
          position: 'Head of Cloud',
          avatar: 'CS',
          description: 'Arquiteta cloud-native certificada'
        }
      ]
    }
  }
}
</script>
