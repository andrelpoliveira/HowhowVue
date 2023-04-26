<template>
    <TermosDeUso  />
  </template>
  
  <script>
  import { defineComponent } from 'vue';
  
  // Components
  import TermosDeUso from "@/components/Termos/TermosDeUso";
  
  export default defineComponent({
    name: 'TermosView',
  
    components: {
      TermosDeUso,
    },
  });
  </script>
  