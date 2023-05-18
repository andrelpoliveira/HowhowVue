<template>
    <!-- Tab Agência-->
    <v-window-item value="three">
        <v-form @submit.prevent="authStore.handleRegisterAgency(form)">
            <v-container>
                <v-text class="registro-welcome" :style="{ color: '#000000' }"> Olá, <span class="text-blue">Agência</span>
                    seja bem-vindo!</v-text>
                <v-card-text class="registro-guia" :style="{ color: 'grey' }">Insira seus dados abaixo.</v-card-text>
                <v-row>

                    <!-- Form nome fantasia Agência -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field label="Nome Fantasia" persistent-hint variant="solo" prepend-inner-icon="mdi-pencil"
                            v-model="form.name_artistic" :rules="nomeFantasiaRules">
                        </v-text-field>
                    </v-col>

                    <!-- Form e-mail Agência -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field label="Email" persistent-hint variant="solo" prepend-inner-icon="mdi-email"
                            :counter="10" v-model="form.email" :rules="emailRules">
                        </v-text-field>
                    </v-col>

                    <!-- Form CNPJ Agência -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field label="CNPJ" persistent-hint variant="solo"
                            prepend-inner-icon="mdi-office-building-outline" v-model="form.cnpj" :counter="18"
                            :rules="cnpjRules">
                        </v-text-field>
                    </v-col>

                    <!-- Form telefone Agência -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-card varient="solo">
                            <vue-tel-input v-model="form.phone" mode="international" autoFormat :style="{
                                height: '57px',
                                border: 'transparent'
                            }" :rules="phoneRules">
                            </vue-tel-input>
                        </v-card>
                    </v-col>

                    <!-- Form razão social Agência -->
                    <v-col class="registro-inputs" cols="12" sm="12">
                        <v-text-field label="Razão Social" persistent-hint variant="solo"
                            prepend-inner-icon="mdi-lead-pencil" v-model="form.business_name" :counter="30"
                            :rules="razaoSocialRules">
                        </v-text-field>
                    </v-col>

                    <!-- Form senha Agência -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field :prepend-inner-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                            :rules="[passwordRules.required, passwordRules.min]" :type="show1 ? 'text' : 'password'"
                            name="input-10-1" label="Senha" persistent-hint variant="solo" counter
                            @click:prepend-inner="show1 = !show1" v-model="form.password">
                        </v-text-field>
                    </v-col>

                    <!-- Form confirmação de senha Agência -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field :prepend-inner-icon="show2 ? 'mdi-eye' : 'mdi-eye-off'"
                            :rules="[confirmPasswordRules.required, passwordConfirmationRule]"
                            :type="show2 ? 'text' : 'password'" name="input-10-1" label="Confirme a Senha" persistent-hint
                            variant="solo" counter @click:prepend-inner="show2 = !show2" v-model="form.password_confirmation">
                        </v-text-field>
                    </v-col>

                    <!-- Form checkbox Termos de serviço  e as política de Privacidade Agência -->
                    <v-col cols="30" sm="12">
                        <v-checkbox v-model="agreement" :rules="[checkboxRegistroRules.checkboxrequired]" color="#0189FF">
                            <template v-slot:label>
                                <span :style="{ fontSize: '11px', }">Eu concordo com os&nbsp;</span>
                                <a :style="{
                                    fontSize: '11px',
                                    color: 'blue'
                                }">
                                    <router-link to="/termosdeuso">Termos de uso</router-link>
                                </a>
                                <span :style="{ fontSize: '11px', }">&nbsp;e&nbsp; </span>
                                <a :style="{
                                    fontSize: '11px',
                                    color: 'blue'
                                }">
                                    <router-link to="/politicadeprivacidade">Políticas de privacidade</router-link>
                                </a>
                                <span :style="{ fontSize: '11px', }">*</span>
                            </template>
                        </v-checkbox>
                    </v-col>

                    <!-- Botão criar conta Agência -->
                    <v-col cols="12" sm="6" offset-sm="3">
                        <v-btn prepend-icon="mdi-account" type="submit" :disabled="loading" :loading="loading" block
                            class="criar-conta-btn" color="#0189FF" size="x-large" variant="flat">
                            Criar Conta
                        </v-btn>
                    </v-col>
                </v-row>
            </v-container>
        </v-form>
    </v-window-item>
</template>
<script>

// script tabs,cards e forms)
export default {
    name: 'AgenciaComponent',
    data: () => {
        return {
            // script form nome fantasia registro (influenciador,marca e agência)
            nomeFantasiaRules: [
                v => !!v || 'O nome fantasia é obrigatório',
                v => (v && v.length >= 2) || 'O nome deve ter o minimo 2 caracteres',

            ],

            // script form e-mail registro (influenciador,marca e agência)
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
            cnpjRules: [
                v => !!v || 'O CNPJ é obrigatório',
                v => (v && v.length <= 18) || 'O CNPJ deve conter 18 caracteres',

                value => {
                    if (/.+..+..+[/].+-.+/.test(value)) return true
                    return 'O CNPJ deve ser válido.'
                },
            ],

            // script form Categoria/Ramo registro (influenciador,marca e agência)
            categoriaRules: [
                v => !!v || 'A categoria é obrigatória',
            ],

            // script form razão social registro (influenciador,marca e agência)
            razaoSocialRules: [
                v => !!v || 'A razão Social é obrigatória',
                v => (v && v.length <= 30) || 'O CNPJ deve ter o maximo 30 caracteres',
            ],

            // script form telefone-input
            phoneRules: [
                v => !!v || 'O telefone é obrigatória',
            ],

            // script form senha
            show1: false,
            passwordRules: {
                required: value => !!value || 'Senha é obrigatória.',
                min: v => v.length >= 8 || 'A senha deve ter o 8 characters',
            },

            // script form confirmação de senha
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
        
    },

}
</script>
<script setup>
import { ref } from 'vue';
import { useAuthStore } from '@/store/auth';

const authStore = useAuthStore();

const form = ref({
    name_artistic: "",
    business_name: "",
    phone: "",
    cnpj: "",
    email: "",
    password: "",
    password_confirmation: "",
})
</script>
