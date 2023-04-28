<template>
  <v-navigation-drawer v-model="drawer">
    <!-- Logo Howhow -->
    <LogoHowhow />
    <!-- User avatar -->
    <v-hover v-slot="{ isHovering, props }">
      <v-card flat class="d-flex align-center justify-center flex-wrap text-center ma-2" height="70" v-bind="props"
        :elevation="isHovering ? 8 : 4" rounded="t-xl" color="rgba(1,137,255,0.5)" variant="flat">
        <v-layout>
          <v-list>
            <v-list-item prepend-avatar="https://randomuser.me/api/portraits/women/85.jpg" title="Sandra Adams"
              :subtitle="`${usuario.roles.toString()}`"></v-list-item>
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
          <v-tab v-for="([title, icon, options], i) in menu" :key="i" :value="options" >
            <v-list-item :title="title" :prepend-icon="icon" class="align-menu">
            </v-list-item>
          </v-tab>
        </v-tabs>
      </v-list>
    </v-card>
    <!-- List Campanhas Influencer -->
    <div v-if="usuario.roles === 'influencer'">
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
    <div v-else-if="usuario.roles === 'marca'">
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
    <div v-else-if="usuario.roles === 'agencia'">
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

  <v-app-bar floating>
    <v-layout :elevation="0" class="overflow-visible" style="height: 60px;" floating>
      <v-bottom-navigation v-model="value" :bg-color="color" mode="shift">
        <v-btn density="compact" rounded="circle" @click="drawer = !drawer">
          <v-icon>mdi-menu</v-icon>
          <span>Menu</span>
        </v-btn>

        <v-spacer></v-spacer>

        <DashboardTopbar />

      </v-bottom-navigation>
    </v-layout>
  </v-app-bar>

<!-- Dashboard tab main-->
  <v-main>
    <v-app>
      <v-container class="py-8 px-6" fluid>
        <v-window v-model="tab">
          <v-window-item value="op1">
            <p>Dashboard</p>
          </v-window-item>
          <v-window-item value="op2">
            <p>Profile</p>
          </v-window-item>
          <v-window-item value="op3">
            <p>Wallet</p>
          </v-window-item>
          <v-window-item value="op4">
            <p>Analytics</p>
          </v-window-item>
          <!-- Todas as Campanhas Influenciador -op05 -->
          <AllCampaignsInfluencer />
          <!-- Campanhas do Influenciador -op06 -->
          <MyCampaigns />
          <!-- Criação de Campanhas da Marca -op07 -->
          <CreateCampaigns />
          <!-- Todas as Campanhas Marca -op08 -->
          <AllCampaignsMarca @open-edit="openEdit"/>
          <!-- Editar campanhas Marca -edit-campanha -->
          <MyCampaignsMarca teste="teste" />
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
</script>

<script>

export default {
  data: () => ({
    //variáveis de controle
    drawer: null,
    theme: null,
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
    value: 0,
    //Recebe o Id da campanha selecionada
    idCampanha: null,
    //Retorno da Rules da db
    usuario:{
      roles: "marca"
    },

  }),
  
  methods:{
    //Método Abrir tab de edição Campanhas pela marca e trazer os dados
    openEdit(data) {
      this.tab = "my-campanha-marca";
      this.idCampanha = data;
      console.log(this.idCampanha)
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
    MyCampaignsMarca
  },
}
</script>
<style>
.align-menu {
  display: flex !important;
  left: -17px !important;
  margin: 5px !important;
}
.align-campanha{
  display: flex !important;
  left: 10px !important;
  margin: 5px !important;
}
.align-submenu {
  display: flex !important;
  left: -70px !important;
  margin: 5px !important;
}
</style>