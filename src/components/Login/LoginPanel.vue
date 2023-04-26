<template>
  <!-- Login Panel position-->
  <v-navigation-drawer permanent location="right" :width="460" class="mt-50" floating>
    <!-- Info Login-->
    <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Entre na Howhow</v-card-title>
    <v-card-text class="pb-4">Não tem conta?<a href="#" class="text-decoration-none font-wheight-bold">
      <router-link to="/registro">Registre-se</router-link>
        </a></v-card-text>
    <v-sheet class="d-flex align-center justify-center flex-wrap text-center ma-2" elevation="4" height="94" rounded
      color="rgb(202,253,245)" floating>
      <div class="ma-2">
        <p class="text-h10 text-left">
          <v-icon icon="mdi-alert-circle" size="16"></v-icon> Atenção: estamos em fase beta e os
          acessos
          estão restringidos para um número restrito de usuários
        </p>
      </div>
    </v-sheet>
    <!-- Form login-->
    <v-sheet class="ma-2">
      <v-form @submit.prevent="validateBeforeSubmit" ref="form">
        <v-text-field density="comfortable" v-model="email" :rules="[emailRules.required, emailRules.type]" type="email"
          label="Email" prepend-inner-icon="mdi-at" variant="solo" bg-color="#E3F2FD" required></v-text-field>

        <v-text-field density="comfortable" v-model="password" :rules="[passwordRules.required, passwordRules.min]"
          :type="passwordShow ? 'text' : 'password'" label="Password" prepend-inner-icon="mdi-form-textbox-password"
          :append-inner-icon="passwordShow ? 'mdi-eye' : 'mdi-eye-off'" variant="solo" bg-color="#E3F2FD" required
          @click:append-inner="passwordShow = !passwordShow"></v-text-field>
        <v-row>
          <v-col cols="7" md="6">
            <v-switch label="Remember me" color="blue-darken-3"></v-switch>
          </v-col>
          <v-col cols="5" md="6">
            <p class="text-right text-subtitle-2 mt-4"><a href="#">Forgot password</a></p>
          </v-col>
        </v-row>
        <v-btn :loading="loading" type="submit" block rounded="lg" class="mt-2" size="x-large"
          color="blue-darken-3">Login</v-btn>
      </v-form>
    </v-sheet>
  </v-navigation-drawer>
</template>

<script>

export default {

  name: 'App',

  data: () => ({
    loading: false,
    snackbar: false,
    passwordShow: false,
    email: '',
    emailRules: {
      required: value => !!value || 'Email is required',
      type: v => /.+@.+\..+/.test(v) || 'Email must be valid',
    },
    password: '',
    passwordRules: {
      required: value => !!value || 'Password is required',
      min: v => v.length >= 8 || 'Password must be less than 8 characters',
    },
  }),

  methods: {
    validateBeforeSubmit() {
      if (this.$refs.form.validate()) {
        this.loading = true
        setTimeout(() => {
          this.loading = false
          this.snackbar = true
        }, 3000)
      }
    },
  },

};
</script>

<style></style>
