import { createStore } from 'vuex'

export default createStore({
  state: {
    //Retorno de campanhas
    campaigns: [
      { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '1' },
      { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023', campanhaId: '2' },
      { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023', campanhaId: '3' },
      { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '4' },
      { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023', campanhaId: '5' },
      { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '6' },
    ],
    //Retorno da Rules da db
    roles: 'marca',
    campaignInfo: '',
      
  },
  getters: {
  },
  mutations: {
    openCampaign(state, data){
      state.campaignInfo = data
    },
  },
  actions: {
  },
  modules: {
  }
})
