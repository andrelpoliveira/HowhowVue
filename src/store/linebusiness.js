import { defineStore } from "pinia";
import axios from "axios";

export const useLineBusiness = defineStore('linebusiness',{
    state: () => ({
        lineofbusiness: [],
    }),
    getters:{
        getLines: (state)=> {
            return state.lineofbusiness;
        },
    },
    actions: {
        //Retorna dados da db
        //line_of_business
        async getLineOfBusiness() {
            const data = await axios.get("/api/lineOfBusiness");
            this.lineofbusiness = data.data.data;
        },
    }
})