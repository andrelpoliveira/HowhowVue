<template>
  <v-card
  color="white">
    <v-app-bar color="white">
     <v-img
        :width=" 200 "
        height="50"
        aspect-ratio="1/1"
        :src="require('@/assets/logo-degrade.svg')"
      />
    </v-app-bar><br>
    <v-layout>
      <v-main style="min-height: 980px;">
        <v-container>
        <v-sheet class="mx-auto" density="comfortable" color="transparent" max-width="580">
          
          <!-- logo Howhow --> 
          <v-img
            class="mx-auto"
            height="80"
            max-width="200"
            :width=" 240 "
            aspect-ratio="16/9"
            :src="require('@/assets/images/carteira/walletlogo.svg')"
          />
          
          <v-card-text>
            <v-card color="white">
              <v-tabs
                v-model="tab"
                bg-color="transparent"
                align-tabs="center"
              >
                <v-tab value="test1" color="blue">test1</v-tab>
                <v-tab value="test2" color="blue">test2</v-tab>
                <v-tab value="test3" color="blue">test3</v-tab>
                <v-tab value="test4" color="blue">test4</v-tab>

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
  </v-card>
</template>
<script>
  export default {
    data: () => ({
      tab: null, 
    }),
  }
</script>