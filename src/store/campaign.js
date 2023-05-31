import { defineStore } from "pinia";

export const useCampaignStore = defineStore("campaginStore", {
    state: () => ({
        campaignSelected: null,
    }),
    actions: {
        getCampaign(data){
            this.campaignSelected = data
        }
    }
})