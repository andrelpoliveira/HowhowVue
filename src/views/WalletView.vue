<template>
    <v-app
      id="inspire"
      :style="{ background: $vuetify.theme.themes.dark.background }"
    >
      <v-container flex>
        <v-row>
          <v-col cols="12" sm="8">
            <v-row>
              <v-col cols="12" sm="12">
                <OverviewComponent />
              </v-col>
              <v-col cols="12" sm="12">
                <MoneyComponent />
              </v-col>
              <v-col cols="12" sm="12">
                <PaymentComponent />
              </v-col>
              <v-col cols="12" sm="12">
                <DataTable />
              </v-col>
            </v-row>
          </v-col>
          <v-col cols="12" sm="4">
            <CardComponent />
          </v-col>
        </v-row>
      </v-container>
    </v-app>
  </template>
  
  <script>
  // @ is an alias to /src
  import OverviewComponent from '../components/Wallet/OverviewComponent.vue';
  import MoneyComponent  from '../components/Wallet/MoneyComponent.vue';
  import PaymentComponent from '../components/Wallet/PaymentComponent.vue';
  import CardComponent from '../components/Wallet/CardComponent.vue';
  import DataTable from '../components/Wallet/DataTable.vue';

  export default {
    data: () => ({}),
    components: {
      OverviewComponent,
      MoneyComponent,
      PaymentComponent,
      CardComponent,
      DataTable,
    },
  };
  </script>
  <style>
  .v-btn.withoutupercase {
    text-transform: none !important;
  }
  .v-btn:not(.v-btn--round).v-size--small {
    min-width: 30px !important;
    padding: 0 5px !important;
  }
  </style>