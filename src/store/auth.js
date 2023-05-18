import { defineStore } from "pinia";
import axios from "axios";
import Cookie from 'js-cookie';

export const useAuthStore = defineStore("auth", {
    state: () => ({
        authUser: null,
        authErrors: [],
        authStatus: null,
        role: null,
    }),
    getters: {
        user: (state) => state.authUser,
        errors: (state) => state.authErrors,
        status: (state) => state.authStatus,
    },
    actions: {
        //Retorna dados da db
        //Pega informações do usuário atual
        async getUser() {
            const data = await axios.get("/api/getSelf",{
                headers:{
                    Authorization: Cookie.get('token')
                }
            });
            this.authUser = data.data.data;
            
        },
        //Login com token
        async handleLogin(data) {

            await axios.post("/api/login", {
                email: data.email,
                password: data.password,
            }).then(resp => {
                const token = 'bearer ' + resp.data.data.token
                axios.defaults.headers.common['Authorization'] = token
                Cookie.set('token', token)
                this.router.push('/dashboard')
            })
        },
        //Registro de influenciadores
        async handleRegisterInfluencer(data) {
            await axios.post("/api/register/influencer", {
                name: data.name,
                email: data.email,
                password: data.password,
                password_confirmation: data.password_confirmation,
            });
            this.router.push('/login');
        },
        //Registro de Marcas
        async handleRegisterBrand(data) {
            await axios.post("/api/register/brand", {
                name_artistic: data.name_artistic,
                business_name: data.business_name,
                phone: data.phone,
                cnpj: data.cnpj,
                line_of_business: data.line_of_business,
                email: data.email,
                password: data.password,
                password_confirmation: data.password_confirmation,
            });
            this.router.push('/login');
        },
        //Registro de Agências
        async handleRegisterAgency(data) {
            await axios.post("/api/register/agency", {
                name_artistic: data.name_artistic,
                business_name: data.business_name,
                phone: data.phone,
                cnpj: data.cnpj,
                email: data.email,
                password: data.password,
                password_confirmation: data.password_confirmation,
            });
            this.router.push('/login');
        },
        //Logout
        async handleLogout() {
            await axios.post("/api/logout")
            this.authUser = null
            Cookie.remove('token')
            this.router.push('/')
        }

    }
});