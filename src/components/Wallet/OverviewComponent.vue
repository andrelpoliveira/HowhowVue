<template>
  <br>
  <br>
  <br>
  <v-card color="#eff3f8" class="rounded-lg" flat>
    <v-row>
      <v-col cols="12" sm="4">
      <br>
        <v-card color="#78b3d5" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card-item title="Saldo Total">
              <template v-slot:subtitle>
                  Saldo disponivel em conta
              </template>
            </v-card-item>

            <v-card-text class="py-0">
              <v-row align="center" no-gutters>
                <v-col class="text-h5" cols="6">
                  R$9500,00
                </v-col>
                <v-col cols="6" class="text-right">
                  <v-icon color="#78b3d5" icon="mdi-currency-usd " size="60"></v-icon>
                </v-col>
              </v-row>
            </v-card-text>
            <div>
              <v-progress-linear indeterminate color="#78b3d5"></v-progress-linear>
            </div>
            <v-expand-transition>
              <div v-if="relatorioContas">
                <v-list class="bg-transparent">
                  <v-list-item
                    v-for="item in contas"
                    :key="item.day"
                    :title="item.day"
                    :append-icon="item.icon"
                    :subtitle="item.temp"
                  >
                  </v-list-item>
                </v-list>
              </div>
            </v-expand-transition>

              <v-divider></v-divider>
            <v-card-actions>
              <v-btn 
              append-icon="mdi-arrow-down"
              @click="relatorioContas = !relatorioContas">
                {{ !relatorioContas ? 'Mostrar contas vinculadas' : 'Ocultar contas vinculadas' }}
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-card>
        <br>
      </v-col>

      <v-col cols="12" sm="4">
      <br>
        <v-card color="green" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card-item title="Entradas">
              <template v-slot:subtitle>
                <v-icon icon="mdi-currency-usd" size="18" color="#00d47f" class="me-1 pb-1"></v-icon>
                  Valores recebidos por Campanha
              </template>
            </v-card-item>

            <v-card-text class="py-0">
              <v-row align="center" no-gutters>
                <v-col class="text-h5" cols="6">
                  R$9500,00
                </v-col>
                <v-col cols="6" class="text-right">
                  <v-icon color="#00d47f" icon="mdi-cash " size="60"></v-icon>
                </v-col>
              </v-row>
            </v-card-text>
            <div>
              <v-progress-linear indeterminate color="#00d47f"></v-progress-linear>
            </div>

            <v-expand-transition>
              <div v-if="relatorioEntrada">
                <v-list class="bg-transparent">
                  <v-list-item
                    v-for="item in entrada"
                    :key="item.day"
                    :title="item.day"
                    :append-icon="item.icon"
                    :subtitle="item.temp"
                  >
                  </v-list-item>
                </v-list>
              </div>
            </v-expand-transition>
              <v-divider></v-divider>
            <v-card-actions>
              <v-btn 
              append-icon="mdi-arrow-down"
              @click="relatorioEntrada = !relatorioEntrada">
                {{ !relatorioEntrada ? 'Relatório de entradas' : 'Ocultar relatório' }}
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-card>
        <br>
      </v-col>
     
      <v-col cols="12" sm="4">
      <br>

        <v-card color="red" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card-item title="Saidas">
              <template v-slot:subtitle>
                <v-icon icon="mdi-currency-usd" size="18" color="#cf99a7f" class="me-1 pb-1"></v-icon>
                  Valores de saida
              </template>
            </v-card-item>

            <v-card-text class="py-0">
              <v-row align="center" no-gutters>
                <v-col class="text-h5" cols="6">
                  R$1400,00
                </v-col>
                <v-col cols="6" class="text-right">
                  <v-icon color="#f99a7f" icon="mdi-cash " size="60"></v-icon>
                </v-col>
              </v-row>
            </v-card-text>
            <div>
              <v-progress-linear indeterminate color="#f99a7f"></v-progress-linear>
            </div>

            <v-expand-transition>
              <div v-if="relatorioSaida">
                <v-list class="bg-transparent">
                  <v-list-item
                    v-for="item in saida"
                    :key="item.day"
                    :title="item.day"
                    :append-icon="item.icon"
                    :subtitle="item.temp"
                  >
                  </v-list-item>
                </v-list>
              </div>
            </v-expand-transition>
              <v-divider></v-divider>
            <v-card-actions>
              <v-btn
                append-icon="mdi-arrow-down"
                @click="relatorioSaida = !relatorioSaida">
                {{ !relatorioSaida ? 'Relatório de saidas' : 'Ocultar relatório' }}
              </v-btn>
            </v-card-actions>
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
      relatorioEntrada: false,
      time: 0,
      entrada: [
        { day: 'Univeral Studio', icon: 'mdi-currency-usd ', temp: 'R$ 1.500,00' },
        { day: 'Zé Delivery', icon: 'mdi-currency-usd', temp: 'R$ 3.500,00' },
        { day: 'Epic Games', icon: 'mdi-currency-usd', temp: 'R$ 4.500,00' },
      ],
      relatorioSaida: false,
      saida: [
        { day: 'Segunda-Feira', icon: 'mdi-currency-usd', temp: 'R$ 500,00' },
        { day: 'Terça-Feira', icon: 'mdi-currency-usd', temp: 'R$ 500,00' },
        { day: 'Quarta-Feira', icon: 'mdi-currency-usd', temp: 'R$ 400,00' },
      ],
      relatorioContas: false,
      contas: [
        { day: 'Bradesco', icon: 'mdi-bank', temp: 'Cc 000000.00 Ag: 0000.00'},
        { day: 'Itau', icon: 'mdi-bank', temp: 'Cc 000000.00 Ag: 0000.00'},
        { day: 'Xp', icon: 'mdi-bank', temp: 'Cc 000000.00 Ag: 0000.00'},
      ],
    }),
  }
</script>
<style></style>