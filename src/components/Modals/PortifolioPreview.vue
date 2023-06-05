<template>
    <v-card >
        <v-toolbar color="primary" title="PORTIFÓLIO PREVIEW"></v-toolbar>
        <v-container>
            <v-card class="profile-banner-section mx-auto">
                <div class="top-card-orientation overflow-visible">
                    <v-img src='https://cdn.vuetifyjs.com/images/cards/house.jpg' class="profile-banner" height="250px"
                        cover>
                    </v-img>

                    <div class="profile-user-name-banner">
                        <v-avatar color="white" size="150" class="profile-avatar-cover" rounded="1" flat>
                            <v-avatar size="140" rounded="0">
                                <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                    cover />
                            </v-avatar>
                        </v-avatar>
                    </div>
                    <div class="profile-banner-detalhes">
                        <v-card-title class="profile-banner-username">{{ infos.name_artistic || "Não cadastrado" }}</v-card-title>
                        <v-card-text class="profile-banner-categorias">{{ infos.category || "Não informado" }}</v-card-text>
                    </div>
                </div>

            </v-card>
            <div class="pessoal-section-card">
                <v-card class="pessoal-section">
                    <div class="dados-direcao my-1 mr-16">
                        <v-title>NOME</v-title>
                        <v-text>{{ infos.name || "Não informado"}}</v-text>
                    </div>
                    <div class="dados-direcao my-1 mr-16">
                        <v-title>SE IDENTIFICA</v-title>
                        <v-text>{{ infos.gender || "Não informado"}}</v-text>
                    </div>
                    <div class="dados-direcao my-1 mr-16">
                        <v-title>IDADE</v-title>
                        <v-text>dado1</v-text>
                    </div>
                    <div class="dados-direcao my-1">
                        <v-title>IDIOMA NATIVO</v-title>
                        <v-text>{{ infos.language || "Não informado" }}</v-text>
                    </div>
                </v-card>
            </div>

            <div class="profile-detalhes-section">
                <div class="profile-sobre-section">
                    <v-card class="mt-5" width="1000" rounded="xl">
                        <v-card-title class="profile-sobre-title">SOBRE MIM</v-card-title>
                        <div class="profile-content">
                            <v-text>{{ infos.about_me || "Não informado" }}</v-text>
                        </div>
                    </v-card>
                </div>
            </div>


            <v-container class="galeria-section" width="1000px">
                <v-card class="mx-2 mb-4 pa-2" width="1000px">
                    <v-card-title class="profile-sobre-title mb-5">GALERIA DE FOTOS</v-card-title>

                    <v-row>
                        <v-col v-for="n in 6" :key="n" class="d-flex child-flex" cols="4">
                            <v-img :src="`https://picsum.photos/500/300?image=${n * 5 + 10}`"
                                :lazy-src="`https://picsum.photos/10/6?image=${n * 5 + 10}`" aspect-ratio="1" cover
                                class="bg-grey-lighten-2">
                                <template v-slot:placeholder>
                                    <v-row class="fill-height ma-0" align="center" justify="center">
                                        <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                                    </v-row>
                                </template>
                            </v-img>
                        </v-col>
                    </v-row>
                </v-card>
            </v-container>

            <v-container class="galeria-section" width="1000px">
                <v-card class="mx-2 my-4 pa-2" width="1000px">
                    <v-card-title class="profile-sobre-title mb-5">GALERIA DE VÍDEOS</v-card-title>

                    <v-row>
                        <v-col v-for="n in 3" :key="n" class="d-flex child-flex" cols="4">
                            <v-img :src="`https://picsum.photos/500/300?image=${n * 5 + 10}`"
                                :lazy-src="`https://picsum.photos/10/6?image=${n * 5 + 10}`" aspect-ratio="1" cover
                                class="bg-grey-lighten-2">
                                <template v-slot:placeholder>
                                    <v-row class="fill-height ma-0" align="center" justify="center">
                                        <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                                    </v-row>
                                </template>
                            </v-img>
                        </v-col>
                    </v-row>
                </v-card>
            </v-container>

            <v-col cols="12" md="12" class="d-flex">
                <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated" :width="200"
                    location="bottom">Gerar Link Externo</v-btn>
            </v-col>
        </v-container>

    </v-card>
</template>

<script>
import { useInfluencerInfo} from '@/store/influencerinfo'

export default {
    name: 'PortifolioPreview',

    data: () => ({

    }),
    setup() {
        const infoInfluencer = useInfluencerInfo();
        const infos = infoInfluencer.influencerSelected;
        return{
            infos
        };
    },

    methods: {

    }
}
</script>