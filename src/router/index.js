import { createRouter, createWebHistory } from 'vue-router'
import RegistroView from '../views/RegistroView.vue'
import TermosView  from '../views/TermosView.vue'
import PoliticaView from '../views/PoliticaView.vue'
import WalletView from '../views/WalletView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: RegistroView
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
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]
const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
