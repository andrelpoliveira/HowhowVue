<template>
  <v-card >
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
            :src="require('@/assets/logo-degrade.svg')" 
          />

          <!-- Tabela seletiva (influenciador, marca e agência) -->
          <v-tabs v-model="tab" align-tabs="center" bg-color="transparent" density="comfortable">
            <v-tab value="one" color="blue">Influenciador </v-tab>
            <v-tab value="two" color="blue">Marca </v-tab>
            <v-tab value="three" color="blue">Agência </v-tab>
          </v-tabs>

          <v-card-text>
            <!-- Model principal tab -->
            <v-window v-model="tab">

              <!-- Tab Influenciador-->
              <v-window-item value="one">
                <v-form ref="form">
                  <v-container>
                    <h2 :style="{color : '#000000'}"> Olá, <span class="text-blue">Influenciador</span> seja bem-vindo!</h2>
                    <v-card-text :style="{color : 'grey'}">Insira seus dados abaixo.</v-card-text>
                    <v-row>

                      <!-- Form nome completo influenciador -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          text-color="blue"
                          label="Nome Completo"
                          variant="solo"
                          prepend-inner-icon="mdi-account-circle"
                          v-model="nomeCompleto"
                          :rules="nomeCompletoRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form e-mail influenciador -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Email"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-email"
                          :counter="10"
                          :rules="emailRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form senha influenciador -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          :prepend-inner-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                          :rules="[passwordRules.required, passwordRules.min]"
                          :type="show1 ? 'text' : 'password'"
                          name="input-10-1"
                          label="Senha"
                          persistent-hint
                          variant="solo"
                          counter
                          @click:prepend-inner="show1 = !show1"
                          v-model="password">
                        </v-text-field>
                      </v-col>

                      <!-- Form confirmação de senha influenciador -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          :prepend-inner-icon="show2 ? 'mdi-eye' : 'mdi-eye-off'"
                          :rules="[confirmPasswordRules.required,passwordConfirmationRule]"
                          :type="show2 ? 'text' : 'password'"
                          name="input-10-1"
                          label="Confirme a Senha"
                          persistent-hint
                          variant="solo"
                          counter
                          @click:prepend-inner="show2 = !show2"
                          v-model="confirmPassword">
                        </v-text-field>
                      </v-col>

                      <!-- Form checkbox Termos de serviço  e as política de Privacidade influenciador -->
                      <v-col cols="30" sm="12">
                        <v-checkbox
                          v-model="agreement"
                          :rules="[checkboxRegistroRules.checkboxrequired]"
                          color="#0189FF">
                          <template v-slot:label>
                            <span :style="{fontSize : '11px',}">Eu concordo com os&nbsp;</span>
                            <a
                              :style="{
                              fontSize : '11px',
                              color : 'blue'}"
                              >
                              <router-link to="/termosdeuso">Termos de uso</router-link>
                            </a>
                            <span :style="{fontSize : '11px',}">&nbsp;e&nbsp; </span>
                            <a
                              :style="{
                              fontSize : '11px',
                              color : 'blue'}"
                              >
                              <router-link to="/politicadeprivacidade">Políticas de privacidade</router-link>
                            </a>
                            <span :style="{fontSize : '11px',}">*</span>
                          </template>
                        </v-checkbox>
                      </v-col>

                      <!-- Botão criar conta influenciador -->
                      <v-col cols="12" sm="6" offset-sm="3">
                        <v-btn
                          prepend-icon="mdi-account"
                          :disabled="loading"
                          :loading="loading"
                          block
                          class="text-shades-white mb-4"
                          color="#0189FF"
                          size="x-large"
                          variant="flat"
                          @click="validate">
                          Criar Conta
                        </v-btn>
                      </v-col>
                    </v-row>
                  </v-container>
                </v-form >
              </v-window-item>

              <!-- Tab Marca-->
              <v-window-item value="two">
                <v-form ref="form">
                  <v-container>
                    <h2 :style="{color : '#000000'}"> Olá, <span class="text-blue">Marca</span> seja bem-vindo!</h2>
                    <v-card-text :style="{color : 'grey'}">Insira seus dados abaixo.</v-card-text>
                    <v-row>

                      <!-- Form nome fantasia Marca -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Nome Fantasia"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-pencil"
                          v-model="nomeFantasia"
                          :rules="nomeFantasiaRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form e-mail Marca -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Email"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-email"
                          :counter="10"
                          :rules="emailRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form CNPJ Marca -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="CNPJ"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-office-building-outline"
                          v-model="cnpj"
                          :counter="18"
                          :rules="cnpjRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form telefone Marca -->
                      <v-col cols="12" sm="6">
                        <v-card varient="solo">
                          <vue-tel-input
                            v-model="phone"
                            mode="international"
                            autoFormat
                            :style="{
                            height: '57px',
                            border : 'transparent'}"
                            :rules="phoneRules">
                          </vue-tel-input>
                        </v-card>
                      </v-col>

                      <!-- Form Ramo Marca -->
                      <v-col cols="12" sm="6">
                        <v-autocomplete
                          ref="Categoria"
                          v-model="Categoria"
                          :rules="categoriaRules"
                          :items="Category"
                          label="Ramo"
                          placeholder="Select..."
                          required
                          variant="solo"
                          prepend-inner-icon="mdi-clipboard-edit-outline">
                        </v-autocomplete>
                      </v-col>

                      <!-- Form razão social Marca -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Razão Social"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-lead-pencil"
                          v-model="razaoSocial"
                          :counter="30"
                          :rules="razaoSocialRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form senha Marca -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          :prepend-inner-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                          :rules="[passwordRules.required, passwordRules.min]"
                          :type="show1 ? 'text' : 'password'"
                          name="input-10-1"
                          label="Senha"
                          persistent-hint
                          variant="solo"
                          counter
                          @click:prepend-inner="show1 = !show1"
                          v-model="password">
                        </v-text-field>
                      </v-col>

                      <!-- Form confirmação de senha Marca -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          :prepend-inner-icon="show2 ? 'mdi-eye' : 'mdi-eye-off'"
                          :rules="[confirmPasswordRules.required, passwordConfirmationRule]"
                          :type="show2 ? 'text' : 'password'"
                          name="input-10-1"
                          label="Confirme a Senha"
                          persistent-hint
                          variant="solo"
                          counter
                          @click:prepend-inner="show2 = !show2"
                          v-model="confirmPassword">
                        </v-text-field>
                      </v-col>

                      <!-- Form checkbox Termos de serviço  e as política de Privacidade Marca -->
                      <v-col cols="30" sm="12">
                        <v-checkbox
                          v-model="agreement"
                          :rules="[checkboxRegistroRules.checkboxrequired]"
                          color="#0189FF">
                          <template v-slot:label>
                            <span :style="{fontSize : '11px',}">Eu concordo com os&nbsp;</span>
                            <a
                              :style="{
                              fontSize : '11px',
                              color : 'blue'}"
                              >
                              <router-link to="/termosdeuso">Termos de uso</router-link>
                            </a>
                            <span :style="{fontSize : '11px',}">&nbsp;e&nbsp; </span>
                            <a
                              :style="{
                              fontSize : '11px',
                              color : 'blue'}"
                              >
                              <router-link to="/politicadeprivacidade">Políticas de privacidade</router-link>
                            </a>
                            <span :style="{fontSize : '11px',}">*</span>
                          </template>
                        </v-checkbox>
                      </v-col>

                      <!-- Botão criar conta Marca -->
                      <v-col cols="12" sm="6" offset-sm="3">
                        <v-btn
                          prepend-icon="mdi-account"
                          :disabled="loading"
                          :loading="loading"
                          block
                          class="text-shades-white mb-4"
                          color="#0189FF"
                          size="x-large"
                          variant="flat"
                          @click="validate">
                          Criar Conta
                        </v-btn>
                      </v-col>
                    </v-row>
                  </v-container>
                </v-form>
              </v-window-item>

              <!-- Tab Agência-->
              <v-window-item value="three">
                <v-form ref="form">
                  <v-container>
                    <h2 :style="{color : '#000000'}"> Olá, <span class="text-blue">Agência</span> seja bem-vindo!</h2>
                    <v-card-text :style="{color : 'grey'}">Insira seus dados abaixo.</v-card-text>
                    <v-row>

                      <!-- Form nome fantasia Agência -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Nome Fantasia"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-pencil"
                          v-model="nomeFantasia"
                          :rules="nomeFantasiaRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form e-mail Agência -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Email"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-email"
                          :counter="10"
                          :rules="emailRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form CNPJ Agência -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="CNPJ"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-office-building-outline"
                          v-model="cnpj"
                          :counter="18"
                          :rules="cnpjRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form telefone Agência -->
                      <v-col cols="12" sm="6">
                        <v-card varient="solo">
                          <vue-tel-input
                            v-model="phone"
                            mode="international"
                            autoFormat
                            :style="{
                            height: '57px',
                            border : 'transparent'}"
                            :rules="phoneRules">
                          </vue-tel-input>
                        </v-card>
                      </v-col>

                      <!-- Form Ramo Agência -->
                      <v-col cols="12" sm="6">
                        <v-autocomplete
                          ref="Categoria"
                          v-model="Categoria"
                          :rules="categoriaRules"
                          :items="Category"
                          label="Ramo"
                          placeholder="Select..."
                          required
                          variant="solo"
                          prepend-inner-icon="mdi-clipboard-edit-outline">
                        </v-autocomplete>
                      </v-col>

                      <!-- Form razão social Agência -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          label="Razão Social"
                          persistent-hint
                          variant="solo"
                          prepend-inner-icon="mdi-lead-pencil"
                          v-model="razaoSocial"
                          :counter="30"
                          :rules="razaoSocialRules">
                        </v-text-field>
                      </v-col>

                      <!-- Form senha Agência -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          :prepend-inner-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                          :rules="[passwordRules.required, passwordRules.min]"
                          :type="show1 ? 'text' : 'password'"
                          name="input-10-1"
                          label="Senha"
                          persistent-hint
                          variant="solo"
                          counter
                          @click:prepend-inner="show1 = !show1"
                          v-model="password">
                        </v-text-field>
                      </v-col>

                      <!-- Form confirmação de senha Agência -->
                      <v-col cols="12" sm="6">
                        <v-text-field
                          :prepend-inner-icon="show2 ? 'mdi-eye' : 'mdi-eye-off'"
                          :rules="[confirmPasswordRules.required, passwordConfirmationRule]"
                          :type="show2 ? 'text' : 'password'"
                          name="input-10-1"
                          label="Confirme a Senha"
                          persistent-hint
                          variant="solo"
                          counter
                          @click:prepend-inner="show2 = !show2"
                          v-model="confirmPassword">
                        </v-text-field>
                      </v-col>

                      <!-- Form checkbox Termos de serviço  e as política de Privacidade Agência -->
                      <v-col cols="30" sm="12">
                        <v-checkbox
                          v-model="agreement"
                          :rules="[checkboxRegistroRules.checkboxrequired]"
                          color="#0189FF">
                          <template v-slot:label>
                            <span :style="{fontSize : '11px',}">Eu concordo com os&nbsp;</span>
                            <a
                              :style="{
                              fontSize : '11px',
                              color : 'blue'}"
                              >
                              <router-link to="/termosdeuso">Termos de uso</router-link>
                            </a>
                            <span :style="{fontSize : '11px',}">&nbsp;e&nbsp; </span>
                            <a
                              :style="{
                              fontSize : '11px',
                              color : 'blue'}"
                              >
                              <router-link to="/politicadeprivacidade">Políticas de privacidade</router-link>
                            </a>
                            <span :style="{fontSize : '11px',}">*</span>
                          </template>
                        </v-checkbox>
                      </v-col>

                      <!-- Botão criar conta Agência -->
                      <v-col cols="12" sm="6" offset-sm="3">
                        <v-btn
                          prepend-icon="mdi-account"
                          :disabled="loading"
                          :loading="loading"
                          block
                          class="text-shades-white mb-4"
                          color="#0189FF"
                          size="x-large"
                          variant="flat"
                          @click="validate">
                          Criar Conta
                        </v-btn>
                      </v-col>
                    </v-row>
                  </v-container>
                </v-form>
              </v-window-item>
            </v-window>
          </v-card-text>
        </v-sheet>

        <!-- Observações inferiores da pagina sobre termos e política -->
          <v-card-text
            :style="{color : 'black',
            fontSize : '14px',}"
            align="center"> Importante:

            <span class="text-grey"
              :style="{
              color : 'grey',
              fontSize : '14px',}">Ao criar uma conta da Howhow você concorda com os&nbsp;
            </span>

            <a 
              :style="{
              fontSize : '14px',
              color : 'blue'}"
              >
              <router-link to="/termosdeuso">Termos de uso</router-link>
            </a>

            <span
              :style="{
              color : 'grey',
              fontSize : '14px',}">&nbsp;e as&nbsp;
            </span>

            <a
              :style="{
              fontSize : '14px',
              color : 'blue'}"
              >
              <router-link to="/politicadeprivacidade">Políticas de privacidade</router-link>
            </a>

            <span
              :style="{
              color : 'grey',
              fontSize : '14px',}">*
            </span>
          </v-card-text>
          
          <!-- Observações inferiores da pagina caso ja tenha um login -->
          <v-card-text
            align="center">
            <span
              :style="{
              color : 'grey',
              fontSize : '14px',}">Já tem uma conta? &nbsp;
            </span>
            <a
              :style="{
              fontSize : '14px',
              color : 'blue'}"
              href="#"
              >
              <router-link to="/login">Efetue o Login</router-link> 
            </a>
          </v-card-text>
        </v-container>
      </v-main>
    </v-layout>
  </v-card>
</template>
<script>

// script tabs,cards e forms)
export default {

  data: () => {
    return {
      // card tabelas ("influenciador,marca,agência")
      tab: null,

      // script dos cards de registros
      
      // script form nome completo registro (influenciador,marca e agência)
      nomeCompleto: '',
      nomeCompletoRules: [
        v => !!v || 'O nome é obrigatório',
        // v => (v && v.length >= 10) || 'O nome deve ter o minimo 10 caracteres',
        value => {
          if (/.+ .+/.test(value)) return true
          return 'Nome deve ser completo.'
        },
      ],

      // script form nome fantasia registro (influenciador,marca e agência)
      nomeFantasia: '',
      nomeFantasiaRules: [
        v => !!v || 'O nome fantasia é obrigatório',
        v => (v && v.length >= 2) || 'O nome deve ter o minimo 2 caracteres',
       
      ],

      // script form e-mail registro (influenciador,marca e agência)
      email: '',
      emailRules: [
        value => {
          if (value) return true
          return 'E-mail é obrigatório.'
        },
        value => {
          if (/.+@.+\..+/.test(value)) return true
          return 'E-mail deve ser válido.'
        },
      ],

      // script form CNPJ registro (influenciador,marca e agência)
      cnpj: '',
      cnpjRules: [
        v => !!v || 'O CNPJ é obrigatório',
        v => (v && v.length <= 18) || 'O CNPJ deve conter 18 caracteres',

        value => {
          if (/.+..+..+[/].+-.+/.test(value)) return true
          return 'O CNPJ deve ser válido.'
        },
      ],

      // script form Categoria/Ramo registro (influenciador,marca e agência)
      Categoria: '',
      categoriaRules: [
        v => !!v || 'A categoria é obrigatória',
      ],
      Category: [
        'Anime&Comedia',
        'Comedia',
        'Curiosidades',
        'Dança',
        'Dublagem',
        'Entretenimento',
        'Fashion',
        'Gastronomia',
        'Games',
        'LifeSkills',
        'Pegadinhas',
        'Makeup',
        'Motivation',
        'Music',
        'Outros',
      ],

      // script form razão social registro (influenciador,marca e agência)
      razaoSocial: '',
      razaoSocialRules: [
        v => !!v || 'A razão Social é obrigatória',
        v => (v && v.length <= 30) || 'O CNPJ deve ter o maximo 30 caracteres',
      ],

      // script form telefone-input
      phone: null,
      phoneRules: [
        v => !!v || 'O telefone é obrigatória',
      ],

      // script form senha
      password: "",
      show1: false,
      passwordRules: {
        required: value => !!value || 'Senha é obrigatória.',
        min: v => v.length >= 8 || 'A senha deve ter o 8 characters',
      },

      // script form confirmação de senha
      confirmPassword: "",
      show2: false,
      confirmPasswordRules: {
        required: value => !!value || 'A confirmação é obrigatória.',

      },

      //script form confirmação checkbox termos
      agreement: false,
      dialog: false,
      checkboxRegistroRules: {
        checkboxrequired: v => !!v || 'Este campo é obrigatório',
      },

      // script botão de validação de dados
      valid: true,
      loading: false,
    }
  },

  // script metodos de validação de senha e confirmação de senha
  computed: {
    passwordConfirmationRule() {
      return () => (this.password === this.confirmPassword) || 'A senha deve corresponder'
    },
  },

  // script metodos de validação de dados
  methods: {
    async validate () {
      const { valid } = await this.$refs.form.validate()

      if (valid){
        alert('Form is valid')
        this.loading=true
        setTimeout(() => (this.loading = false), 2000)
      }
    },
  },

}
</script>