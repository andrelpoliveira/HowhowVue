<template>
    <v-app id="inspire">
    <v-navigation-drawer v-model="drawer">
      <!--  -->
    </v-navigation-drawer>

    <v-app-bar>
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>

      <v-toolbar-title>Application</v-toolbar-title>
    </v-app-bar>

    <v-main>
      <!--  -->
    </v-main>
  </v-app>
</template>

<script>
  export default{
    data: () => ({ drawer: null}),
  }

</script>

<style>
.border{
  margin: 0px 8px;
  background: #674ea7;
  border-radius: none;
  text-decoration: none;
  width: 500px;
  height: auto;
}
.v-list-item-group .v-list-item--active{
  color: white !important;
}
.v-list-item__content{
  padding: 20px 0 !important;
}
.image{
  border: 1px solid white;
}
</style>