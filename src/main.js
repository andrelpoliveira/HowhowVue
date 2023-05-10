import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify'
import VueTelInput from 'vue-tel-input'
import 'vue-tel-input/vue-tel-input.css'
import { loadFonts } from './plugins/webfontloader'
import { loadIcon } from '@iconify/vue'
import VueApexCharts from 'vue3-apexcharts'

import './assets/css/main.css';
import './assets/css/mainpage.css';
import './assets/css/campanhas.css';
import './assets/css/dashboard.css';
import './assets/css/login-registro.css';
import './assets/css/profile.css';
import './assets/css/gerenciar.css';

import "./index.css";

const globalOptions = {
    mode: 'auto',
};
loadFonts()
loadIcon()

createApp(App)
  .use(store)
  .use(router)
  .use(store)
  .use(vuetify)
  .use(VueTelInput)
  .use(VueTelInput, globalOptions) // Define default global options here (optional)
  .use(VueApexCharts)

  .mount('#app')