<template>
  <v-navigation-drawer v-model="drawer">
    <!-- Logo Howhow -->
    <LogoHowhow class="sidebar-logo" />
    <!-- User avatar -->
    <v-hover v-slot="{ isHovering, props }">
      <v-card flat class="sidebar-profile-card d-flex align-center justify-center flex-wrap text-center ma-2" height="70"
        v-bind="props" :elevation="isHovering ? 2 : 1">
        <v-layout>
          <v-list v-if="authStore.user">
            <div v-if="authStore.user.role === 'influencer'">
              <v-list-item :prepend-avatar="authStore.user.profile_photo_url" :title="authStore.user.name"
                :subtitle="authStore.user.role" class="sidebar-profile-info">
              </v-list-item>
            </div>
            <div v-else-if="authStore.user.role === 'brand'">
              <v-list-item :prepend-avatar="authStore.user.profile_photo_url" :title="authStore.user.business_name"
                :subtitle="authStore.user.role" class="sidebar-profile-info">
              </v-list-item>
            </div>
            <div v-else-if="authStore.user.role === 'agency'">
              <v-list-item :prepend-avatar="authStore.user.profile_photo_url" :title="authStore.user.business_name"
                :subtitle="authStore.user.role" class="sidebar-profile-info">
              </v-list-item>
            </div>
          </v-list>
        </v-layout>
      </v-card>
    </v-hover>

    <v-spacer></v-spacer>
    <!-- List Gerenciamento -->
    <v-card flat class="mx-auto" max-width="300">
      <v-list density="compact" v-model="tab">
        <v-list-subheader class="text-h8">GERENCIAMENTO</v-list-subheader>
        <v-tabs v-model="tab" flat direction="vertical" color="rgba(1,137,255,1)">
          <v-tab v-for="([title, icon, options], i) in menu" :key="i" :value="options">
            <v-list-item :title="title" :prepend-icon="icon" class="align-menu">
            </v-list-item>
          </v-tab>
        </v-tabs>
      </v-list>
    </v-card>


    <!-- List Campanhas Influencer -->
    <div v-if="authStore.user">
      <div v-if="authStore.user.role === 'influencer'">
        <v-card flat class="mx-auto">
          <v-list v-model:opened="open" density="compact">
            <v-list-subheader class="text-h8">MONETIZATION</v-list-subheader>
            <v-list-group value="Eventos">
              <template v-slot:activator="{ props }">
                <v-list-item v-bind="props" prepend-icon="mdi-bullhorn-outline" title="Campanhas"
                  active-color="rgba(1,137,255,1)" class="align-campanha"></v-list-item>
              </template>
              <v-tabs v-model="tab" flat direction="vertical" color="rgba(1,137,255,1)">
                <v-tab v-for="([title, icon, options], i) in campanhasInf" :key="i" :value="options">
                  <v-list-item :title="title" :prepend-icon="icon" class="align-submenu"></v-list-item>
                </v-tab>
              </v-tabs>
            </v-list-group>
          </v-list>
        </v-card>
      </div>
      <!-- List Campanhas Marca -->
      <div v-else-if="authStore.user.role === 'brand'">
        <v-card flat class="mx-auto">
          <v-list v-model:opened="open" density="compact">
            <v-list-subheader class="text-h8">MONETIZATION</v-list-subheader>
            <v-list-group value="Eventos">
              <template v-slot:activator="{ props }">
                <v-list-item v-bind="props" prepend-icon="mdi-bullhorn-outline" title="Campanhas"
                  active-color="rgba(1,137,255,1)" class="align-campanha"></v-list-item>
              </template>
              <v-tabs v-model="tab" flat direction="vertical" color="rgba(1,137,255,1)">
                <v-tab v-for="([title, icon, options], i) in campanhasMar" :key="i" :value="options">
                  <v-list-item :title="title" :prepend-icon="icon" class="align-submenu"></v-list-item>
                </v-tab>
              </v-tabs>
            </v-list-group>
          </v-list>
        </v-card>
      </div>
      <!-- List Campanhas Agência -->
      <div v-else-if="authStore.user.role === 'agency'">
        <v-card flat class="mx-auto">
          <v-list v-model:opened="open" density="compact">
            <v-list-subheader class="text-h8">MONETIZATION</v-list-subheader>
            <v-list-group value="Eventos">
              <template v-slot:activator="{ props }">
                <v-list-item v-bind="props" prepend-icon="mdi-bullhorn-outline" title="Campanhas"
                  active-color="rgba(1,137,255,1)" class="align-campanha"></v-list-item>
              </template>
              <v-tabs v-model="tab" flat direction="vertical" color="rgba(1,137,255,1)">
                <v-tab v-for="([title, icon, options], i) in campanhasInf" :key="i" :value="options">
                  <v-list-item :title="title" :prepend-icon="icon" class="align-submenu"></v-list-item>
                </v-tab>
              </v-tabs>
            </v-list-group>
          </v-list>
        </v-card>
      </div>
    </div>
  </v-navigation-drawer>

  <v-app-bar flat class="dashboard-topbar">
    <v-btn density="compact" @click="drawer = !drawer">
      <v-icon size="x-large">mdi-menu</v-icon>
      <span class="dashboard-topbar-icons">Menu</span>
    </v-btn>

    <v-spacer></v-spacer>

    <DashboardTopbar />

  </v-app-bar>

  <!-- Dashboard tab main-->
  <v-main v-if="authStore.user">
    <v-app>
      <v-container class="px-6" fluid>
        <v-window v-model="tab">
          <v-window-item value="op1">
            <div v-if="authStore.user.role === 'influencer'">
              <DashboardInfluencer />
            </div>
            <div v-if="authStore.user.role === 'brand'">
              <DashboardMarca />
            </div>
            <div v-if="authStore.user.role === 'agency'">
              <DashboardAgencia />
            </div>
          </v-window-item>

          <div v-if="authStore.user.role === 'brand'">
            <v-window-item value="op10">
              <MarcaMacros />
            </v-window-item>
          </div>

          <v-window-item value="op3">
            <WalletView />
          </v-window-item>
          <v-window-item value="op4">
            <p>Analytics</p>
          </v-window-item>
          <!-- Profiles -op02 -->
          <v-window-item value="op2">
            <div v-if="authStore.user.role === 'influencer'">
              <ProfileInfluencer />
            </div>
            <div v-if="authStore.user.role === 'brand'">
              <ProfileMarca />
            </div>
            <div v-if="authStore.user.role === 'agency'">
              <ProfileAgencia />
            </div>
          </v-window-item>
          <v-window-item value="op09">
            <div v-if="authStore.user.role === 'brand'">
              <ProfileMarcatoInfluencer />
            </div>
          </v-window-item>
          <!-- Todas as Campanhas Influenciador -op05 -->
          <AllCampaignsInfluencer />
          <!-- Campanhas do Influenciador -op06 -->
          <MyCampaignsInfluencer />
          <!-- Criação de Campanhas da Marca -op07 -->
          <CreateCampaigns />
          <!-- Todas as Campanhas Marca -op08 -->
          <AllCampaignsMarca @open-edit="openEdit" />
          <!-- Editar campanhas Marca -edit-campanha -->
          <MyCampaignsMain />
          <!-- Apresentar profile do influencer acessado via marca -->

        </v-window>
      </v-container>
    </v-app>
  </v-main>
</template>

<script setup>
//Import Components
import LogoHowhow from '../LogoHowhow.vue';
import DashboardTopbar from './DashboardTopbar.vue';
import MyCampaignsInfluencer from './../Campanhas/MyCampaignsInfluencer.vue';
import AllCampaignsInfluencer from '../Campanhas/AllCampaignsInfluencer.vue';
import CreateCampaigns from '../Campanhas/CreateCampaigns.vue';
import AllCampaignsMarca from '../Campanhas/AllCampaignsMarca.vue';
import MyCampaignsMain from '../Campanhas/MyCampaignsMain.vue';
import ProfileInfluencer from './ProfileInfluencer.vue';
import WalletView from './../../views/WalletView.vue';
import ProfileMarca from './ProfileMarca.vue';
import ProfileAgencia from './ProfileAgencia.vue';
import ProfileMarcatoInfluencer from './ProfileMarcatoInfluencer.vue';
import DashboardInfluencer from './DashboardInfluencer.vue';
import DashboardMarca from './DashboardMarca.vue';
import DashboardAgencia from './DashboardAgencia.vue';

import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import MarcaMacros from '../Campanhas/MarcaMacros.vue';

const authStore = useAuthStore();

onMounted(async () => {
  await authStore.getUser();
})

</script>

<script>

export default {
  name: 'DashboardDesign',
  data: () => ({
    //variáveis de controle
    drawer: null,
    theme: null,
    //$store.state.roles: userRoles,
    //Menu Vertical (List Campanhas Influencer)
    open: ['Eventos', 'Users'],
    campanhasInf: [
      ['Campanhas', 'mdi-checkbox-blank-circle', 'op5'],
      ['Minhas Campanhas', 'mdi-checkbox-blank-circle', 'op6'],
    ],
    //Menu Vertical (List Campanhas Marca)
    campanhasMar: [
      ['Campanhas', 'mdi-checkbox-blank-circle', 'op8'],
      ['Criar Campanhas', 'mdi-checkbox-blank-circle', 'op7'],
    ],
    //Menu Vertical (List Gerenciamento)
    menu: [
      ['Dashboard', 'mdi-widgets', 'op1'],
      ['Profile', 'mdi-account-circle', 'op2'],
      ['Macros', 'mdi-checkbox-blank-circle', 'op10'],
      ['Wallet', 'mdi-wallet', 'op3'],
    ],

        //Menu Vertical (List Gerenciamento Marca)
        marcaMenu: [
      ['Dashboard', 'mdi-widgets', 'op1'],
      ['Profile', 'mdi-account-circle', 'op2'],
      ['Macros', 'mdi-checkbox-blank-circle', 'op10'],
      ['Wallet', 'mdi-wallet', 'op3'],
    ],
    //Refere-se a tabulação dentro do Dashboard (Abre as páginas de acordo com os valores)
    tab: null,
    value: 0,

  }),

  methods: {
    //Método Abrir tab de edição Campanhas pela marca e trazer os dados
    openEdit() {
      this.tab = "my-campanha-main";
    },

  },
  //Topbar Menu
  computed: {
    color() {
      switch (this.value) {
        case 0: return 'light-blue'
        case 1: return 'light-blue-lighten-1'
        case 2: return 'light-blue-lighten-2'
        case 3: return 'light-blue-lighten-3'
        default: return 'theme'
      }
    },

  },
  //Componentes
  components: {
    LogoHowhow,
    DashboardTopbar,
    MyCampaignsInfluencer,
    AllCampaignsInfluencer,
    CreateCampaigns,
    AllCampaignsMarca,
    MyCampaignsMain,
    ProfileInfluencer,
    ProfileMarca,
    ProfileAgencia,
    ProfileMarcatoInfluencer,
    DashboardInfluencer,
    DashboardMarca,
    DashboardAgencia,
    WalletView,
    MarcaMacros
  },
}
</script>