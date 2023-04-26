<template>
  <RegistroComponent />
</template>

<script>
import { defineComponent } from 'vue';

// Components
import RegistroComponent from "@/components/Registro/RegistroComponent";

export default defineComponent({
  name: 'RegistroView',

  components: {
    RegistroComponent,
  },
});
</script>
