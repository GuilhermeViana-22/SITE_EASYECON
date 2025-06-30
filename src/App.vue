<template>
  <div class="min-h-screen bg-gradient-to-br from-[#110F1F] via-gray-900 to-black text-white">
    <Header 
      :mobileMenuOpen="mobileMenuOpen" 
      @toggle-mobile-menu="mobileMenuOpen = !mobileMenuOpen"
    />
    
    <HeroSection />
    <SolutionsSection />
    <WhyChooseUsSection />
    <SuccessCasesSection />
    <TestimonialsSection />
    <TeamSection />
    <CTASection />
    <ContactSection />
    <Footer />
  </div>
</template>

<script>
import Header from './components/Header.vue'
import HeroSection from './components/HeroSection.vue'
import SolutionsSection from './components/SolutionsSection.vue'
import WhyChooseUsSection from './components/WhyChooseUsSection.vue'
import SuccessCasesSection from './components/SuccessCasesSection.vue'
import TestimonialsSection from './components/TestimonialsSection.vue'
import TeamSection from './components/TeamSection.vue'
import CTASection from './components/CTASection.vue'
import ContactSection from './components/ContactSection.vue'
import Footer from './components/Footer.vue'

export default {
  name: 'App',
  components: {
    Header,
    HeroSection,
    SolutionsSection,
    WhyChooseUsSection,
    SuccessCasesSection,
    TestimonialsSection,
    TeamSection,
    CTASection,
    ContactSection,
    Footer
  },
  data() {
    return {
      mobileMenuOpen: false
    }
  }
}
</script>

<style>
/* Custom scrollbar */
::-webkit-scrollbar {
  width: 8px;
}

::-webkit-scrollbar-track {
  background: #110F1F;
}

::-webkit-scrollbar-thumb {
  background: #475569;
  border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
  background: #64748b;
}

/* Smooth scrolling */
html {
  scroll-behavior: smooth;
}

/* Custom animations */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fadeInUp {
  animation: fadeInUp 0.6s ease-out;
}
</style>
