<template>
    <v-container fluid>
        <v-card>
            <v-data-table :headers="headers" :items="influencers" :sort-by="[{ key: 'name', order: 'asc'}]" class="elevation-1">
                <template v-slot:top>
                    <v-toolbar flat>
                        <v-toolbar-title>Requer atenção</v-toolbar-title>
                    </v-toolbar>
                </template>
            </v-data-table>
        </v-card>
    </v-container>
</template>
<script setup>

</script>
<script>

export default {
    name: 'DataTableInfluencer',

    data: () => ({
        headers: [
            { title: 'Nome do Influencer', align: 'start', sortable: false, key: 'name',},
            { title: '', key: ''},
            { title: 'Youtube', align: 'end', key: 'youtube'},
            { title: 'Facebook', align: 'end', key: 'facebook'},
            { title: 'Instagram', align: 'end', key: 'instagram'},
            { title: 'TikTok', align: 'end', key: 'tiktok'},
            { title: 'Kwai', align: 'end', key: 'kwai'},
            { title: 'Actions', align: 'end', key: 'actions', sortable: false },
        ],
        influencers: []
    }),

    computed:{

    },

    methods: {

    }
}
</script>