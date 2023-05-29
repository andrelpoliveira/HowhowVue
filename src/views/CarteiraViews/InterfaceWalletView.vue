<template>
    <InterfaceWallet/>
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import InterfaceWallet from "@/components/CarteiraDigital/InterfaceWallet.vue";
  
  export default defineComponent({
    name: 'InterfaceWalletView',
  
    components: {
      InterfaceWallet,
    },
  });
  </script>
  