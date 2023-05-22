import { defineStore } from "pinia";
import axios from "axios";
import Cookie from 'js-cookie';

export const useAuthStore = defineStore("auth", {
    state: () => ({
        authUser: null,
        authErrors: [],
        authStatus: null,
        role: null,
        authtoken: Cookie.get('token') || '',
        campaigns: [],
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
            const data = await axios.get("/api/getSelf", {
                headers: {
                    'Authorization': Cookie.get('token')
                }
            });
            this.authUser = data.data.data;
            
        },
        //Trazer Campanhas
        async getCampaigns(){
            const data = await axios.get("/api/campaign/index", {
                headers: {
                    'Authorization': Cookie.get('token')
                },
            });
            this.campaigns = data.data.data;
        },
        //Login com token
        async handleLogin(data) {

            await axios.post("/api/login", {
                email: data.email,
                password: data.password,
            }).then(resp => {
                const token = 'bearer ' + resp.data.data.token
                axios.defaults.headers.common['Accept']
                axios.defaults.headers.common['Content-Type']
                axios.defaults.headers.common['Authorization'] = token
                Cookie.set('token', token)
                this.router.push('/dashboard')
                this.authtoken = token
                this.role = resp.data.data.role
                this.authStatus = resp.data.message
            })
        },
        //Registro de influenciadores
        async handleRegisterInfluencer(data) {
            await axios.post("/api/register/influencer", {
                headers: {
                    'Accept': 'application/json',
                    'Content-type': 'application/json'
                },
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
                headers: {
                    'Accept': 'application/json',
                    'Content-type': 'application/json'
                },
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
                headers: {
                    'Accept': 'application/json',
                    'Content-type': 'application/json'
                },
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
            await axios.post("/api/logout", {
                headers: {
                    'Authorization': Cookie.get('token')
                }
            });
            this.authUser = null
            Cookie.remove('token')
            this.router.push('/')
        },
        //Registro Campanhas
        async handleCreateCampaign(data) {
            await axios.post("/api/campaign/create", {
                headers: {
                    'Authorization': Cookie.get('token')
                },
                name: data.name,
                campaign_purpose: data.campaign_purpose,
                states: data.states,
                social_media: data.social,
                content_type: data.content,
                type: data.type,
                private: data.private,
                campaign_photo: data.append('campaign_photo', data.campaign_photo),    
            }).then(resp=>{
                console.log(resp.data);
            })
            
        },
        
    }
});