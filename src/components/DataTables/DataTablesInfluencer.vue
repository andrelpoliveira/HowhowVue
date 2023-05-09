<template>
    <v-container fluid>
        <v-card>
            <v-data-table :headers="headers" :items="influencers" :sort-by="[{ key: 'name', order: 'asc' }]"
                class="elevation-1">
                <template #[`item.picture`]="{ item }">
                    <div class="p-2">
                        <v-img :src="item.picture" width="32"></v-img>
                    </div>
                </template>
                <template #[`item.categoria`]="{ item }">
                    <v-chip>{{ item.raw.categoria }}</v-chip>
                </template>
                <template #[`item.statuscampaign`]="{ item }">
                    <v-chip :color="getColor(item.raw.statuscampaign)">
                        {{ item.raw.statuscampaign }}
                    </v-chip>
                </template>
                <template #[`item.actions`]>
                    <!-- <v-icon size="small" class="me-2">
                        mdi-pencil
                    </v-icon>
                    <v-icon size="small" >
                        mdi-delete
                    </v-icon> -->
                    <v-btn append-icon="mdi-account-multiple-plus" variant="flat" density="comfortable">Convidar</v-btn>
                </template>
            </v-data-table>
        </v-card>
    </v-container>
</template>
<script setup>

</script>
<script>
import axios from 'axios';
import { mapGetters } from 'vuex';
var url = "http://localhost/HowhowVue/howhow/src/services/dados.php";

export default {
    name: 'DataTablesInfluencer',

    data: () => ({
        headers: [
            { title: 'Avatar', align: 'start', key: 'picture', sortable: false },
            { title: 'Nome do Influencer', align: 'start', key: 'nameinfluencer' },
            { title: 'Categorias', align: 'center', key: 'categoria'},
            { title: 'Youtube', align: 'end', key: 'youtube' },
            { title: 'Facebook', align: 'end', key: 'facebook' },
            { title: 'Instagram', align: 'end', key: 'instagram' },
            { title: 'TikTok', align: 'end', key: 'tiktok' },
            { title: 'Kwai', align: 'end', key: 'kwai' },
            { title: 'Status', align: 'center', key: 'statuscampaign' },
            { title: 'Actions', align: 'end', key: 'actions', sortable: false },
        ],
        influencers: []
    }),

    created() {
        axios.get(url).then(response => {
            this.influencers = response.data;
            console.log(this.influencers);
        })
    },

    methods:{
        getColor (statuscampaign){
            if (statuscampaign === "recusado" ) return 'red'
            else if (statuscampaign === "aprovado") return 'green'
            else return 'yellow'
        }
    },
    computed:{
        ...mapGetters(["this.influencers"])
    },

}
</script>