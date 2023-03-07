<template>
    <div class="modal" v-if="isOpen">
      <div class="modal-background" @click="$emit('close')"></div>
      <div class="modal-content">
        <slot></slot>
      </div>
      <button class="modal-close is-large" aria-label="close" @click="$emit('close')"></button>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      isOpen: {
        type: Boolean,
        required: true
      },
    },
  };
  </script>
  
  <style>
  .modal {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .modal-background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
  }
  
  .modal-content {
    position: relative;
    background-color: white;
    padding: 1.5rem;
    border-radius: 0.5rem;
    width: 400px;
    max-width: 90%;
    max-height: 90%;
    overflow-y: auto;
  }
  
  .modal-close {
    position: absolute;
    top: 0.5rem;
    right: 0.5rem;
  }

  #quiz-answers-container {
    display: flex;
    flex-direction: column;
  }

  radio {
    padding-right: 10px
  }

  #quiz-word {
    font-weight: 600;
  }
  </style>