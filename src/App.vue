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
import './assets/css/mainpage.css';
import './assets/css/campanhas.css';
import './assets/css/dashboard.css';
import './assets/css/login-registro.css';
import './assets/css/profile.css';

export default {
  name: 'App',

  data: () => ({
    //
  }),
}
</script>