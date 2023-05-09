<template>
  <br>
  <br>
  <br>
  <!-- Card cartao howhow (giratorio) -->
  <v-card color="#eff3f8" class="rounded-lg" flat>
    <v-row>
      <v-col cols="12" sm="12">
        <br>
        <v-card color="#78b3d5" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-toolbar flat color="transparent">
              <v-toolbar-title class="white--text mt-n2">Seus Cartões</v-toolbar-title>
            </v-toolbar>
            <v-card color="#242426" class="rounded-lg mx-2 pa-1 mt-n3 gradient flip" flat>
              <v-toolbar flat color="transparent">
                <v-toolbar-title class="grey--text caption">
                Card
                </v-toolbar-title>
                <v-spacer>
                  <v-img
                  class="mx-auto"
                  height="80"
                  max-width="200"
                  :width=" 200 "
                  aspect-ratio="16/9"
                  :src="require('@/assets/logo-degrade.svg')" 
                />
                </v-spacer>
              </v-toolbar>
              <span class="grey--text mt-3 ml-4 caption">Saldo</span>
              <h2 class="white--text ml-4">R$4.799,85</h2>
              <v-card-text class="pt-0 mt-4">
                <span class="white--text font-weight-light">**** **** **** 6774</span>
              </v-card-text>
            </v-card>
            <br>
          </v-card>
        </v-card>
        <br>
      </v-col>
      <!-- Card padrao para uso secundario-->
      <!--<v-col cols="12" sm="4">
      <br>
        <v-card color="red" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
          </v-card>
        </v-card>
        <br>
      </v-col> -->
    </v-row>
  </v-card>
</template>

<script>
export default {
  data: () => ({}),
};
</script>

<style>
/* Estilo e animação de cartao howhow */
.gradient {
  background: rgba(120, 178, 212, 0.911);
  background: radial-gradient(
    circle,
    rgba(120, 178, 212, 0.911) 0%,
    rgb(250, 250, 250) 100%
  );
}
.flip { transition: all 1.8s ease; }
.flip:hover {transform: rotateY(360deg);}
</style>