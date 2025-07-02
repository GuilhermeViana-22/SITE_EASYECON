<template>
  <div class="min-h-screen bg-primary-dark text-white relative overflow-hidden">
    <!-- Background blurs verdes decorativos -->
    <div class="fixed inset-0 pointer-events-none">
      <div class="absolute top-1/4 left-1/4 w-96 h-96 bg-radial-green-soft blur-3xl opacity-20"></div>
      <div class="absolute bottom-1/4 right-1/4 w-80 h-80 bg-radial-green-soft blur-3xl opacity-15"></div>
      <div class="absolute top-3/4 left-1/2 w-64 h-64 bg-radial-green-soft blur-3xl opacity-10"></div>
    </div>
    
    <div class="relative z-10">
      <Header 
        :mobileMenuOpen="mobileMenuOpen" 
        @toggle-mobile-menu="mobileMenuOpen = !mobileMenuOpen"
      />
      
      <HeroSection />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <SolutionsSection />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <WhyChooseUsSection />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <CommitTree />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <SuccessCasesSection />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <TestimonialsSection />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <TeamSection />
      <div class="py-16"></div> <!-- Espaçamento adicional -->
      <CTASection />
      <div class="py-12"></div> <!-- Espaçamento menor antes do footer -->
      <ContactSection />
      <Footer />
    </div>
  </div>
</template>

<script>
import Header from './components/Header.vue'
import HeroSection from './components/HeroSection.vue'
import SolutionsSection from './components/SolutionsSection.vue'
import WhyChooseUsSection from './components/WhyChooseUsSection.vue'
import CommitTree from './components/CommitTree.vue'
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
    CommitTree,
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

html {
  scroll-behavior: smooth;
}

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
