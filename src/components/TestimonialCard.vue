<template>
  <div class="bg-gradient-to-br from-slate-900/50 to-slate-800/30 p-8 rounded-2xl border border-slate-700/50 hover:border-primary-green/30 transition-all duration-500 backdrop-blur-sm group">
    <div class="flex items-center mb-6">
      <div class="w-14 h-14 bg-gradient-to-r from-primary-green to-emerald-400 rounded-full flex items-center justify-center mr-4 group-hover:scale-110 transition-transform duration-300">
        <span class="text-primary-dark font-bold text-lg">{{ testimonial.avatar }}</span>
      </div>
      <div>
        <h4 class="font-bold text-white group-hover:text-primary-green transition-colors duration-300">{{ testimonial.name }}</h4>
        <p class="text-gray-400 text-sm">{{ testimonial.position }}</p>
      </div>
    </div>
    <p class="text-gray-300 leading-relaxed">"{{ testimonial.content }}"</p>
  </div>
</template>

<script>
export default {
  name: 'TestimonialCard',
  props: {
    testimonial: {
      type: Object,
      required: true
    }
  }
}
</script>
