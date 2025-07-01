<template>
    <div class="message-container">
      <div class="message-avatar">
        <div class="avatar-initials">{{ testimonial.avatar }}</div>
      </div>
      <div class="message-content">
        <div class="message-header">
          <span class="sender-name">{{ testimonial.name }}</span>
          <span class="message-time">{{ testimonial.time }}</span>
        </div>
        <div class="message-bubble">
          {{ testimonial.content }}
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'TestimonialMessage',
    props: {
      testimonial: {
        type: Object,
        required: true
      }
    }
  }
  </script>
  
  <style scoped>
  .message-container {
    display: flex;
    margin-bottom: 16px;
  }
  
  .message-avatar {
    margin-right: 12px;
  }
  
  .avatar-initials {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: var(--secondary-color);
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
  }
  
  .message-content {
    flex: 1;
  }
  
  .message-header {
    display: flex;
    align-items: center;
    margin-bottom: 4px;
  }
  
  .sender-name {
    font-weight: 600;
    color: var(--text-color);
    margin-right: 8px;
  }
  
  .message-time {
    font-size: 0.75rem;
    color: var(--time-color);
  }
  
  .message-bubble {
    background-color: #2a3942; /* Cor de fundo da mensagem */
    color: var(--text-color);
    padding: 12px 16px;
    border-radius: 8px;
    border-top-left-radius: 0;
    position: relative;
    line-height: 1.4;
  }
  
  .message-bubble::before {
    content: '';
    position: absolute;
    left: -8px;
    top: 0;
    width: 0;
    height: 0;
    border-top: 8px solid #2a3942;
    border-left: 8px solid transparent;
  }
  </style>