import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import DashboardView from '../views/DashboardView.vue'
import LoginView from '../views/LoginView.vue'
import RegistroView from '../views/RegistroView.vue'
import TermosView  from '../views/TermosView.vue'
import PoliticaView from '../views/PoliticaView.vue'
import WalletView from '../views/WalletView.vue'
import ProfileMarcatoInfluencer from '../components/Dashboards/ProfileMarcatoInfluencer.vue'
import LoginWalletView from '../views/CarteiraViews/LoginWalletView.vue'
import InterfaceWalletView from '../views/CarteiraViews/InterfaceWalletView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/registro',
    name: 'registro',
    component: RegistroView
  },
  {
    path: '/dashboard',
    name: 'dashboard',
    component: DashboardView,
  },
  {
    path: '/login',
    name: 'login',
    component: LoginView
  },
  {
    path: '/termosdeuso',
    name: 'termosdeuso',
    component: TermosView 
  },
  {
    path: '/wallet',
    name: 'wallet',
    component: WalletView
  },
  {
    path: '/politicadeprivacidade',
    name: 'politicadeprivacidade',
    component: PoliticaView
  },
   {
    path: '/influencerprofile',
    name: 'marcatoinfluencer',
    component: ProfileMarcatoInfluencer
  },
  {
    path: '/loginwallet',
    name: 'LoginWallet',
    component: LoginWalletView
  },
  {
    path: '/interfacewallet',
    name: 'InterfaceWallet',
    component: InterfaceWalletView
  },
  
]
const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
