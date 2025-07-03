<template>
  <div class="commit-tree-container py-16">
    <div class="container mx-auto px-4 text-center">
      <h2 class="text-primary-green text-3xl md:text-4xl font-bold mb-8">
        Entrega Dinâmica
      </h2>
      <p class="text-gray-300 text-lg mb-12 max-w-2xl mx-auto">
        Acompanhe o progresso em tempo real com nossa arquitetura de desenvolvimento ágil
      </p>
      
      <div class="commit-tree flex flex-col items-center" ref="commitTree">
        <!-- As linhas de commits serão geradas dinamicamente -->
      </div>

    </div>
  </div>
</template>

<script>
export default {
  name: 'CommitTree',
  mounted() {
    this.initializeCommitTree();
    this.startCommitSimulation();
  },
  beforeUnmount() {
    if (this.commitInterval) {
      clearInterval(this.commitInterval);
    }
  },
  data() {
    return {
      commitInterval: null,
      rows: 4,
      cols: 20
    }
  },
  methods: {
    initializeCommitTree() {
      const commitTree = this.$refs.commitTree;
      
      // Limpar árvore existente
      commitTree.innerHTML = '';
      
      // Criar a árvore de commits com tons variados
      for (let i = 0; i < this.rows; i++) {
        const row = document.createElement('div');
        row.className = 'commit-row flex justify-center mb-2';
        
        for (let j = 0; j < this.cols; j++) {
          const commit = document.createElement('div');
          commit.className = 'commit w-5 h-5 rounded-sm mx-0.5 transition-all duration-300 ease-in-out';
          
          // Atribuir um nível de verde aleatório (1-4) baseado nas cores do projeto
          const level = Math.floor(Math.random() * 4) + 1;
          commit.setAttribute('data-level', level);
          commit.style.backgroundColor = this.getColorForLevel(level);
          
          row.appendChild(commit);
        }
        
        commitTree.appendChild(row);
      }
    },
    
    getColorForLevel(level) {
      // Usando a cor primary-green (#19dc82) em diferentes opacidades/tons
      const colors = [
        '#0a4d2a', // Verde muito escuro
        '#0f6b3b', // Verde escuro  
        '#14894c', // Verde médio
        '#19dc82'  // Verde principal (primary-green)
      ];
      return colors[level - 1];
    },
    
    simulateCommit() {
      // Escolher uma célula aleatória para piscar
      const randomRow = Math.floor(Math.random() * this.rows);
      const randomCol = Math.floor(Math.random() * this.cols);
      
      const rowsElements = this.$refs.commitTree.querySelectorAll('.commit-row');
      const targetCommit = rowsElements[randomRow].children[randomCol];
      const level = targetCommit.getAttribute('data-level');
      
      // Adicionar efeito de brilho
      const glow = document.createElement('div');
      glow.className = 'glow absolute inset-0 rounded-sm pointer-events-none';
      glow.style.background = `radial-gradient(circle, ${this.getColorForLevel(level)} 0%, transparent 70%)`;
      glow.style.animation = 'glow 1s ease-out';
      
      // Fazer o commit ficar relativo para o glow funcionar
      targetCommit.style.position = 'relative';
      targetCommit.appendChild(glow);
      
      // Ativar o commit
      targetCommit.classList.add('active');
      targetCommit.style.transform = 'scale(1.1)';
      targetCommit.style.boxShadow = `0 0 10px ${this.getColorForLevel(level)}`;
      targetCommit.style.animation = 'pulse 1s infinite';
      
      // Remover as classes após a animação
      setTimeout(() => {
        targetCommit.classList.remove('active');
        targetCommit.style.transform = '';
        targetCommit.style.boxShadow = '';
        targetCommit.style.animation = '';
        
        // Remover o elemento de brilho após a animação
        setTimeout(() => {
          if (glow.parentNode === targetCommit) {
            targetCommit.removeChild(glow);
          }
        }, 1000);
      }, 1000);
    },
    
    startCommitSimulation() {
      // Iniciar vários processos de commits
      for (let i = 0; i < 3; i++) {
        this.startRandomCommits();
      }
    },
    
    startRandomCommits() {
      const delay = Math.random() * 2000 + 500; // 0.5-2.5s
      setTimeout(() => {
        this.simulateCommit();
        this.startRandomCommits();
      }, delay);
    }
  }
}
</script>

<style scoped>
@keyframes pulse {
  0% { opacity: 1; }
  50% { opacity: 0.7; }
  100% { opacity: 1; }
}

@keyframes glow {
  0% { transform: scale(0.8); opacity: 0.8; }
  100% { transform: scale(1.5); opacity: 0; }
}

.commit:hover {
  transform: scale(1.05);
}
</style> 