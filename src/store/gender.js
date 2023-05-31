import { defineStore } from "pinia";
import axios from "axios";

export const useGendersDb = defineStore('gendersdb', {
    state: () =>({
        gendersDB: [],
    }),
    getters:{
        getGenders: (state) => {
            return state.gendersDB;
        }
    },
    actions:{
        //Retorna dados da db
        //states
        async getGendersDb() {
            const data = await axios.get("/api/genders");
            this.gendersDB = data.data.data;
        },
    }
})