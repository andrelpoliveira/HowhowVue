<template>
    <v-window-item value="op10">
        <v-card class="influencer-campanhas-searchbar" flat>
            <v-text-field class="searchbar-textarea" v-model="search" label="Buscar campanhas..." single-line hide-details>
                <v-icon class="seachbar-icon" size="default" icon="mdi-magnify" />
            </v-text-field>
        </v-card>
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">CAMPANHAS REALIZADAS
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <v-divider></v-divider>
        <v-card class="influencer-campanhas-searchbar" flat>
            <v-text-field class="searchbar-textarea" v-model="search" label="Buscar campanhas..." single-line hide-details>
                <v-icon class="seachbar-icon" size="default" icon="mdi-magnify" />
            </v-text-field>
        </v-card>

        <v-card class="gerenciar-section" flat>
            <v-card-title>Gerenciador de campanha</v-card-title>
            <v-divider></v-divider>
            <v-list v-model:opened="requer" max-height="300" class="overflow-y-auto">
                <v-list-group value="atencao" fluid>
                    <template v-slot:activator="{ props }">
                        <v-list-item v-bind="props" title="Requer atenção">
                        </v-list-item>
                    </template>
                    <v-list-item lines="one" title="UsuarioTeste" subtitle="Categorias"
                        prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg">

                    </v-list-item>
                </v-list-group>
            </v-list>

            <v-divider></v-divider>
            <v-list v-model:opened="em" max-height="300" class="overflow-y-auto">
                <v-list-group value="processo" fluid>
                    <template v-slot:activator="{ props }">
                        <v-list-item v-bind="props" title="Em processo">
                        </v-list-item>
                    </template>
                    <v-list-item lines="one" title="UsuarioTeste" subtitle="Categorias"
                        prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg">

                    </v-list-item>
                </v-list-group>
            </v-list>
        </v-card>

    </v-window-item>
</template>
<script>
export default {
    name: 'AllCampaignsInfluencer',
    data: () => ({
        search: '',
        show: false,
        requer: ["atencao"],
        em: ["processo"],
        open: ["proposta"],
        
        campaigns: [
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '1' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023', campanhaId: '2' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023', campanhaId: '3' },
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '4' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023', campanhaId: '5' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '6' },
        ],

    }),
}
</script>
<script setup>

</script>