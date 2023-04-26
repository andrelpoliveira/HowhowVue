<template>
  <v-app>
    <v-main>
      <router-view/>
    </v-main>
  </v-app>
</template>

<script>

//styles
import './assets/css/main.css';
import './assets/css/components.css';

export default {
  name: 'App',

  data: () => ({
    //
  }),
}
</script>