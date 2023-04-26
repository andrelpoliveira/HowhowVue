<template>
    <PoliticaDePrivacidade  />
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import PoliticaDePrivacidade from "@/components/Termos/PoliticaDePrivacidade";
  
  export default defineComponent({
    name: 'TermosView',
  
    components: {
      PoliticaDePrivacidade,
    },
  });
  </script>
  