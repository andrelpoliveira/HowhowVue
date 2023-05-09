<template>
    <v-window-item value="my-campanha-marca">
        <v-card>
            <v-tabs v-model="modelCampaigns" color="blue-lighten-4" align-tabs="center">
                <v-tab value="gerenciarCampanha">Gerenciar Campanha</v-tab>
                <v-tab value="infoCampanha">Informações Campanha</v-tab>
                <v-tab value="editCampanha">Editar Campanha</v-tab>
            </v-tabs>
                <!-- Dashboards Tab-->
                <v-window v-model="modelCampaigns">
                    <!-- <v-window-item value="infoCampanha">
                        <p>Info Campanha</p>
                    </v-window-item> -->
                    <!-- <v-window-item value="editCampanha">
                        <p>Edit Campanha</p>
                    </v-window-item> -->
                    <GerenciarCampanha/>
                    <InfoCampaignsMarca/>
                    <EditCampaignsMarca />
                </v-window>

        </v-card>
    </v-window-item>
    
</template>
<script setup>
import { defineProps } from 'vue';
import EditCampaignsMarca from './EditCampaignsMarca.vue';
import InfoCampaignsMarca from './InfoCampaignsMarca.vue';
import GerenciarCampanha from './GerenciarCampanha.vue';

const props = defineProps({
    teste: {
        type: String,

    },
    // openedit:{
    //     type:Array,

    // },
});

console.log(props)
</script>
<script>
export default {
    data: () => ({
        modelCampaigns: null,
    }),

    components: {
    EditCampaignsMarca,
    InfoCampaignsMarca,
    GerenciarCampanha
}

}
</script>
