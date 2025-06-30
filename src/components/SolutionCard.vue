<template>
  <div :class="`bg-gradient-to-br from-slate-800 to-slate-900 p-8 rounded-2xl border border-slate-700 ${solution.hoverColor} transition-all duration-300 group`">
    <div :class="`w-12 h-12 bg-gradient-to-r ${solution.gradient} rounded-lg flex items-center justify-center mb-6 group-hover:scale-110 transition-transform`">
      <component :is="iconComponent" class="w-6 h-6 text-white" />
    </div>
    <h3 class="text-xl font-bold mb-4 text-white">{{ solution.title }}</h3>
    <p class="text-gray-300">{{ solution.description }}</p>
  </div>
</template>

<script>
export default {
  name: 'SolutionCard',
  props: {
    solution: {
      type: Object,
      required: true
    }
  },
  computed: {
    iconComponent() {
      const icons = {
        brain: () => ({
          template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z"></path></svg>`
        }),
        cloud: () => ({
          template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"></path></svg>`
        }),
        shield: () => ({
          template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path></svg>`
        }),
        lightning: () => ({
          template: `<svg fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path></svg>`
        })
      }
      return icons[this.solution.icon] || icons.brain
    }
  }
}
</script>
