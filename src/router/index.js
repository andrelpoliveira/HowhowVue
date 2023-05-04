import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import DashboardView from '../views/DashboardView.vue'
import LoginView from '../views/LoginView.vue'
import RegistroView from '../views/RegistroView.vue'
import TermosView  from '../views/TermosView.vue'
import PoliticaView from '../views/PoliticaView.vue'
import WalletView from '../views/WalletView.vue'
import DataView from '../views/DataView.vue'
import ProfileMarcatoInfluencer from '../components/Dashboards/ProfileMarcatoInfluencer.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/registro',
    name: 'Registro',
    component: RegistroView
  },
  {
    path: '/dashboard',
    name: 'Dashboard',
    component: DashboardView
  },
  {
    path: '/login',
    name: 'Login',
    component: LoginView
  },
  {
    path: '/termosdeuso',
    name: 'TermosDeuso',
    component: TermosView 
  },
  {
    path: '/wallet',
    name: 'Wallet',
    component: WalletView
  },
  {
    path: '/politicadeprivacidade',
    name: 'PoliticaDePrivacidade',
    component: PoliticaView
  },
  {
    path: '/dataview',
    name: 'DataView',
    component: DataView
  },
  {
    path: '/influencerProfile',
    name: 'MarcatoInfluencer',
    component: ProfileMarcatoInfluencer
  },
  
]
const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
