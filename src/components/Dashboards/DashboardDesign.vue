<template>
  <v-navigation-drawer v-model="drawer">
    <!-- Logo Howhow -->
    <LogoHowhow class="sidebar-logo" />
    <!-- User avatar -->
    <v-hover v-slot="{ isHovering, props }">
      <v-card flat class="sidebar-profile-card d-flex align-center justify-center flex-wrap text-center ma-2" height="70"
        v-bind="props" :elevation="isHovering ? 2 : 1">
        <v-layout>
          <v-list>
            <v-list-item prepend-avatar="https://randomuser.me/api/portraits/women/85.jpg" title="Sandra Adams"
              :subtitle="$store.state.roles" class="sidebar-profile-info">
            </v-list-item>
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
    <div v-if="$store.state.roles === 'influencer'">
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
    <div v-else-if="$store.state.roles === 'marca'">
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
    <div v-else-if="$store.state.roles === 'agencia'">
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

  </v-navigation-drawer>

  <v-app-bar flat class="dashboard-topbar" color="rgba(255,255,255,0)">
    <v-btn density="compact" @click="drawer = !drawer">
      <v-icon size="x-large">mdi-menu</v-icon>
      <span class="dashboard-topbar-icons">Menu</span>
    </v-btn>

    <v-spacer></v-spacer>

    <DashboardTopbar />

  </v-app-bar>

  <!-- Dashboard tab main-->
  <v-main>
    <v-app>
      <v-container class="py-8 px-6" fluid>
        <v-window v-model="tab">
          <v-window-item value="op1">
            <p>Dashboard</p>
          </v-window-item>
          <v-window-item value="op3">
            <WalletView/>
          </v-window-item>
          <v-window-item value="op4">
            <p>Analytics</p>
          </v-window-item>
          <!-- Profile Influenciador -op02 -->
          <v-window-item value="op2">
            <div v-if="$store.state.roles === 'influencer'">
              <ProfileInfluencer />
            </div>
            <div v-if="$store.state.roles === 'marca'">
              <ProfileMarca />
            </div>
            <div v-if="$store.state.roles === 'agencia'">
              <ProfileAgencia />
            </div>
          </v-window-item>

          <v-window-item value="op09">
            <div v-if="$store.state.roles === 'marca'">
              <ProfileMarcatoInfluencer />
            </div>
          </v-window-item>

          <!-- Todas as Campanhas Influenciador -op05 -->
          <AllCampaignsInfluencer />
          <!-- Campanhas do Influenciador -op06 -->
          <MyCampaigns />
          <!-- Criação de Campanhas da Marca -op07 -->
          <CreateCampaigns />
          <!-- Todas as Campanhas Marca -op08 -->
          <AllCampaignsMarca @open-edit="openEdit" />
          <!-- Editar campanhas Marca -edit-campanha -->
          <MyCampaignsMarca :infoId="infoId"/>
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
import MyCampaigns from './../Campanhas/MyCampaigns.vue';
import AllCampaignsInfluencer from '../Campanhas/AllCampaignsInfluencer.vue';
import CreateCampaigns from '../Campanhas/CreateCampaigns.vue';
import AllCampaignsMarca from '../Campanhas/AllCampaignsMarca.vue';
import MyCampaignsMarca from '../Campanhas/MyCampaignsMarca.vue';
import ProfileInfluencer from './ProfileInfluencer.vue';
import WalletView from './../../views/WalletView.vue';
import ProfileMarca from './ProfileMarca.vue';
import ProfileAgencia from './ProfileAgencia.vue';
import ProfileMarcatoInfluencer from './ProfileMarcatoInfluencer.vue';

</script>

<script>

export default {
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
      ['Wallet', 'mdi-wallet', 'op3'],
      ['Analytics', 'mdi-google-analytics', 'op4'],
    ],
    //Refere-se a tabulação dentro do Dashboard (Abre as páginas de acordo com os valores)
    tab: null,
    //infoCampanha: null,
    value: 0,

  }),

  methods: {
    //Método Abrir tab de edição Campanhas pela marca e trazer os dados
    openEdit() {
      this.tab = "my-campanha-marca";
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
    MyCampaigns,
    AllCampaignsInfluencer,
    CreateCampaigns,
    AllCampaignsMarca,
    MyCampaignsMarca: AllCampaignsMarca,
    ProfileInfluencer,
    ProfileMarca,
    ProfileAgencia,
    ProfileMarcatoInfluencer,
    WalletView,
  },
}
</script>