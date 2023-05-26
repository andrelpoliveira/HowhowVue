<template>
    <v-window-item value="propostasCampanha">
        <v-item-group>
            <!-- https://sample-videos.com/video123/mp4/240/big_buck_bunny_240p_10mb.mp4 -->

            <v-container>
                <v-row>
                    <v-col v-for="activeinfluencer in activeinfluencers" :key="activeinfluencer.id" cols="12" md="3">
                        <v-item>
                            <v-card class="campanhas-cards" height="auto" width="200">

                                <v-img class="influencer-card-img overflow-visible" :src="activeinfluencer.src"
                                    linear-gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" cover>
                                    <v-card-title class="card-influencer-title">{{ activeinfluencer.title
                                    }}</v-card-title>
                                </v-img>

                                <!-- Dados pessoais dos influenciadores -->
                                <div class="influencer-info-short">
                                    <div class="influencer-info">
                                        <v-text>{{ activeinfluencer.categoria }}</v-text>
                                        <v-text>{{ activeinfluencer.seIdentifica }}</v-text>
                                        <v-text>{{ activeinfluencer.idade }}</v-text>
                                        <v-text>{{ activeinfluencer.idioma }}</v-text>
                                    </div>
                                </div>
                                <!--  -->

                                <v-divider></v-divider>

                                <v-dialog transition="dialog-bottom-transition" width="auto">
                                    <template v-slot:activator="{ props }">
                                        <v-card class="influencer-card-btn" flat>
                                            <v-btn class="perfil-btn" width="80%" color="blue-darken-1"
                                                v-bind="props">Proposta</v-btn>
                                        </v-card>
                                    </template>
                                    <template v-slot:default="{ isActive }">
                                        <v-card width="50rem">
                                            <v-toolbar color="primary" align="center"
                                                title="SOLICITAÇÃO DE PARTICIPAÇÃO"></v-toolbar>

                                            <v-card-text class="proposta-text py-2 my-2">
                                                "Turns out semicolon-less style is easier and safer in TS because
                                                most
                                                gotcha edge cases are type invalid as well."
                                            </v-card-text>

                                            <div class="solicitacao-card-orientation">
                                                <v-card-actions class="solicitacao-profile-card ma-2" height="70">
                                                    <v-layout>
                                                        <v-list-item
                                                            prepend-avatar="https://randomuser.me/api/portraits/women/85.jpg"
                                                            class="solicitacao-profile-info">

                                                            <v-list-item-title>{{ activeinfluencer.title
                                                            }}</v-list-item-title>
                                                            <v-list-item-subtitle>{{ activeinfluencer.categoria
                                                            }}</v-list-item-subtitle>
                                                        </v-list-item>
                                                    </v-layout>
                                                    <v-btn class="perfil-btn" color="blue-darken-1">Perfil</v-btn>
                                                </v-card-actions>
                                            </div>

                                            <v-container class="galeria-section" width="50rem">
                                                <v-card class="mx-2 mb-4 pa-2" width="45rem">
                                                    <v-card-title class="profile-sobre-title mb-5">GALERIA DE
                                                        FOTOS</v-card-title>

                                                    <v-row>
                                                        <v-col v-for="n in 6" :key="n" class="d-flex child-flex" cols="4">
                                                            <v-img
                                                                :src="`https://picsum.photos/500/300?image=${n * 5 + 10}`"
                                                                :lazy-src="`https://picsum.photos/10/6?image=${n * 5 + 10}`"
                                                                aspect-ratio="1" cover class="bg-grey-lighten-2">
                                                                <template v-slot:placeholder>
                                                                    <v-row class="fill-height ma-0" align="center"
                                                                        justify="center">
                                                                        <v-progress-circular indeterminate
                                                                            color="grey-lighten-5"></v-progress-circular>
                                                                    </v-row>
                                                                </template>
                                                            </v-img>
                                                        </v-col>
                                                    </v-row>
                                                </v-card>
                                            </v-container>

                                            <v-container class="galeria-section" width="50rem">
                                                <v-card class="mx-2 my-4 pa-2" width="45rem">
                                                    <v-card-title class="profile-sobre-title mb-5">GALERIA DE
                                                        VÍDEOS</v-card-title>

                                                    <v-row>
                                                        <v-col v-for="n in 3" :key="n" class="d-flex child-flex" cols="4">
                                                            <v-img
                                                                :src="`https://picsum.photos/500/300?image=${n * 5 + 10}`"
                                                                :lazy-src="`https://picsum.photos/10/6?image=${n * 5 + 10}`"
                                                                aspect-ratio="1" cover class="bg-grey-lighten-2">
                                                                <template v-slot:placeholder>
                                                                    <v-row class="fill-height ma-0" align="center"
                                                                        justify="center">
                                                                        <v-progress-circular indeterminate
                                                                            color="grey-lighten-5"></v-progress-circular>
                                                                    </v-row>
                                                                </template>
                                                            </v-img>
                                                        </v-col>
                                                    </v-row>
                                                </v-card>
                                            </v-container>



                                            <v-card-actions class="justify-end">
                                                <v-btn variant="text">Contratar</v-btn>
                                                <v-btn variant="text" @click="isActive.value = false">Fechar</v-btn>
                                            </v-card-actions>
                                        </v-card>
                                    </template>
                                </v-dialog>
                            </v-card>
                        </v-item>
                    </v-col>
                </v-row>
            </v-container>
        </v-item-group>

    </v-window-item>
</template>

<script setup>
//Import Components
// import SolicitacoesToMarca from '../Modals/SolicitacoesToMarca.vue';

</script>

<script>
export default {
    components: {
        // SolicitacoesToMarca,
    },

    data: () => ({
        showModal: false,
        index: null,
        model: null,
        activeinfluencers: [
            { id: "1", title: "Username 1", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "21 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Life Style", },
            { id: "2", title: "Username 2", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "26 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "3", title: "Username 3", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "35 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },
            { id: "4", title: "Username 4", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "20 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Curiosidade", },
            { id: "5", title: "Username 5", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "27 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "6", title: "Username 6", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "29 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },
            { id: "7", title: "Username 7", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "22 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Life Hacks", },
            { id: "8", title: "Username 8", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "26 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "9", title: "Username 9", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "30 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },
            { id: "10", title: "Username 10", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "22 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Life Style", },
            { id: "11", title: "Username 11", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "26 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "12", title: "Username 12", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "35 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },
        ],
        items: Array.from({ length: 1000 }, (k, v) => v + 1),
    }),
    methods: {

    },
}
</script>