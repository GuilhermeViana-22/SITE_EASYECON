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
  <div class="bg-gradient-to-br from-slate-900/50 to-slate-800/30 p-8 rounded-2xl border border-slate-700/50 hover:border-primary-green/50 transition-all duration-500 group backdrop-blur-sm hover:shadow-lg hover:shadow-primary-green/10">
    <div class="w-14 h-14 bg-gradient-to-r from-primary-green/80 to-emerald-400/80 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 group-hover:shadow-lg group-hover:shadow-primary-green/25 transition-all duration-300">
      <component :is="icons[solution.icon]" class="w-7 h-7 text-primary-dark" />
    </div>
    <h3 class="text-xl font-bold mb-4 text-white group-hover:text-primary-green transition-colors duration-300">{{ solution.title }}</h3>
    <p class="text-gray-300 leading-relaxed">{{ solution.description }}</p>
  </div>
</template>
