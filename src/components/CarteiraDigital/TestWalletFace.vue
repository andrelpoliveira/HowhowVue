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
      <div class="text-center">
        <v-menu transition="fab-transition">
          <template v-slot:activator="{ props }">
            <v-btn dark color="blue" v-bind="props">
              <v-img
                class="mx-auto"
                height="60"
                max-width="100"
                :width=" 140 "
                aspect-ratio="16/9"
                :src="require('@/assets/images/carteira/walletlogo.svg')"
              />     
            </v-btn>
          </template>
          <br>
          
          <v-row justify="space-around">
            <v-col cols="auto">
              <v-dialog
                transition="dialog-bottom-transition"
                width="auto"
              >
                <template v-slot:activator="{ props }">
                  <v-btn
                    prepend-icon="mdi-account-circle-outline"
                    color="#78b3d5"
                    v-bind="props"
                  >Perfil</v-btn>
                </template>
                <template v-slot:default="{ isActive }">
                  <v-card>
                    <v-toolbar
                      color="#78b3d5"
                      title="Seu perfil"
                    ></v-toolbar>
                    <ProfileUserWallet/>
                    <v-card-actions class="justify-end">
                      <v-btn
                        variant="text"
                        @click="isActive.value = false"
                      >fechar</v-btn>
                    </v-card-actions>
                  </v-card>
                </template>
              </v-dialog>
            </v-col>

            <v-col cols="auto">
              <v-dialog
                transition="dialog-top-transition"
                width="auto"
              >
                <template v-slot:activator="{ props }">
                  <v-btn
                    prepend-icon="mdi-bell-circle-outline"
                    color="#78b3d5"
                    v-bind="props"
                  >Recados</v-btn>
                </template>
                <template v-slot:default="{ isActive }">
                  <v-card>
                    <v-toolbar
                      color="#78b3d5"
                      title="Seus recados"
                    ></v-toolbar>
                    <v-card-text>
                      <div class="text-h2 pa-12">test</div>
                    </v-card-text>
                    <v-card-actions class="justify-end">
                      <v-btn
                        variant="text"
                        @click="isActive.value = false"
                      >fechar</v-btn>
                    </v-card-actions>
                  </v-card>
                </template>
              </v-dialog>
            </v-col>

            <v-col cols="auto">
              <v-dialog
                transition="dialog-top-transition"
                width="auto"
              >
                <template v-slot:activator="{ props }">
                  <v-btn
                    prepend-icon="mdi-shield-account-outline"
                    color="#78b3d5"
                    v-bind="props"
                  >Segurança</v-btn>
                </template>
                <template v-slot:default="{ isActive }">
                  <v-card>
                    <v-toolbar
                      color="#78b3d5"
                      title="Segurança"
                    ></v-toolbar>
                    <v-card-text>
                      <div class="text-h2 pa-12">test</div>
                    </v-card-text>
                    <v-card-actions class="justify-end">
                      <v-btn
                        variant="text"
                        @click="isActive.value = false"
                      >fechar</v-btn>
                    </v-card-actions>
                  </v-card>
                </template>
              </v-dialog>
            </v-col>

          </v-row>
        </v-menu>
      </div>
    </v-app-bar>
    <br>
    <br>
    <br>
    <br>
    <v-layout>
      <v-main style="min-height: 980px;">
        <v-container>
        <v-sheet class="mx-auto" density="comfortable" color="transparent" max-width="580">
          <v-card color="#242426" class="rounded-lg mx-2 pa-1 mt-n3 gradient flip" flat>
            <v-toolbar flat color="transparent">
              <v-toolbar-title class="grey--text caption">Carteira Howhow</v-toolbar-title>
            </v-toolbar>
            <v-row justify="space-around">
              <v-avatar size="100">
                <v-img src="https://cdn.vuetifyjs.com/images/john.png" alt="John"></v-img>
              </v-avatar>
            </v-row>
            <span class="grey--text mt-3 ml-4 caption">Saldo</span>
            <h2 class="white--text ml-4">R$4.799,85</h2>
            <v-card-text class="pt-0 mt-4">
              <span class="grey--text mt-3 ml-1 caption">Alcides Sampaio</span>
            </v-card-text>
          </v-card> 
         
          <v-card-text>
            <v-card color="white">
              <v-tabs
                v-model="tab"
                bg-color="transparent"
                align-tabs="center"
              >
                <v-tab value="test1" color="blue" prepend-icon="mdi-wallet-outline" stacked>Carteira</v-tab>
                <v-tab value="test2" color="blue" prepend-icon="mdi-bank-transfer-in" stacked>Entradas</v-tab>
                <v-tab value="test3" color="blue" prepend-icon="mdi-bank-transfer-out" stacked>Saidas</v-tab>
                <v-tab value="test4" color="blue" prepend-icon="mdi-bank-transfer" stacked>Efetuar Transações</v-tab>

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
//Import Components
import ProfileUserWallet from '../CarteiraDigital/ProfileUserWallet.vue';

  export default {
    data: () => ({
      tab: null,
      selectedItem: 0,
      items: [
        { text: 'My Files', icon: 'mdi-folder'},
        { text: 'Shared with me', icon: 'mdi-account-multiple' },
        { text: 'Starred', icon: 'mdi-star' },
        { text: 'Recent', icon: 'mdi-history' },
        { text: 'Offline', icon: 'mdi-check-circle' },
        { text: 'Uploads', icon: 'mdi-upload' },
        { text: 'Backups', icon: 'mdi-cloud-upload' },
      ], 
    }),
    components: {
      ProfileUserWallet
},
  }
</script>
<style>
/* Estilo e animação de cartao howhow */
.gradient {
  background: rgba(120, 178, 212, 0.911);
  background: radial-gradient(
    circle,
    rgba(120, 178, 212, 0.911) 60%,
    rgb(250, 250, 250) 100%
  );
}
.flip { transition: all 2.8s ease; }
.flip:hover {transform: rotateY(360deg);}
</style>
