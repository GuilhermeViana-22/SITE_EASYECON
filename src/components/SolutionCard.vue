<script setup>
import {
  CpuChipIcon,
  CloudIcon,
  ShieldCheckIcon,
  BoltIcon
} from '@heroicons/vue/24/solid'

const props = defineProps({
  solution: {
    type: Object,
    required: true
  }
})

const icons = {
  brain: CpuChipIcon,
  cloud: CloudIcon,
  shield: ShieldCheckIcon,
  lightning: BoltIcon
}
</script>

<template>
  <div :class="`bg-gradient-to-br from-slate-800 to-slate-900 p-8 rounded-2xl border border-slate-700 ${solution.hoverColor} transition-all duration-300 group`">
    <div :class="`w-12 h-12 bg-gradient-to-r ${solution.gradient} rounded-lg flex items-center justify-center mb-6 group-hover:scale-110 transition-transform`">
      <component :is="icons[solution.icon]" class="w-6 h-6 text-white" />
    </div>
    <h3 class="text-xl font-bold mb-4 text-white">{{ solution.title }}</h3>
    <p class="text-gray-300">{{ solution.description }}</p>
  </div>
</template>
