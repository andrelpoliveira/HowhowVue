<template>
  <v-app id="inspire">
    <!-- <v-navigation-drawer v-model="drawer"> -->
      <!--  -->
    <!-- </v-navigation-drawer> -->
    <v-navigation-drawer
        class="bg-deep-gray"
        theme="dark"
        v-model="drawer"
        app
      >
        <v-list-item-content>
          <v-list-item
            nav
            prepend-avatar="https://randomuser.me/api/portraits/men/75.jpg"
            title="Name"
          ></v-list-item>
          <v-list-item-subtitle class="pa-2">
            Ocupation
          </v-list-item-subtitle>
        </v-list-item-content>
        <v-divider></v-divider>
        <v-list color="transparent">
          <v-list-item prepend-icon="mdi-view-dashboard" title="Dashboard"></v-list-item>
          <v-list-item prepend-icon="mdi-account-box" title="Account"></v-list-item>
          <v-list-item prepend-icon="mdi-gavel" title="Admin"></v-list-item>
        </v-list>

        <template v-slot:append>
          <div class="pa-2">
            <v-btn block>
              Logout
            </v-btn>
          </div>
        </template>
      </v-navigation-drawer>

    <v-app-bar class="bg-deep-indigo-lighten-1" theme="dark">
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>

      <v-toolbar-title>Application</v-toolbar-title>
    </v-app-bar>

    <v-main class="bg-deep-grey">
        <v-container fluid>
          <v-row dense>
            <v-col
              v-for="n in 12"
              :key="n"
              cols="4"
            >
              <v-sheet
                color="grey-lighten-2"
                height="96"
              ></v-sheet>
            </v-col>
          </v-row>
        </v-container>
      </v-main>
  </v-app>
</template>

<script>
  export default {
    data: () => ({ drawer: null }),
  }
</script>