import axios from 'axios';
import { createStore } from 'vuex';
import Cookie from 'js-cookie';

axios.defaults.baseURL = "http://127.0.0.1:3000/api/";
export default createStore({
  state: {
    //Campanhas
    campaigns: [
      { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '1' },
      { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023', campanhaId: '2' },
      { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023', campanhaId: '3' },
      { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '4' },
      { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023', campanhaId: '5' },
      { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '6' },
    ],
    campaignInfo: '',
    //Categoria Influenciador
    category: ['Anime & Cartoon', 'Apps & Serviços', 'Comédia & Humor', 'Curiosidades', 'Dança Profissional',
      'Dublagem', 'Entretenimento', 'Fashion/Moda', 'Games', 'Gastronomia/Comida', 'Life Skills (Comportamento na vida)',
      'Make Prank (Pegadinhas)', 'Makeup/Maquiagem', 'Motivação', 'Música', 'Outros'],
    estados_db: [],
    //Usuários
    roles: 'marca',
    influencer_db: [],
    list_of_business: [],
    //Autenticação e dados usuário
    token: Cookie.get('_myapp_token') || '',
    user: '',
    status: '',
    error: '',
  },
  getters: {
    //getAllStates: (state) => state.estados_db,
    //getInfluencers: (state) => state.influencer_db,
    //getBusiness: (state) => state.list_of_business,
    //Auth Getters
    isLoggedIn: state => !!state.token,
    authStatus: state => state.status,
    getUser: state => state.user,
    getError: state => state.error,
  },
  mutations: {
    // openCampaign(state, data) {
    //   state.campaignInfo = data
    // },
    // setStates(state, estados_db) {
    //   state.estados_db = estados_db;
    // },
    // setInfluencers(state, influencer_db){
    //   state.influencer_db = influencer_db;
    // },
    // setBusiness(state, list_of_business){
    //   state.list_of_business = list_of_business;
    // },
    //Auth
    auth_request(state){
      state.status = 'loading'
    },
    auth_success(state, token){
      state.status = 'success'
      state.token = token
    },
    set_user(state, user){
      state.user = user
    },
    handle_error(state, error){
      state.error = error
    },
    logout(state){
      state.status = ''
      state.token = ''
    }

  },
  actions: {
    // async getStates({ commit }) {
    //   try {
    //     const data = await axios.get(url_estados);
    //     commit('setStates', data.data);
    //   } catch (error) {
    //     alert(error);
    //     console.log(error);
    //   }
    // },
    // async getUsers({ commit }){
    //   try{
    //     const dataUser = await axios.get(url_users);
    //     commit('setInfluencers', dataUser.data);
    //   }catch(error){
    //     alert(error);
    //     console.log(error);
    //   }
    // },
    // async getLineBusiness({commit}){
    //     const dataBusiness = await axios.get(url_line_business);
    //     commit('setBusiness', dataBusiness.data);
    // },
    //Auth Actions
    login({commit}, user){
      return new Promise((resolve, reject) => {
        commit('auth_request')
        axios({url: 'login', data: user, method: 'POST'})
        .then(resp => {
          const token = 'bearer '+resp.data.data.token
          const user = resp.user.data
          Cookie.set('_myapp_token', token)
          axios.defaults.withCredentials = true
          axios.defaults.headers.common['Authorization'] = token
          commit('auth_success', token, user)
          commit('set_user', user)
          commit('handler_error', '')
          resolve(resp)
        })
        .catch(err => {
          Cookie.remove('_myapp_token')
          reject(err)
        })
      })
    },
    registerInfluencer({commit}, user){
      return new Promise((resolve, reject)=>{
        commit('auth_request')
        axios({url: 'register/influencer', data: user, method: 'POST'})
        .then(resp => {
          const token = 'bearer '+resp.data.token
          const user = resp.data.user
          Cookie.set('_myapp_token', token)
          axios.defaults.withCredentials = true
          axios.defaults.headers.common['Authorization'] = token
          commit('auth_success', token, user)
          commit('set_user', user)
          commit('handler_error', '')
          resolve(resp)
        })
        .catch(error => {
          Cookie.remove('_myapp_token')
          reject(error)
        })
      })
    },
    registerBrand({commit}, user){
      return new Promise((resolve, reject)=>{
        commit('auth_request')
        axios({url: 'register/brand', data: user, method: 'POST'})
        .then(resp => {
          const token = 'bearer '+resp.data.token
          const user = resp.data.user
          Cookie.set('_myapp_token', token)
          axios.defaults.withCredentials = true
          axios.defaults.headers.common['Authorization'] = token
          commit('auth_success', token, user)
          commit('set_user', user)
          commit('handler_error', '')
          resolve(resp)
        })
        .catch(error => {
          Cookie.remove('_myapp_token')
          reject(error)
        })
      })
    },
    registerAgency({commit}, user){
      return new Promise((resolve, reject)=>{
        commit('auth_request')
        axios({url: 'register/agency', data: user, method: 'POST'})
        .then(resp => {
          const token = 'bearer '+resp.data.token
          const user = resp.data.user
          Cookie.set('_myapp_token', token)
          axios.defaults.withCredentials = true
          axios.defaults.headers.common['Authorization'] = token
          commit('auth_success', token, user)
          commit('set_user', user)
          commit('handler_error', '')
          resolve(resp)
        })
        .catch(error => {
          Cookie.remove('_myapp_token')
          reject(error)
        })
      })
    },
    logout({commit}){
      return new Promise((resolve) =>{
        commit('logout')
        Cookie.remove('_myapp_token')
        delete axios.defaults.headers.common['Authorization']
        resolve()
      })
    },
    getUser({commit}){
      return new Promise((resolve)=>{
        axios({url: 'getSelf', method: 'GET'}).then(res=>{
          axios.defaults.headers.common['Accept']
          axios.defaults.headers.common['Content-Type']
          axios.defaults.headers.common['Authorization'] = this.token
          commit('set_user', res.data)
          resolve(res)
        })
      });
    }
  },
  modules: {
  }
})

