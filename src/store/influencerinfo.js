import { defineStore } from "pinia";

export const useInfluencerInfo = defineStore("influencerinfo", {
    state: ()=>({
        influencerSelected: null,
    }),

    actions: {
        getInfluencer(data){
            this.influencerSelected = data
        }
    }
})