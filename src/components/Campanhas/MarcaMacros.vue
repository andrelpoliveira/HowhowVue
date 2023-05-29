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
                <v-slide-group-item v-for="card in campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="250" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="180" cover>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat" rounded="xl"
                                @click="expand = !expand; campaignValue = card;">Detalhes</v-btn>
                        </v-card-actions>
                    </v-card>

                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>
        <!--  -->

        <!-- Desempenhos dos Contratados -->
        <v-col>
            <v-expand-transition v-if="campaigns.id === campaignValue.id">
                <v-card class="gerenciar-section" flat>

                    <v-list v-model:opened="influencers" width="1200" class="overflow-y-auto mb-5" v-if="expand">

                        <v-card-title>DESEMPENHOS</v-card-title>
                        <v-card class="influencer-campanhas-searchbar" flat>
                            <v-text-field class="searchbar-textarea" v-model="search" label="Buscar campanhas..."
                                single-line hide-details>
                                <v-icon class="seachbar-icon" size="default" icon="mdi-magnify" />
                            </v-text-field>
                        </v-card>

                        <v-list-group value="contratados" fluid v-for="item in activeinfluencers" :key="item.id">
                            <template v-slot:activator="{ props }">
                                <v-list-item v-bind="props" :title="item.title" @click="cardValue = item">
                                </v-list-item>
                            </template>

                            <v-list-item v-if="item.id === cardValue.id">
                                <div class="desempenho-card">
                                    <v-card class="ma-2 pa-4" width="350" height="350px" prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg"
                                        :title="item.title" :subtitle="item.categoria">
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Porro soluta eius vel
                                        perspiciatis rerum consequatur. Eveniet ipsam quasi pariatur excepturi numquam iusto
                                        similique possimus ipsa velit, tenetur voluptatem aliquid quo.
                                    </v-card>
                                    <v-card class="ma-2 pa-4" width="350" height="350px">
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Porro soluta eius vel
                                        perspiciatis rerum consequatur. Eveniet ipsam quasi pariatur excepturi numquam iusto
                                        similique possimus ipsa velit, tenetur voluptatem aliquid quo.
                                    </v-card>
                                    <v-card class="ma-2 pa-4" width="350" height="350px">
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Porro soluta eius vel
                                        perspiciatis rerum consequatur. Eveniet ipsam quasi pariatur excepturi numquam iusto
                                        similique possimus ipsa velit, tenetur voluptatem aliquid quo.
                                    </v-card>
                                </div>
                            </v-list-item>
                        </v-list-group>
                    </v-list>
                </v-card>

            </v-expand-transition>
        </v-col>
        <!--  -->

    </v-window-item>
</template>
<style>
.desempenho-card {
    display: flex;
    flex-direction: row;
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
        campaignValue: '',
        influencers: ["contratados"],

        campaigns: [
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '1' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023', campanhaId: '2' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023', campanhaId: '3' },
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '4' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023', campanhaId: '5' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '6' },
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