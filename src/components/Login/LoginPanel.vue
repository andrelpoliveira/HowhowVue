<template>
  <!-- Login Panel position-->
  <v-navigation-drawer class="login-menu-section" permanent location="right" :width="460" floating>
    <!-- Info Login-->
    <div class="login-menu-sub-section">
      <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Entre na Howhow</v-card-title>
      <v-card-text class="login-registro-link">Não tem conta?
        <router-link class="login-link-router" :to="{ name: 'registro' }">Registre-se</router-link>
      </v-card-text>
      <v-sheet class="login-comunicado" flat height="94" rounded color="rgb(202,253,245)" floating>
        <div class="login-comunicado-icon">
          <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" />
        </div>
        <div class="login-comunicado-text">
          <v-text>
            <strong>Atenção</strong>: estamos em fase <strong>beta</strong> e os acessos estão restringidos para um número
            limitado de usuários.
          </v-text>
        </div>
      </v-sheet>
      <!-- Form login-->
      <v-sheet class="ma-2">
        <v-form @submit.prevent="authStore.handleLogin(formUser)">
          <v-text-field v-model="formUser.email" type="email" label="Email"
            prepend-inner-icon="mdi-at" required bg-color="rgba(255,255,255,0)" ></v-text-field>
          <v-text-field v-model="formUser.password"
            :type="passwordShow ? 'text' : 'password'" label="Password" prepend-inner-icon="mdi-form-textbox-password"
            :append-inner-icon="passwordShow ? 'mdi-eye' : 'mdi-eye-off'" required
            @click:append-inner="passwordShow = !passwordShow" bg-color="rgba(255,255,255,0)" ></v-text-field>
          <v-row>
            <v-col cols="7" md="6">
              <v-switch label="Lembrar de mim" color="blue-darken-3"></v-switch>
            </v-col>
            <v-col cols="5" md="6">
              <p class="text-right  mt-4"><router-link class="esqueceu-senha-link" to="">Esqueceu sua senha?</router-link>
              </p>
            </v-col>
          </v-row>
          <v-btn :loading="loading" type="submit" class="login-submit-btn" >Entrar</v-btn>
        </v-form>
      </v-sheet>
      <v-snackbar color="sucess" v-model="snackbar" vertical>
        <div class="texte-subtitle-1 pb-2">Sucesso ao logar</div>
      </v-snackbar>
    </div>
  </v-navigation-drawer>
</template>

<script>

export default {

  name: 'LoginPanel',

  data: () => ({
    loading: false,
    valid: true,
    snackbar: false,
    passwordShow: false,
    emailRules: {
      required: value => !!value || 'Email is required',
      type: v => /.+@.+\..+/.test(v) || 'Email must be valid',
    },
    passwordRules: {
      required: value => !!value || 'Password is required',
      min: v => v.length >= 8 || 'Password must be less than 8 characters',
    },

  }),

  methods: {
    
  },

};
</script>
<script setup>
import {ref} from 'vue'
import { useAuthStore } from '@/store/auth';

const authStore = useAuthStore();

const formUser = ref({
  email:'',
  password:''
});


</script>

