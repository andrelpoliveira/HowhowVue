import { defineStore } from "pinia";
import axios from "axios";

export const useStatesDB = defineStore('statesdb', {
    state: () =>({
        statesDB: [],
    }),
    getters:{
        getStates: (state) => {
            return state.statesDB;
        }
    },
    actions:{
        //Retorna dados da db
        //states
        async getStatesDb() {
            const data = await axios.get("/api/getStates");
            this.statesDB = data.data.data;
        },
    }
})