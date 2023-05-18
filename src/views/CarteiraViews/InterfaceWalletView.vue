<template>
    <TestWalletFace/>
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import TestWalletFace from "@/components/CarteiraDigital/TestWalletFace.vue";
  
  export default defineComponent({
    name: 'InterfaceWalletView',
  
    components: {
      TestWalletFace,
    },
  });
  </script>
  