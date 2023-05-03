<template>
  <v-app-bar color="rgba(0,0,0,0)" flat class="mt-2">
    <div>
      <h4 class="white--text mt-n3">Olá seja muito bem vindo a sua carterira HowHow</h4>
      <br />
      <p class="grey--text caption mt-n5">Vamos gerenciar sua carteira agora!</p>
    </div>
    <v-text-field
      label="Search anything here"
      filled
      prepend-inner-icon="mdi-magnify"
      dense
      solo
      flat
      background-color="#1D1C21"
      dark
      class="ml-5"
    ></v-text-field>

    <v-spacer></v-spacer>

    <v-btn color="#878A94" class="mt-n8" icon>
      <v-icon>mdi-email</v-icon>
    </v-btn>

    <v-badge bordered overlap color="red" content="2" class="ml-3 mt-n8" dark>
      <v-icon color="#878A94" icon>mdi-bell</v-icon>
    </v-badge>

    <v-avatar size="30" class="ml-3 mt-n8">
      <v-img src="https://cdn.vuetifyjs.com/images/lists/2.jpg"></v-img>
    </v-avatar>
    <div>
      <p class="white--text mt-n3 ml-2 caption">John Leider</p><br>
      <br>
      <p class="grey--text mt-n10 ml-2 caption">São Paulo, Brasil</p>
    </div>

    <v-btn x-small color="#878A94" class="mt-n8 ml-2" icon>
      <v-icon>mdi-arrow-down</v-icon>
    </v-btn>
  </v-app-bar>
</template>

<script>
export default {
  data: () => ({}),
};
</script>
<style></style>
