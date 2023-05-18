<template>
    <!-- Tab Influenciador-->
    <v-window-item value="one">
        <v-form @submit.prevent="authStore.handleRegisterInfluencer(form)">
            <v-container>
                <v-text class="registro-welcome" :style="{ color: '#000000' }"> Olá, <span
                        class="text-blue">Influenciador</span> seja bem-vindo!</v-text>
                <v-card-text class="registro-guia" :style="{ color: 'grey' }">Insira seus dados abaixo.</v-card-text>
                <v-row>

                    <!-- Form nome completo influenciador -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field bg-color="rgba(255,255,255,0)" text-color="blue" label="Nome Completo"
                            prepend-inner-icon="mdi-account-circle" v-model="form.name" :rules="nomeCompletoRules">
                        </v-text-field>
                    </v-col>

                    <!-- Form e-mail influenciador -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field bg-color="rgba(255,255,255,0)" label="Email" persistent-hint
                            prepend-inner-icon="mdi-email" :counter="10" v-model="form.email" :rules="emailRules">
                        </v-text-field>
                    </v-col>

                    <!-- Form senha influenciador -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field bg-color="rgba(255,255,255,0)" :prepend-inner-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                            :rules="[passwordRules.required, passwordRules.min]" :type="show1 ? 'text' : 'password'"
                            name="input-10-1" label="Senha" persistent-hint counter @click:prepend-inner="show1 = !show1"
                            v-model="form.password">
                        </v-text-field>
                        <div v-if="authStore.errors.password" class="flex">
                        <span class="text-red-400 text-sm m-2 p-2">{{ authStore.errors.password[0] }}</span></div>
                    </v-col>

                    <!-- Form confirmação de senha influenciador -->
                    <v-col class="registro-inputs" cols="12" sm="6">
                        <v-text-field bg-color="rgba(255,255,255,0)" :prepend-inner-icon="show2 ? 'mdi-eye' : 'mdi-eye-off'"
                            :rules="[confirmPasswordRules.required, passwordConfirmationRule]"
                            :type="show2 ? 'text' : 'password'" name="input-10-1" label="Confirme a Senha" persistent-hint
                            counter @click:prepend-inner="show2 = !show2" v-model="form.password_confirmation">
                        </v-text-field>
                    </v-col>

                    <!-- Form checkbox Termos de serviço  e as política de Privacidade influenciador -->
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

                    <!-- Botão criar conta influenciador -->
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
    name: 'InfluenciadoresComponent',
    data: () => {
        return {
            // script form nome completo registro (influenciador,marca e agência)
            nomeCompletoRules: [
                v => !!v || 'O nome é obrigatório',
                // v => (v && v.length >= 10) || 'O nome deve ter o minimo 10 caracteres',
                value => {
                    if (/.+ .+/.test(value)) return true
                    return 'Nome deve ser completo.'
                },
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
        // async validate() {
        //     const { valid } = await this.$refs.form.validate()

        //     if (valid) {
        //         alert('Form is valid')
        //         this.loading = true
        //         setTimeout(() => (this.loading = false), 2000)
        //     }
        // },
    },

}
</script>
<script setup>
import { ref } from 'vue';
import { useAuthStore } from '@/store/auth';

const authStore = useAuthStore();

const form = ref({
    name: "",
    email: "",
    password: "",
    password_confirmation: "",
})
</script>
