<template>
  <v-layout>
      <v-main style="min-height: 980px;">
        <v-container>
        <v-sheet class="mx-auto" density="comfortable" color="transparent" max-width="580">
          <v-card color="#242426" class="rounded-lg mx-2 pa-1 mt-n3 gradient ">
            <v-toolbar flat color="transparent">
            </v-toolbar>
            <v-row justify="space-around">
              <v-avatar size="300">
                <v-img src="https://cdn.vuetifyjs.com/images/john.png" alt="John"></v-img>
              </v-avatar>
            </v-row>
            <br><br><br>
          </v-card> 
         
          <v-card-text>
            <v-card color="white">
              <v-tabs
                v-model="tab"
                bg-color="transparent"
                align-tabs="center"
              >
                <v-tab value="test1" color="blue" prepend-icon="mdi-wallet-outline" stacked>Dados</v-tab>
                <v-tab value="test2" color="blue" prepend-icon="mdi-bank-transfer-in" stacked>test</v-tab>
                <v-tab value="test3" color="blue" prepend-icon="mdi-bank-transfer-out" stacked>test</v-tab>
                <v-tab value="test4" color="blue" prepend-icon="mdi-bank-transfer" stacked>test</v-tab>

              </v-tabs>

              <v-card-text>
                <v-window v-model="tab">
                  <v-window-item value="test1">
                    test1
                  </v-window-item>

                  <v-window-item value="test2">
                    test2
                  </v-window-item>

                  <v-window-item value="test3">
                    test3
                  </v-window-item>

                  <v-window-item value="test4">
                    test4
                  </v-window-item>

                </v-window>
              </v-card-text>
            </v-card>
          </v-card-text>
          </v-sheet>
        </v-container>
      </v-main>
    </v-layout>
</template>
<script>
//Import Components


  export default {
    data: () => ({
      tab: null,
    }),
    
  }
</script>
