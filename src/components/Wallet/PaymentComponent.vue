<template>
  <!-- Card cartões de credito-->
  <v-card color="#eff3f8" class="rounded-lg" flat>
    <v-row>
      <v-col cols="12" sm="6">
      <br>
       <!-- Card secundario-->
        <v-card color="#e5eaff" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368" color="white">
            <v-toolbar flat color="white" class="mt-n5">
              <v-toolbar-title class="white--text">Todos os pagamentos</v-toolbar-title>
              <v-chip color="green" text-color="white" class="ml-2">2</v-chip>
            </v-toolbar>
            <v-row>

              <!-- Card cartão 1 esquerda-->
              <v-col cols="12" sm="6">
                <v-card color="#e5eaff" class="rounded-lg mx-2 pa-2 mt-n3" flat>
                  <span class="caption grey--text mt-n6">Cartão de crédito</span><br />
                  <h6 class="white--text mt-4">Balance</h6>
                  <h4 class="white--text">R$767.50</h4>
                  <v-card-text class="pt-0">
                    <v-icon color="grey" class="mr-2">mdi-credit-card</v-icon>
                    <span class="text-caption grey--text font-weight-light">**6774</span>
                  </v-card-text>
                </v-card>
                <br>
              </v-col>

              <!-- Card cartão 2 direita-->
              <v-col cols="12" sm="6">
                <v-card color="#e5eaff" class="rounded-lg mx-2 pa-2 mt-n3" flat>
                  <span class="caption grey--text mt-n6">Cartão de crédito</span><br />
                  <h6 class="white--text mt-4">Balance</h6>
                  <h4 class="white--text">R$328.85</h4>
                  <v-card-text class="pt-0">
                    <v-icon color="grey" class="mr-2">mdi-credit-card</v-icon>
                    <span class="text-caption grey--text font-weight-light">**7952</span>
                  </v-card-text>
                </v-card>
              </v-col>
            </v-row>
          </v-card>
        </v-card>
        <br>
      </v-col>

      <!-- Card Pagamentos recentes-->
      <v-col cols="12" sm="6">
        <br>
        <v-card color="green" class="rounded-lg mx-auto" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card-title>
              Pagamentos recentes
            </v-card-title>

            <!-- Avatar 1 Pagamentos recentes-->
            <v-list-item prepend-avatar="https://cdn.vuetifyjs.com/images/lists/1.jpg" title="Brunch this weekend?">
              <template v-slot:subtitle>
                <span class="font-weight-bold">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?
              </template>
            </v-list-item>
            <v-divider inset></v-divider>

            <!-- Avatar 1 Pagamentos recentes-->
            <v-list-item prepend-avatar="https://cdn.vuetifyjs.com/images/lists/2.jpg">
              <template v-slot:title>Summer BBQ <span class="text-grey-lighten-1">4</span></template>
              <template v-slot:subtitle>
                <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
              </template>
            </v-list-item>
            <br>
          </v-card>
        </v-card>
      </v-col>

      <!-- Card padrao para uso secundario-->
      <!-- <v-col cols="12" sm="6">
          <br>
          <v-card color="green" class="rounded-lg mx-2" flat>
            <v-card class="mx-auto" max-width="368">
            </v-card>
          </v-card>
      </v-col>-->

    </v-row>
  </v-card>
</template>

<script>
export default {
  data: () => ({}),
};
</script>
<style></style>