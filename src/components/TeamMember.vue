<template>
  <div class="text-center">
    <div :class="`w-32 h-32 bg-gradient-to-r ${member.gradient} rounded-full flex items-center justify-center mx-auto mb-4`">
      <span class="text-white font-bold text-2xl">{{ member.avatar }}</span>
    </div>
    <h3 class="text-xl font-bold mb-2 text-white">{{ member.name }}</h3>
    <p class="text-gray-400 mb-2">{{ member.position }}</p>
    <p class="text-gray-300 text-sm">{{ member.description }}</p>
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
