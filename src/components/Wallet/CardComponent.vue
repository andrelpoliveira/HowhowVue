<template>
  <br>
  <br>
  <br>
  <v-card color="#eff3f8" class="rounded-lg" flat>
    <v-row>
      <v-col cols="12" sm="12">
        <br>
        <v-card color="#78b3d5" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-toolbar flat color="transparent">
              <v-toolbar-title class="white--text mt-n2">Seus Cartões</v-toolbar-title>
            </v-toolbar>
            <v-card
              color="#242426"
              class="rounded-lg mx-2 pa-1 mt-n3 gradient flip"
              flat>
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

      <v-col cols="12" sm="12">
      <br>
        <v-card color="green" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card color="green" class="rounded-lg mx-auto" flat>
                <v-card class="mx-auto" max-width="368">
                  <v-card-title>Chat</v-card-title>
                  <v-list-item
                    prepend-avatar="https://cdn.vuetifyjs.com/images/lists/1.jpg"
                    title="Brunch this weekend?">
                    <template v-slot:subtitle>
                      <span class="font-weight-bold">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?
                    </template>
                  </v-list-item>
                  <v-divider inset></v-divider>
                  <v-list-item 
                    prepend-avatar="https://cdn.vuetifyjs.com/images/lists/2.jpg">
                    <template v-slot:title>
                      Summer BBQ <span class="text-grey-lighten-1">4</span>
                    </template>
                    <template v-slot:subtitle>
                      <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
                    </template>
                  </v-list-item>
                  <v-divider inset></v-divider>
                  <v-list-item 
                    prepend-avatar="https://cdn.vuetifyjs.com/images/lists/3.jpg">
                    <template v-slot:title>
                      Investiment <span class="text-grey-lighten-1">4</span>
                    </template>
                    <template v-slot:subtitle>
                      <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
                    </template>
                  </v-list-item>
                  <v-divider inset></v-divider>
                  <v-list-item 
                    prepend-avatar="https://cdn.vuetifyjs.com/images/lists/4.jpg">
                    <template v-slot:title>
                      Money <span class="text-grey-lighten-1">4</span>
                    </template>
                    <template v-slot:subtitle>
                      <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
                    </template>
                  </v-list-item>
                  <br>
                </v-card>
              </v-card>
          </v-card>
        </v-card>
      </v-col>
     
      <v-col cols="12" sm="4">
      <br>

        <v-card color="red" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            
          </v-card>
        </v-card>
        <br>
      </v-col>

    </v-row>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    chats: [
      {
        img: "https://cdn.vuetifyjs.com/images/lists/2.jpg",
        subtitle: "Allright then, see you later !",
        title: "Esther Howard",
        date: "12/06/03",
      },
      {
        img: "https://cdn.vuetifyjs.com/images/lists/3.jpg",
        subtitle: "Allright then, see you later ! ",
        title: "Floyd Miles",
        date: "12/06/03",
      },
      {
        img: "https://cdn.vuetifyjs.com/images/lists/4.jpg",
        subtitle: "Allright then, see you later ! ",
        title: "Brooklyn Simmons",
        date: "12/06/03",
      },
    ],
  }),
};
</script>
<style>
.gradient {
  background: rgba(120, 178, 212, 0.911);
  background: radial-gradient(
    circle,
    rgba(120, 178, 212, 0.911) 0%,
    rgb(250, 250, 250) 100%
  );
}
.flip {
  
  transition: all 1.8s ease;
}

.flip:hover {
  transform: rotateY(360deg);
}
</style>