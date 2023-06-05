<template>
    <v-window-item value="op10">
        <!-- Barra de busca -->
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
        <!--  -->

        <!-- Camapnhas Ativas e Concluídas -->
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in campaigns" :key="card.id">
                    <v-card :class="'campanhas-cards ma-2'" height="250" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="180" cover>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat" rounded="xl"
                                @click="expand = !expand; cardValue = card">Detalhes</v-btn>
                        </v-card-actions>
                    </v-card>

                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>
        <!--  -->
        <!-- Desempenhos dos Contratados -->
        <v-expand-transition v-for="card in campaigns" :key="card.id" class="ma-2">
            <v-container v-if="card.id === cardValue.id">
                <v-card v-if="expand" class="pa-2">
                    <v-card-title>DESEMPENHOS</v-card-title>

                    <v-list v-model:opened="open">
                        <v-list-group value="contratados">
                            <template v-slot:activator="{ props }">
                                <v-list-item v-bind="props" prepend-icon="mdi-account-circle"
                                    title="CONTRATADOS"></v-list-item>
                            </template>

                            <v-container>
                                <v-card class="influencer-campanhas-searchbar" flat>
                                    <v-text-field class="searchbar-textarea" v-model="search" label="Buscar campanhas..."
                                        single-line hide-details>
                                        <v-icon class="seachbar-icon" size="default" icon="mdi-magnify" />
                                    </v-text-field>
                                </v-card>
                            </v-container>

                            <div v-for="item in activeinfluencers" :key="item.id">
                                <v-list v-model:opened="userCard" @click="userId = item">
                                <v-list-group value="influencers">
                                    <template v-slot:activator="{ props }">
                                        <v-list-item v-bind="props" prepend-icon="mdi-account-circle"
                                            :title=item.title v-if="item.id === userId.id"></v-list-item>
                                    </template>
                                    
                                    <v-list-item ></v-list-item>

                                </v-list-group>
                            </v-list>
                            </div>

                        </v-list-group>
                    </v-list>
                </v-card>
            </v-container>
        </v-expand-transition>
        <!--  -->


    </v-window-item>
</template>
<style>
.desempenho-card {
    display: flex;
    flex-direction: row;
}

.card-orientation {
    display: flex !important;
    flex-direction: column !important;
    justify-content: center !important;
    align-items: center;
}
</style>

<script>
export default {
    name: 'AllCampaignsInfluencer',
    data: () => ({
        search: '',
        show: false,
        expand: false,
        cardValue: '',
        userId: '',
        campaignid: '',
        open: ['contratados'],
        userCard: ['influencers'],
        campaigns: [
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023', id: '1' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023', id: '2' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023', id: '3' },
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023', id: '4' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023', id: '5' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023', id: '6' },
        ],
        activeinfluencers: [
            { id: "1", title: "Username 1", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "21 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Life Style", },
            { id: "2", title: "Username 2", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "26 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "3", title: "Username 3", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "35 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },

        ],
    }),

}
</script>
<script setup>

</script>