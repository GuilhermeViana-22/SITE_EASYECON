<template>
  <div class="text-center group">
    <div class="w-32 h-32 bg-gradient-to-r from-primary-green to-emerald-400 rounded-full flex items-center justify-center mx-auto mb-6 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/30 transition-all duration-300">
      <span class="text-primary-dark font-bold text-2xl">{{ member.avatar }}</span>
    </div>
    <h3 class="text-xl font-bold mb-3 text-white group-hover:text-primary-green transition-colors duration-300">{{ member.name }}</h3>
    <p class="text-gray-400 mb-3 font-medium">{{ member.position }}</p>
    <p class="text-gray-300 text-sm leading-relaxed">{{ member.description }}</p>
  </div>
</template>

<script>
export default {
  name: 'TeamMember',
  props: {
    member: {
      type: Object,
      required: true
    }
  }
}
</script>
