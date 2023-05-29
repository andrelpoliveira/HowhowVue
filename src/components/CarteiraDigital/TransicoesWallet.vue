<template>
  <br><br><br>
  <!-- Card recebimentos-->
  <!-- Card fundo principal-->
  <v-card color="#eff3f8" class="rounded-lg" flat>
    <v-row>
      <v-col cols="12" sm="4">
        <br>
        <!-- Card Saldo disponivel em conta-->
        <v-card color="#78b3d5" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card-item title="Saldo Total">
              <template v-slot:subtitle> Saldo disponivel em conta </template>
            </v-card-item>
            <v-card-text class="py-0">
              <v-row align="center" no-gutters>
                <v-col class="text-h5" cols="6">R$9500,00</v-col>
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
                  <v-list-item v-for="item in contas" :key="item.day" :title="item.day" :append-icon="item.icon" :subtitle="item.temp"></v-list-item>
                </v-list>
              </div>
            </v-expand-transition>
            <v-divider></v-divider>
            <v-card-actions>
              <v-btn append-icon="mdi-arrow-down" @click="relatorioContas = !relatorioContas">
                {{ !relatorioContas ? 'Mostrar dados da conta vinculada' : 'Ocultar conta vinculada' }}
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-card>
        <br>
      </v-col>

      <!-- Card  Valores recebidos por Campanha-->
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
                <v-col class="text-h5" cols="6"> R$9500,00</v-col>
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
                  <v-list-item v-for="item in entrada" :key="item.day" :title="item.day" :append-icon="item.icon" :subtitle="item.temp"></v-list-item>
                </v-list>
              </div>
            </v-expand-transition>
              <v-divider></v-divider>
            <v-card-actions>
              <v-btn  append-icon="mdi-arrow-down" @click="relatorioEntrada = !relatorioEntrada">
                 {{ !relatorioEntrada ? 'Relatório de entradas' : 'Ocultar relatório' }}
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-card>
        <br>
      </v-col>
     
      <!-- Card Valores de saida-->
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
                <v-col class="text-h5" cols="6"> R$1400,00</v-col>
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
                  <v-list-item v-for="item in saida" :key="item.day" :title="item.day" :append-icon="item.icon" :subtitle="item.temp"></v-list-item>
                </v-list>
              </div>
            </v-expand-transition>
              <v-divider></v-divider>
            <v-card-actions>
              <v-btn append-icon="mdi-arrow-down" @click="relatorioSaida = !relatorioSaida">
                {{ !relatorioSaida ? 'Relatório de saidas' : 'Ocultar relatório' }}
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-card>
        <br>
      </v-col>
    </v-row>
  </v-card><br>
  
  <v-card class="mx-auto">
    <v-img :src="require('@/assets/images/carteira/transferlogo.svg')" height="60px" cover></v-img>
    <v-card-actions>
      <v-text color="orange-lighten-2" variant="text">
        Transferencia entre contas
      </v-text>
      <v-spacer></v-spacer>
      <v-btn :icon="show ? 'mdi-chevron-up' : 'mdi-chevron-down'"  @click="show = !show"></v-btn>
    </v-card-actions>
    <v-expand-transition>
      <div v-show="show">
        <v-divider></v-divider><br>

        <v-card-text>
          <v-card class="rounded-lg" flat>
            <v-row>
              <v-sheet width="600" class="mx-auto" align="center">
                  <v-col cols="8" sm="12">
                    <v-card-title>Preencha os dados da conta</v-card-title>
                  </v-col>
                  <v-col cols="8" sm="12">
                     <h4>Confira as informações antes de continuar,pois essa transferência não poderá ser cancelada.</h4>
                  </v-col>

                <v-form ref="form">
                  <br>
                  <v-col cols="8" sm="12">
                    <v-text-field
                      v-model="BancoInstituicao"
                      :rules="BancoInstituicaoRules"
                      label="Banco ou Instituição"
                      required
                    ></v-text-field>
                  </v-col>

                  <v-col cols="8" sm="12">
                    <v-text-field
                      v-model="Agência"
                      :rules="AgênciaRules"
                      label="Agência"
                      required
                    ></v-text-field>
                  </v-col>

                  <v-col cols="8" sm="12">
                     <v-text-field
                      v-model="ContaCorrente"
                      :rules="ContaCorrenteRules"
                      label="Número da conta"
                      required
                    ></v-text-field>
                  </v-col>

                  <v-col cols="8" sm="12">
                    <v-select
                      v-model="TipoConta"
                      :items="TipoContaitems"
                      :rules="[v => !!v || 'O item é obrigatório']"
                      label="Tipo da Conta"
                      required
                    ></v-select>
                  </v-col>

                  <v-col cols="8" sm="12">
                    <v-text-field
                      v-model="Titular"
                      :rules="TitularRules"
                      label="Nome completo do titular"
                      required
                    ></v-text-field>
                  </v-col>

                  <v-col cols="8" sm="12">
                    <v-checkbox
                      v-model="checkbox"
                      :rules="[v => !!v || 'Você deve confirmar os dados para continuar!']"
                      label="Você confirma que todos os dados estão corretos?"
                      required
                    ></v-checkbox>
                  </v-col>

                  <div class="d-flex flex-column">
                    <v-col cols="8" sm="12">
                      <v-btn color="success" class="mt-1" block @click="validate">
                        Confirmar Tranferência
                      </v-btn>
                    </v-col>

                    <v-col cols="8" sm="12">
                      <v-btn color="error" class="mt-4" block @click="reset">
                        Apagar dados
                      </v-btn>
                    </v-col>
                  </div>
                </v-form>
              </v-sheet>
            </v-row>
          </v-card>
        </v-card-text>
      </div>
    </v-expand-transition>
  </v-card><br>

  <v-card class="mx-auto">
    <v-img :src="require('@/assets/images/carteira/logopix.svg')" height="60px" cover></v-img>
    <v-card-actions>
      <v-text color="orange-lighten-2" variant="text">
        Transferencia por PIX
      </v-text>
      <v-spacer></v-spacer>
      <v-btn :icon="show2 ? 'mdi-chevron-up' : 'mdi-chevron-down'"  @click="show2 = !show2"></v-btn>
    </v-card-actions>
    <v-expand-transition>
      <div v-show="show2">
        <v-divider></v-divider>

        <v-card-text>
          <v-card class="rounded-lg" flat>
            <v-row>
              <v-sheet width="600" class="mx-auto" align="center">
                  <v-col cols="8" sm="12">
                    <v-card-title>Preencha os dados do pix</v-card-title>
                  </v-col>
                  <v-col cols="8" sm="12">
                     <h4>Confira as informações antes de continuar,pois essa transferência não poderá ser cancelada.</h4>
                  </v-col>

                <v-form ref="form">
                  <br>
                  <v-col cols="8" sm="12">
                    <v-text-field
                      v-model="Titular"
                      :rules="TitularRules"
                      label="Nome completo do titular"
                      required
                    ></v-text-field>
                  </v-col>

                  <v-col cols="8" sm="12">
                     <v-text-field
                      v-model="ContaCorrente"
                      :rules="ContaCorrenteRules"
                      label="Chave PIX"
                      required
                    ></v-text-field>
                  </v-col>

                  <v-col cols="8" sm="12">
                    <v-checkbox
                      v-model="checkbox"
                      :rules="[v => !!v || 'Você deve confirmar os dados para continuar!']"
                      label="Você confirma que todos os dados estão corretos?"
                      required
                    ></v-checkbox>
                  </v-col>

                  <div class="d-flex flex-column">
                    <v-col cols="8" sm="12">
                      <v-btn color="success" class="mt-1" block @click="validate">
                        Confirmar Tranferência
                      </v-btn>
                    </v-col>

                    <v-col cols="8" sm="12">
                      <v-btn color="error" class="mt-4" block @click="reset">
                        Apagar dados
                      </v-btn>
                    </v-col>
                  </div>
                </v-form>
              </v-sheet>
            </v-row>
          </v-card>
        </v-card-text>
      </div>
    </v-expand-transition>
  </v-card>

</template>

<script>
export default {
    data: () => ({

      /* script clique mostrar relatorio entrada*/
      relatorioEntrada: false,
      time: 0,
      entrada: [
        { day: 'Univeral Studio', icon: 'mdi-currency-usd', temp: 'R$ 1.500,00' },
        { day: 'Zé Delivery', icon: 'mdi-currency-usd', temp: 'R$ 3.500,00' },
        { day: 'Epic Games', icon: 'mdi-currency-usd', temp: 'R$ 4.500,00' },
      ],

      /* script clique mostrar relatorio saida*/
      relatorioSaida: false,
      saida: [
        { day: 'Segunda-Feira', icon: 'mdi-currency-usd', temp: 'R$ 500,00' },
        { day: 'Terça-Feira', icon: 'mdi-currency-usd', temp: 'R$ 500,00' },
        { day: 'Quarta-Feira', icon: 'mdi-currency-usd', temp: 'R$ 400,00' },
      ],

      /* script clique mostrar relatorio contas cadastradas */
      relatorioContas: false,
      contas: [
        { day: 'Alcides Sampaio'},
        { day: 'Cc:', temp: ' 000000.00', icon: 'mdi-bank'},
        { day: 'Ag:', temp: ' 0000.00', icon: 'mdi-bank'},
      ],

      valid: true,
      BancoInstituicao: '',
      BancoInstituicaoRules: [
        v => !!v || 'Este campo é obrigatório',
      ],

      Agência: '',
      AgênciaRules: [
        v => !!v || 'A agência é obrigatória',
      ],

      ContaCorrente: '',
      ContaCorrenteRules: [
        v => !!v || 'A conta corrente é obrigatória',
      ],
      
      TipoConta: null,
      TipoContaitems: [
        'Conta corrente',
        'Conta poupança',
        'Conta de pagamento',
      ],

      Titular: '',
      TitularRules: [
        v => !!v || 'O o nome do titulas é obrigatório',
      ],

      checkbox: false,

      show: false,
      show2: false,
      show3: false,

    }),

    methods: {
      async validate () {
        const { valid } = await this.$refs.form.validate()

        if (valid) alert('O formulário é válido')
      },
      reset () {
        this.$refs.form.reset()
      },
     
    },
  }
</script>
<style></style>