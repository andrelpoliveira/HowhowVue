<template>
  <v-card
    color="white">
    <!-- Inicio configurações Navbar -->
    <!-- logo howhow Navbar -->
    <v-app-bar color="white">
      <v-img :width=" 200 " height="50" aspect-ratio="1/1" :src="require('@/assets/logo-degrade.svg')"/>

      <!-- Botão/logo wallet Navbar -->
      <div class="text-center">
        <v-menu transition="fab-transition">
          <template v-slot:activator="{ props }">
            <v-btn dark color="blue" v-bind="props">
              <v-img class="mx-auto" height="60" max-width="100" :width=" 140 " aspect-ratio="16/9" :src="require('@/assets/images/carteira/walletlogo.svg')"/>     
            </v-btn>
          </template>
          <br>
          
          <!-- Botões Navbar -->
          <v-row justify="space-around">

            <!-- Botão Perfil Navbar -->
            <v-col cols="auto">
              <v-dialog transition="dialog-bottom-transition" width="auto">
                <template v-slot:activator="{ props }">
                  <v-btn prepend-icon="mdi-account-circle-outline" color="#78b3d5" v-bind="props">Perfil</v-btn>
                </template>
                <template v-slot:default="{ isActive }">
                  <v-card>
                    <v-toolbar color="#78b3d5" title="Seu perfil"></v-toolbar>

                    <v-card-text>
                      <ProfileUserWallet/><!-- Caminho de rota para componente-->
                    </v-card-text>

                    <v-card-actions class="justify-end">
                      <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                    </v-card-actions>
                  </v-card>
                </template>
              </v-dialog>
            </v-col>

            <!-- Botão Recados Navbar -->
            <v-col cols="auto">
              <v-dialog transition="dialog-top-transition" width="auto">
                <template v-slot:activator="{ props }">
                  <v-btn prepend-icon="mdi-bell-circle-outline" color="#78b3d5" v-bind="props">Recados</v-btn>
                </template>
                <template v-slot:default="{ isActive }">
                  <v-card>
                    <v-toolbar color="#78b3d5" title="Seus recados"></v-toolbar>

                    <ProfileUserWallet/> <!-- Caminho de rota para componente-->

                    <v-card-actions class="justify-end">
                      <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                    </v-card-actions>
                  </v-card>
                </template>
              </v-dialog>
            </v-col>

            <!-- Botão Segurança Navbar -->
            <v-col cols="auto">
              <v-dialog transition="dialog-top-transition" width="auto">
                <template v-slot:activator="{ props }">
                  <v-btn prepend-icon="mdi-shield-account-outline" color="#78b3d5" v-bind="props">Segurança</v-btn>
                </template>
                <template v-slot:default="{ isActive }">
                  <v-card>
                    <v-toolbar color="#78b3d5" title="Segurança"></v-toolbar>

                    <ProfileUserWallet/> <!-- Caminho de rota para componente-->
                    
                    <v-card-actions class="justify-end">
                      <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                    </v-card-actions>
                  </v-card>
                </template>
              </v-dialog>
            </v-col>
          </v-row>
        </v-menu>
      </div>
    </v-app-bar>
    <!-- Fim configurações Navbar -->

    <br>
    <br>
    <br>
    <br>

    <!-- Inicio configurações Card wallet howhow + Botoes de navegação de componentes -->
    <v-layout >

      <!-- incio Card wallet -->
      <v-main style="min-height: 980px;">
        <v-container >
          <v-sheet class="mx-auto " density="comfortable" color="transparent" max-width="850">
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
            <!-- Fim Card wallet -->
          
            <!-- Inicio Botões de navegação de componentes -->
            <v-card-text>
              <v-card color="white">

                <!-- Inicio Botões de navegação linha superior -->
                <v-layout class="overflow-visible" style="height: 56px;" >
                  <v-bottom-navigation v-model="botoesSuperiores" color="teal" grow >

                    <!-- Botão de navegação Superior Nº1 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-bank-transfer" color="#78b3d5" v-bind="props">Transferencias</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Transferencias"></v-toolbar>

                          <v-card-text>
                            <TransicoesWallet/><!-- Caminho de rota para componente-->
                          </v-card-text>
                          
                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>
                        
                    <!-- Botão de navegação Superior Nº2 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-bank-transfer-in" color="#78b3d5" v-bind="props">Recebimentos</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Controle de Recebimentos"></v-toolbar>

                          <ProfileUserWallet/><!-- Caminho de rota para componente-->

                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>
                        
                    <!-- Botão de navegação Superior Nº3 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-bank-transfer-out" color="#78b3d5" v-bind="props">Saidas</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Controle de Saidas"></v-toolbar>

                          <ProfileUserWallet/><!-- Caminho de rota para componente-->

                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>

                    <!-- Botão de navegação Superior Nº4 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-notebook-edit-outline" color="#78b3d5" v-bind="props">Agenda</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Controle de Agendamentos"></v-toolbar>

                          <ProfileUserWallet/><!-- Caminho de rota para componente-->

                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>
                  </v-bottom-navigation>
                </v-layout>
                <!-- Fim Botões de navegação linha superior -->

                <!-- Inicio Botões de navegação linha inferior -->
                <v-layout style="height: 56px;" min-width="56">
                  <v-bottom-navigation v-model="botoesInferiores" color="teal" grow >
                        
                    <!-- Botão de navegação Inferior Nº1 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-barcode" color="#78b3d5" v-bind="props">Pagamentos</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Pagamentos"></v-toolbar>

                          <ProfileUserWallet/><!-- Caminho de rota para componente-->

                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>

                    <!-- Botão de navegação Inferior Nº2 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-chart-areaspline" color="#78b3d5" v-bind="props">Investimentos</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Seus Investimentos"></v-toolbar>
                          <v-card-text>
                          <ProfileUserWallet/><!-- Caminho de rota para componente-->
                          </v-card-text>
                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>

                    <!-- Botão de navegação Inferior Nº3 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-trophy-variant-outline" color="#78b3d5" v-bind="props">Top Rentaveis</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Top Rentabilidade"></v-toolbar>

                          <ProfileUserWallet/><!-- Caminho de rota para componente-->

                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>

                    <!-- Botão de navegação Inferior Nº4 -->
                    <v-dialog transition="dialog-bottom-transition" width="auto">
                      <template v-slot:activator="{ props }">
                        <v-btn prepend-icon="mdi-account-circle-outline" color="#78b3d5" v-bind="props">Mais</v-btn>
                      </template>
                      <template v-slot:default="{ isActive }">
                        <v-card>
                          <v-toolbar color="#78b3d5" title="Diversos"></v-toolbar>

                          <ProfileUserWallet/><!-- Caminho de rota para componente-->

                          <v-card-actions class="justify-end">
                            <v-btn variant="text" @click="isActive.value = false">fechar</v-btn>
                          </v-card-actions>
                        </v-card>
                      </template>
                    </v-dialog>
                  </v-bottom-navigation>
                </v-layout>
              </v-card>
              <br>

              <!-- Inicio configurações Carrossel-->
              <v-card>
                <v-carousel hide-delimiters style="height: 400px;">
                  <v-carousel-item 
                    v-for="(item,i) in items" :key="i" :src="item.src" cover></v-carousel-item>
                </v-carousel>
              </v-card>
              <!-- Fim configurações Carrossel -->

            </v-card-text>
          </v-sheet>
        </v-container>
      </v-main>
    </v-layout>
    <!-- Fim configurações Card wallet howhow Principal -->
  </v-card>
</template>

<script>
//Import Components
import ProfileUserWallet from '../CarteiraDigital/ProfileUserWallet.vue';
import TransicoesWallet from '../CarteiraDigital/TransicoesWallet.vue'

  export default {
    data: () => ({

      //script valores carrossel
      items: [
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg',
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg',
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/bird.jpg',
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg',
          },
        ],

      //script valor botões de navegação de componentes linha superior
      botoesSuperiores: null,

      //script valor botões de navegação de componentes linha Inferior
      botoesInferiores: null,

    }),

    //Components
    components: {
      ProfileUserWallet,
      TransicoesWallet,
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
