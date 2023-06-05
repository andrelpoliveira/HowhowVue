<template>
    <v-window-item value="my-campanha-main">
        <v-card v-if="authStore.user">
            <div v-if="authStore.user.role === 'brand'">
                <v-tabs v-model="modelCampaigns" color="blue-lighten-4" align-tabs="center">
                    <v-tab value="gerenciarCampanha">Gerenciar Campanha</v-tab>
                    <v-tab value="infoCampanha">Informações Campanha</v-tab>
                    <v-tab value="propostasCampanha">Solicitações</v-tab>
                    <v-tab value="editCampanha">Editar Campanha</v-tab>
                </v-tabs>

                <v-window v-model="modelCampaigns">
                    <GerenciarCampanha />
                    <InfoCampaignsMarca />
                    <EditCampaignsMarca />
                    <SolicitacoesMarca />
                </v-window>
            </div>

            <div v-if="authStore.user.role === 'influencer'">
                <v-window v-model="modelCampaigns">
                    <InfoCampaignsMarca />
                </v-window>
            </div>

            <div v-if="authStore.user.role === 'agency'">
                <v-window v-model="modelCampaigns">
                    <InfoCampaignsMarca />
                </v-window>
            </div>
        </v-card>
    </v-window-item>
</template>
<script setup>
//import { defineProps } from 'vue';
import EditCampaignsMarca from './EditCampaignsMarca.vue';
import InfoCampaignsMarca from './InfoCampaignsMarca.vue';
import GerenciarCampanha from './GerenciarCampanha.vue';
import SolicitacoesMarca from './SolicitacoesMarca.vue';

import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';

const authStore = useAuthStore();

onMounted(async () => {
  await authStore.getUser();
  await authStore.getOwnProfile();
})
</script >

<script>
export default {
    data: () => ({
        modelCampaigns: null,
        props: ["infoId"],

    }),


    components: {
        EditCampaignsMarca,
        InfoCampaignsMarca,
        GerenciarCampanha,
        SolicitacoesMarca
    }

}
</script>
