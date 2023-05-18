import { createApp, markRaw } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'
//import store from './store'
import vuetify from './plugins/vuetify'
import VueTelInput from 'vue-tel-input'
import 'vue-tel-input/vue-tel-input.css'
import { loadFonts } from './plugins/webfontloader'
import { loadIcon } from '@iconify/vue'
import VueApexCharts from 'vue3-apexcharts';
import { vMaska } from 'maska'

import './assets/css/main.css';
import './assets/css/mainpage.css';
import './assets/css/campanhas.css';
import './assets/css/dashboard.css';
import './assets/css/login-registro.css';
import './assets/css/profile.css';
import './assets/css/gerenciar.css';
import './services/axios';
import './index.css';

const pinia = createPinia();
const globalOptions = {
    mode: 'auto',
};
pinia.use(({store}) =>{
  store.router = markRaw(router);
});

loadFonts()
loadIcon()

createApp(App)
  .use(pinia)
  .use(router)
  .use(vuetify)
  .use(VueTelInput)
  .use(VueTelInput, globalOptions) // Define default global options here (optional)
  .use(VueApexCharts)
  .directive("maska", vMaska)
  

  .mount('#app')