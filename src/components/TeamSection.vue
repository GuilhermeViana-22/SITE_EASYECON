<template>
  <section id="team" class="py-32 px-4 relative overflow-hidden">
    <!-- Background futurístico com múltiplas camadas -->
    <div class="absolute inset-0">
      <!-- Grid pattern -->
      <div class="absolute inset-0 bg-grid-pattern opacity-5"></div>
      <!-- Floating orbs -->
      <div class="floating-orb orb-1"></div>
      <div class="floating-orb orb-2"></div>
      <div class="floating-orb orb-3"></div>
      <!-- Gradient overlay -->
      <div class="absolute inset-0 bg-gradient-to-br from-primary-dark via-transparent to-primary-dark opacity-60"></div>
    </div>
    
    <div class="container mx-auto relative z-10">
      <div class="text-center mb-24">
        <div class="inline-block mb-6">
          <span class="px-4 py-2 bg-primary-green/10 border border-primary-green/30 rounded-full text-primary-green font-medium text-sm tracking-wide">
            NOSSA EQUIPE
          </span>
        </div>
        <h2 class="text-5xl md:text-7xl font-bold mb-8 text-white leading-tight">
          Mentes <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-green via-emerald-400 to-cyan-400 animate-pulse">Brilhantes</span>
        </h2>
        <p class="text-xl text-gray-300 max-w-4xl mx-auto leading-relaxed">
          Conheça os visionários que estão moldando o futuro da tecnologia na EasyEcon.
        </p>
      </div>
      
      <!-- Team Grid Futurístico -->
      <div class="team-hexagon-grid">
        <div 
          v-for="(member, index) in teamMembers" 
          :key="member.id"
          :class="`team-card team-card-${index + 1}`"
          @mouseenter="playHoverSound"
        >
          <!-- Background gradient animado -->
          <div class="card-bg-gradient"></div>
          
          <!-- Holographic border -->
          <div class="holographic-border"></div>
          
          <!-- Avatar futurístico -->
          <div class="avatar-container">
            <div class="avatar-ring"></div>
            <div class="avatar-inner">
              <div class="avatar-glow"></div>
              <div class="avatar-image">
                <img :src="member.avatar" alt="Avatar">
              </div>
              <!-- Scanning effect -->
              <div class="scan-line"></div>
            </div>
            <!-- Floating particles -->
            <div class="particle particle-1"></div>
            <div class="particle particle-2"></div>
            <div class="particle particle-3"></div>
          </div>
          
          <!-- Member info -->
          <div class="member-info">
            <h3 class="member-name">{{ member.name }}</h3>
            <p class="member-position">{{ member.position }}</p>
            <p class="member-description">{{ member.description }}</p>
            
            <!-- Skills tags -->
            <div class="skills-container">
              <span v-for="skill in member.skills" :key="skill" class="skill-tag">
                {{ skill }}
              </span>
            </div>
            
            <!-- Social links futurísticos -->
            <div class="social-links">
              <button class="social-btn">
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"/>
                </svg>
              </button>
              <button class="social-btn">
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                </svg>
              </button>
            </div>
          </div>
          
          <!-- Glow effect -->
          <div class="card-glow"></div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'TeamSection',
  data() {
    return {
      teamMembers: [
        {
          id: 1,
          name: 'Robert Uilians',
          position: 'CTO',
          avatar: new URL('../assets/images/team/Robert_Uilians_cto.png', import.meta.url).href,
          description: 'Chief Technology Officer com vasta experiência em arquitetura de sistemas e liderança técnica. Especialista em desenvolvimento de soluções escaláveis e inovadoras.',
          skills: ['Leadership', 'System Architecture', 'Cloud Computing']
        },
        {
          id: 2,
          name: 'Guilherme Viana',
          position: 'Desenvolvedor Full Stack',
          avatar: new URL('../assets/images/team/guilherme_Viana_.png', import.meta.url).href,
          description: 'Desenvolvedor Full Stack apaixonado por criar experiências digitais excepcionais. Expert em tecnologias web modernas e desenvolvimento de aplicações robustas.',
          skills: ['Vue.js', 'Node.js', 'Database Design']
        },
        {
          id: 3,
          name: 'Castro',
          position: 'Desenvolvedor Mobile',
          avatar: new URL('../assets/images/team/Castro_dev_mobile.png', import.meta.url).href,
          description: 'Especialista em desenvolvimento mobile com foco em aplicações nativas e híbridas. Dedicado a criar interfaces intuitivas e performáticas para dispositivos móveis.',
          skills: ['React Native', 'Flutter', 'Mobile UX']
        }
      ]
    }
  },
  methods: {
    playHoverSound() {
      // Adiciona feedback sonoro se necessário
    }
  }
}
</script>

<style scoped>
/* Background grid pattern */
.bg-grid-pattern {
  background-image: 
    linear-gradient(rgba(25, 220, 130, 0.1) 1px, transparent 1px),
    linear-gradient(90deg, rgba(25, 220, 130, 0.1) 1px, transparent 1px);
  background-size: 50px 50px;
}

/* Floating orbs */
.floating-orb {
  position: absolute;
  border-radius: 50%;
  background: radial-gradient(circle, rgba(25, 220, 130, 0.3), transparent);
  filter: blur(1px);
  animation: float 6s ease-in-out infinite;
}

.orb-1 {
  width: 200px;
  height: 200px;
  top: 10%;
  left: 10%;
  animation-delay: 0s;
}

.orb-2 {
  width: 150px;
  height: 150px;
  top: 60%;
  right: 15%;
  animation-delay: 2s;
}

.orb-3 {
  width: 100px;
  height: 100px;
  bottom: 20%;
  left: 70%;
  animation-delay: 4s;
}

@keyframes float {
  0%, 100% { transform: translateY(0px) scale(1); opacity: 0.3; }
  50% { transform: translateY(-20px) scale(1.1); opacity: 0.6; }
}

/* Team grid layout */
.team-hexagon-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

/* Team card futurístico */
.team-card {
  position: relative;
  background: rgba(15, 23, 42, 0.3);
  border-radius: 24px;
  padding: 2rem;
  backdrop-filter: blur(16px);
  border: 1px solid rgba(25, 220, 130, 0.1);
  overflow: hidden;
  transition: all 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  cursor: pointer;
}

.team-card:hover {
  transform: translateY(-10px) scale(1.02);
  border-color: rgba(25, 220, 130, 0.5);
}

/* Background gradient animado */
.card-bg-gradient {
  position: absolute;
  inset: 0;
  background: linear-gradient(135deg, 
    rgba(25, 220, 130, 0.1) 0%, 
    transparent 50%, 
    rgba(34, 197, 94, 0.1) 100%);
  opacity: 0;
  transition: opacity 0.6s ease;
}

.team-card:hover .card-bg-gradient {
  opacity: 1;
}

/* Holographic border */
.holographic-border {
  position: absolute;
  inset: -1px;
  background: linear-gradient(45deg, 
    rgba(25, 220, 130, 0.3),
    rgba(34, 197, 94, 0.3),
    rgba(16, 185, 129, 0.3),
    rgba(25, 220, 130, 0.3));
  background-size: 400% 400%;
  border-radius: 24px;
  opacity: 0;
  animation: holographicShimmer 3s ease-in-out infinite;
  z-index: -1;
}

.team-card:hover .holographic-border {
  opacity: 1;
}

@keyframes holographicShimmer {
  0%, 100% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
}

/* Avatar container futurístico */
.avatar-container {
  position: relative;
  width: 120px;
  height: 120px;
  margin: 0 auto 1.5rem;
}

.avatar-ring {
  position: absolute;
  inset: -8px;
  border: 2px solid rgba(25, 220, 130, 0.3);
  border-radius: 50%;
  animation: spin 10s linear infinite;
}

.avatar-ring::before {
  content: '';
  position: absolute;
  top: -4px;
  left: 50%;
  width: 8px;
  height: 8px;
  background: #19dc82;
  border-radius: 50%;
  transform: translateX(-50%);
  box-shadow: 0 0 10px #19dc82;
}

@keyframes spin {
  from { transform: rotate(0deg); }
  to { transform: rotate(360deg); }
}

.avatar-inner {
  position: relative;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  overflow: hidden;
}

.avatar-glow {
  position: absolute;
  inset: -20px;
  background: radial-gradient(circle, rgba(25, 220, 130, 0.3), transparent);
  border-radius: 50%;
  opacity: 0;
  transition: opacity 0.6s ease;
}

.team-card:hover .avatar-glow {
  opacity: 1;
}

.avatar-image {
  position: relative;
  width: 100%;
  height: 100%;
  background: linear-gradient(135deg, #19dc82, #22c55e);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 2;
  transition: transform 0.6s ease;
  overflow: hidden;
}

.avatar-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 50%;
}

.team-card:hover .avatar-image {
  transform: scale(1.1);
}

/* Scanning effect */
.scan-line {
  position: absolute;
  top: -100%;
  left: 0;
  right: 0;
  height: 2px;
  background: linear-gradient(90deg, transparent, #19dc82, transparent);
  animation: scan 2s ease-in-out infinite;
}

@keyframes scan {
  0% { top: -100%; }
  50% { top: 50%; }
  100% { top: 100%; }
}

/* Floating particles */
.particle {
  position: absolute;
  width: 4px;
  height: 4px;
  background: #19dc82;
  border-radius: 50%;
  animation: particleFloat 4s ease-in-out infinite;
}

.particle-1 {
  top: 20%;
  left: 10%;
  animation-delay: 0s;
}

.particle-2 {
  top: 60%;
  right: 15%;
  animation-delay: 1.5s;
}

.particle-3 {
  bottom: 20%;
  left: 80%;
  animation-delay: 3s;
}

@keyframes particleFloat {
  0%, 100% { transform: translateY(0px) scale(1); opacity: 0.7; }
  50% { transform: translateY(-15px) scale(1.2); opacity: 1; }
}

/* Member info */
.member-info {
  text-align: center;
  position: relative;
  z-index: 2;
}

.member-name {
  font-size: 1.5rem;
  font-weight: 700;
  color: white;
  margin-bottom: 0.5rem;
  transition: color 0.3s ease;
}

.team-card:hover .member-name {
  color: #19dc82;
}

.member-position {
  color: #19dc82;
  font-weight: 600;
  margin-bottom: 1rem;
  font-size: 0.9rem;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.member-description {
  color: #94a3b8;
  margin-bottom: 1.5rem;
  line-height: 1.6;
  transition: color 0.3s ease;
}

.team-card:hover .member-description {
  color: #cbd5e1;
}

/* Skills tags */
.skills-container {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  justify-content: center;
  margin-bottom: 1.5rem;
}

.skill-tag {
  padding: 0.25rem 0.75rem;
  background: rgba(25, 220, 130, 0.1);
  border: 1px solid rgba(25, 220, 130, 0.3);
  border-radius: 20px;
  font-size: 0.75rem;
  color: #19dc82;
  font-weight: 500;
  transition: all 0.3s ease;
}

.team-card:hover .skill-tag {
  background: rgba(25, 220, 130, 0.2);
  border-color: rgba(25, 220, 130, 0.6);
  transform: scale(1.05);
}

/* Social links */
.social-links {
  display: flex;
  gap: 1rem;
  justify-content: center;
}

.social-btn {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background: rgba(25, 220, 130, 0.1);
  border: 1px solid rgba(25, 220, 130, 0.3);
  color: #19dc82;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  cursor: pointer;
}

.social-btn:hover {
  background: rgba(25, 220, 130, 0.2);
  border-color: #19dc82;
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(25, 220, 130, 0.3);
}

/* Card glow effect */
.card-glow {
  position: absolute;
  inset: -50px;
  background: radial-gradient(circle, rgba(25, 220, 130, 0.1), transparent);
  opacity: 0;
  transition: opacity 0.6s ease;
  z-index: -1;
}

.team-card:hover .card-glow {
  opacity: 1;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .team-hexagon-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
  
  .team-card {
    padding: 1.5rem;
  }
}
</style>
