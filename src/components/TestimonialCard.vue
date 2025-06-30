<template>
  <div class="bg-slate-800 p-8 rounded-2xl border border-slate-700">
    <div class="flex items-center mb-4">
      <div :class="`w-12 h-12 bg-gradient-to-r ${testimonial.gradient} rounded-full flex items-center justify-center mr-4`">
        <span class="text-white font-bold">{{ testimonial.avatar }}</span>
      </div>
      <div>
        <h4 class="font-bold text-white">{{ testimonial.name }}</h4>
        <p class="text-gray-400 text-sm">{{ testimonial.position }}</p>
      </div>
    </div>
    <p class="text-gray-300">"{{ testimonial.content }}"</p>
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
