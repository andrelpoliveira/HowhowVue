<template>
  <v-card>
    <v-layout>
      <v-main style="min-height: 980px;">
        <v-container>
          <v-sheet class="mx-auto" density="comfortable" color="transparent" max-width="580">

            <!-- logo Howhow -->
            <v-img class="mx-auto" height="80" max-width="200" :width="240" aspect-ratio="16/9"
              :src="require('@/assets/logo-degrade.svg')" />

            <!-- Tabela seletiva (influenciador, marca e agência) -->
            <div class="registro-tabs">
              <v-tabs v-model="tab" align-tabs="center" bg-color="transparent" density="comfortable">
                <v-tab class="registro-tab" value="one" color="blue">Influenciador </v-tab>
                <v-tab class="registro-tab" value="two" color="blue">Marca </v-tab>
                <v-tab class="registro-tab" value="three" color="blue">Agência </v-tab>
              </v-tabs>
            </div>

            <v-card-text>
              <!-- Model principal tab -->
              <v-window v-model="tab">
                <!-- Tab Influenciador-->
                <InfluenciadoresComponent />
                <!-- Tab Marca-->
                <MarcaComponent />
                <!-- Tab Agência-->
                <AgenciaComponent />
              </v-window>
            </v-card-text>
          </v-sheet>

          <!-- Observações inferiores da pagina sobre termos e política -->
          <v-card-text :style="{
            color: 'black',
            fontSize: '14px',
          }" align="center"> Importante:

            <span class="text-grey" :style="{
              color: 'grey',
              fontSize: '14px',
            }">Ao criar uma conta da Howhow você concorda com os&nbsp;
            </span>

            <a :style="{
              fontSize: '14px',
              color: 'blue'
            }">
              <router-link :to="{name: 'termosdeuso'}">Termos de uso</router-link>
            </a>

            <span :style="{
              color: 'grey',
              fontSize: '14px',
            }">&nbsp;e as&nbsp;
            </span>

            <a :style="{
              fontSize: '14px',
              color: 'blue'
            }">
              <router-link :to="{name: 'politicadeprivacidade'}">Políticas de privacidade</router-link>
            </a>

            <span :style="{
              color: 'grey',
              fontSize: '14px',
            }">*
            </span>
          </v-card-text>

          <!-- Observações inferiores da pagina caso ja tenha um login -->
          <v-card-text align="center">
            <span :style="{
              color: 'grey',
              fontSize: '14px',
            }">Já tem uma conta? &nbsp;
            </span>
            <a :style="{
              fontSize: '14px',
              color: 'blue'
            }" href="#">
              <router-link :to="{name:'login'}">Efetue o Login</router-link>
            </a>
          </v-card-text>

        </v-container>
      </v-main>
    </v-layout>
  </v-card>
</template>
<script>
//Importação dos componentes de registro - Local src/components/Registro
import InfluenciadoresComponent from './InfluenciadoresComponent.vue';
import MarcaComponent from './MarcaComponent.vue';
import AgenciaComponent from './AgenciaComponent.vue';

// script tabs,cards e forms)
export default {
  name: 'RegistroComponent',
  data: () => {
    return {
      // card tabelas ("influenciador,marca,agência")
      tab: null,
      // script botão de validação de dados
      valid: true,
      loading: false,
    }
  },

  components: {
    InfluenciadoresComponent,
    MarcaComponent,
    AgenciaComponent
  },
}
</script>
