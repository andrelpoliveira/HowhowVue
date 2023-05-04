<template>
    <v-container fluid>
        <v-card>
            <v-data-table :headers="headers" :items="influencers" :sort-by="[{ key: 'name', order: 'asc' }]"
                class="elevation-1">
                <template #[`item.actions`]>
                    <v-icon size="small" class="me-2">
                        mdi-pencil
                    </v-icon>
                    <v-icon size="small" >
                        mdi-delete
                    </v-icon>
                </template>
            </v-data-table>
        </v-card>
    </v-container>
</template>
<script setup>

</script>
<script>
import axios from 'axios';

var url = "http://localhost/HowhowVue/howhow/src/services/dados.php";

export default {
    name: 'DataTablesInfluencer',

    data: () => ({
        headers: [
            // { title: '', align: 'start', value: 'picture' },
            { title: 'Nome do Influencer', align: 'start', key: 'nameinfluencer', },
            { title: 'Youtube', align: 'end', key: 'youtube' },
            { title: 'Facebook', align: 'end', key: 'facebook' },
            { title: 'Instagram', align: 'end', key: 'instagram' },
            { title: 'TikTok', align: 'end', key: 'tiktok' },
            { title: 'Kwai', align: 'end', key: 'kwai' },
            { title: 'Status', align: 'end', key: 'statuscampaign' },
            { title: 'Actions', align: 'end', key: 'actions', sortable: false },
        ],
        influencers: []
    }),

    // computed:{
    //     getUser(){
    //       return this.$services.state.user.user
    //     }
    // },

    // mounted(){
    //     this.$services.dispatch('user/selectUser')
    // },
    created() {
        axios.get(url).then(response => {
            this.influencers = response.data;
            console.log(this.influencers);
        })
    },

}
</script>