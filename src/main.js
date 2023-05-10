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