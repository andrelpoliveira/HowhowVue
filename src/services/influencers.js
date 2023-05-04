export const state = ()=>({
    user:{
        data:[]
    }
})

export const mutations ={
    setUser(state, data){
        state.user = data
    }
}

export const actions={
    selectUser({commit}){
        this.$axios.get('http://localhost/HowhowVue/howhow/src/services/dados.php').then((data)=>{
            commit('setUser', data.data)
        })
    }
}
