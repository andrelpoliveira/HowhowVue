<template>
    <v-window-item value="my-campanha-marca">
        <v-card>
            <v-tabs v-model="modelCampaigns" color="blue-lighten-4" align-tabs="center">
                <v-tab value="gerenciarCampanha">Gerenciar Campanha</v-tab>
                <v-tab value="infoCampanha">Informações Campanha</v-tab>
                <v-tab value="propostasCampanha">Solicitações</v-tab>
                <v-tab value="editCampanha">Editar Campanha</v-tab>
            </v-tabs>

            <v-window v-model="modelCampaigns">
                    <GerenciarCampanha/>
                    <InfoCampaignsMarca/>
                    <EditCampaignsMarca />
                    <SolicitacoesMarca />
                </v-window>

        </v-card>
    </v-window-item>
</template>
<script setup>
//import { defineProps } from 'vue';
import EditCampaignsMarca from './EditCampaignsMarca.vue';
import InfoCampaignsMarca from './InfoCampaignsMarca.vue';
import GerenciarCampanha from './GerenciarCampanha.vue';
import SolicitacoesMarca from './SolicitacoesMarca.vue';

// const props = defineProps({
//     teste: {
//         type: Array,

//     },

// });


// console.log(props.teste)
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
