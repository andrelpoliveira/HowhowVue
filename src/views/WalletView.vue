<template>
    <WalletComponent  />
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import WalletComponent from "@/components/Wallet/WalletComponent";
  
  export default defineComponent({
    name: 'WalletView',
  
    components: {
        WalletComponent,
    },
  });
  </script>