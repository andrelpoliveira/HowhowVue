import { defineStore } from "pinia";
import axios from "axios";

export const useCategories = defineStore('categories', {
    state: () =>({
        categories: [],
    }),
    getters:{
        getStates: (state) => {
            return state.categories;
        }
    },
    actions:{
        //Retorna dados da db
        //states
        async getCategories() {
            const data = await axios.get("/api/categories");
            this.categories = data.data.data;
        },
    }
})