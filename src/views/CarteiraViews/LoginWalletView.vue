<template>
    <LoginWallet/>
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import LoginWallet from "@/components/CarteiraDigital/LoginWallet.vue";
  
  export default defineComponent({
    name: 'CarteiraDigitalView',
  
    components: {
      LoginWallet,
    },
  });
  </script>
  