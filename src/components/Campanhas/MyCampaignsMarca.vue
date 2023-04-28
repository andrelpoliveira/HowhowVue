<template>
    <v-window-item value="my-campanha-marca">
        <v-app>
            <v-card>
                <v-tabs v-model="modelCampaigns" color="blue-lighten-4" align-tabs="center">
                    <v-tab :value="infoCampanha">Informações Campanha</v-tab>
                    <v-tab :value="editCampanha">Editar Campanha</v-tab>
                </v-tabs>

                <!-- Dashboards Tab-->
                <v-sheet>
                <v-window v-model="modelCampaigns">
                    <v-window-item value="infoCampanha">
                        <p>Info Campanha</p>
                    </v-window-item>
                    <!-- <v-window-item value="editCampanha">
                        <p>Edit Campanha</p>
                    </v-window-item> -->
                    <EditCampaignsMarca />
                </v-window>

                <v-divider></v-divider>
            </v-sheet>
            </v-card>
        </v-app>
    </v-window-item>
</template>
<script setup>
import { defineProps } from 'vue';
import EditCampaignsMarca from './EditCampaignsMarca.vue';

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
        EditCampaignsMarca
    }

}
</script>
