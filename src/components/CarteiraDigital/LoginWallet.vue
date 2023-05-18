<template>
  <v-card
  color="black">
    <v-layout>
      <v-main style="min-height: 980px;">
        <v-container>
        <v-sheet class="mx-auto" density="comfortable" color="transparent" max-width="580">
          
          <!-- logo Howhow --> 
          <v-img
            class="mx-auto"
            height="200"
            max-width="400"
            :width=" 240 "
            aspect-ratio="16/9"
            :src="require('@/assets/images/carteira/walletlogo.svg')"
          />
          <v-card-text>
            <v-card color="black">
              <v-tabs
                v-model="tab"
                bg-color="transparent"
                align-tabs="center"
              >
                <v-tab value="Entrar" color="blue">Entrar</v-tab>
                <v-tab value="Registrar" color="blue">Registrar Carteira</v-tab>
              </v-tabs>

              <v-card-text>
                <v-window v-model="tab">
                  <v-window-item value="Entrar">
                    <v-card
                      class="mx-auto"
                      max-width="500"
                      color="black"
                    >
                      <v-card-title class="text-h6 font-weight-regular justify-space-between">
                        <span>{{ login }}</span>
                        
                      </v-card-title>

                      <v-window v-model="step">
                        <v-window-item :value="1">
                          <v-card-text>
                            <v-text-field
                              label="Email"
                              placeholder="john@google.com"
                            ></v-text-field>
                            <span class="text-caption text-grey-darken-1">
                              Este é o e-mail que você registrou para acessar sua carteira HowHow
                            </span>
                          </v-card-text>
                        </v-window-item>

                        <v-window-item :value="2">
                          <v-card-text>
                            <v-text-field
                              label="Senha"
                              type="password"
                            ></v-text-field>
                            <span class="text-caption text-grey-darken-1">
                              Por favor, insira sua senha para acessar a carteira
                            </span>
                          </v-card-text>
                        </v-window-item>

                        
                      </v-window>

                      <v-divider></v-divider>

                      <v-card-actions>
                        <v-btn
                          v-if="step > 1"
                          variant="text"
                          @click="step--"
                        >
                          Voltar
                        </v-btn>
                        <v-spacer></v-spacer>
                        <v-btn
                          v-if="step < 2"
                          color="blue"
                          variant="flat"
                          @click="step++"
                        >
                          Avançar
                        </v-btn>
                      </v-card-actions>
                    </v-card>
                  </v-window-item>

                  <v-window-item value="Registrar">
                    <v-card
                      class="mx-auto"
                      max-width="500"
                      color="black"
                    >
                      <v-card-title class="text-h6 font-weight-regular justify-space-between">
                        <span>{{ registro }}</span>
                      </v-card-title>

                      <v-window v-model="step">
                        <v-window-item :value="1">
                          <v-card-text>
                            <v-text-field
                              label="Email"
                              placeholder="john@google.com"
                            ></v-text-field>
                            <span class="text-caption text-grey-darken-1">
                              Este é o e-mail que você usará para acessar sua Carteira HowHow
                            </span>
                          </v-card-text>
                        </v-window-item>

                        <v-window-item :value="2">
                          <v-card-text>
                            <v-text-field
                              label="Senha"
                              type="password"
                            ></v-text-field>
                            <v-text-field
                              label="Confirme sua senha"
                              type="password"
                            ></v-text-field>
                            <span class="text-caption text-grey-darken-1">
                              Por favor, Crie uma senha para sua conta
                            </span>
                          </v-card-text>
                        </v-window-item>

                        <v-window-item :value="3">
                          <div class="pa-4 text-center">
                            <v-img
                              class="mb-4"
                              contain
                              height="128"
                              :src="require('@/assets/images/carteira/wallethowhow.svg')"
                            ></v-img>
                            <h3 class="text-h6 font-weight-light mb-2">
                              Bem-vindo à Carteira Digital HowHow
                            </h3>
                            <span class="text-caption text-grey">Obrigado por inscrever-se!</span>
                          </div>
                        </v-window-item>
                      </v-window>

                      <v-divider></v-divider>

                      <v-card-actions>
                        <v-btn
                          v-if="step > 1"
                          variant="text"
                          @click="step--"
                        >
                          Voltar
                        </v-btn>
                        <v-spacer></v-spacer>
                        <v-btn
                          v-if="step < 3"
                          color="blue"
                          variant="flat"
                          @click="step++"
                        >
                          Avançar
                        </v-btn>
                      </v-card-actions>
                    </v-card>
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
      step: 1,
    }),

    computed: {
      login() {
        switch (this.step) {
          case 1: return 'Digite seu email para entrar'
          case 2: return 'Digite sua senha'
          default: return ''
        }
      },
      registro () {
        switch (this.step) {
          case 1: return 'Digite seu email para registro '
          case 2: return 'Criar senha'
          default: return 'Conta criada com sucesso'
        }
      },
    },
  }
</script>