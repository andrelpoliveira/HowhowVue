<template>
    <!-- Campanhas Ativas -->
    <v-window-item value="op6" flat floating>
        <v-item-group v-model="model">
            <v-card class="influencer-campanhas-searchbar" flat>
                <v-text-field class="searchbar-textarea" v-model="search" label="Buscar campanhas..." single-line
                    hide-details>
                    <v-icon class="seachbar-icon" size="default" icon="mdi-magnify" />
                </v-text-field>
            </v-card>

            <!-- Meus influenciadores -->
            <v-divider></v-divider>
            <v-card-title class="ma-2" align="left">MEUS INFLUENCER
                <v-tooltip text="text here">
                    <template v-slot:activator="{ props }">
                        <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                    </template>
                </v-tooltip>
            </v-card-title>


            <div class="gerenciar-section-agency">
                <!-- Cards dos influenciadores -->
                <div v-for="activeinfluencer in activeinfluencers" :key="activeinfluencer.id" class="side-panel">
                    <v-item>
                        <v-card class="sidebyside pa-1 ma-2">
                            <v-card class="campanhas-cards my-2" height="auto" min-width="240">

                                <v-img class="influencer-card-img overflow-visible" :src="activeinfluencer.src"
                                    linear-gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" cover>
                                    <v-card-title class="card-influencer-title">{{ activeinfluencer.title
                                    }}</v-card-title>
                                </v-img>
                                <v-divider></v-divider>
                                <div class="influencer-card-btns">
                                    <v-img class="card-youtube-icon "
                                        src="./../../assets/images/redes/redes-icons/youtube.svg">
                                        <v-btn flat color="rgba(255,255,255,0)"
                                            @click="expand = !expand; cardValue = activeinfluencer; expand1 = false; expand2 = false; expand3 = false; expand4 = false; expand5 = false">
                                        </v-btn>
                                    </v-img>

                                    <v-img class="card-instagram-icon"
                                        src="./../../assets/images/redes/redes-icons/instagram.svg">
                                        <v-btn flat color="rgba(255,255,255,0)"
                                            @click="expand1 = !expand1; cardValue = activeinfluencer; expand = false; expand2 = false; expand3 = false; expand4 = false; expand5 = false">
                                        </v-btn>
                                    </v-img>

                                    <v-img class="card-twitter-icon"
                                        src="./../../assets/images/redes/redes-icons/twitter.svg">
                                        <v-btn flat color="rgba(255,255,255,0)"
                                            @click="expand2 = !expand2; cardValue = activeinfluencer; expand = false; expand1 = false; expand3 = false; expand4 = false; expand5 = false">
                                        </v-btn>
                                    </v-img>

                                    <v-img class="card-facebook-icon"
                                        src="./../../assets/images/redes/redes-icons/facebook.svg">
                                        <v-btn flat color="rgba(255,255,255,0)"
                                            @click="expand3 = !expand3; cardValue = activeinfluencer; expand = false; expand1 = false; expand2 = false; expand4 = false; expand5 = false">
                                        </v-btn>
                                    </v-img>

                                    <v-img class="card-tiktok-icon"
                                        src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                                        <v-btn flat color="rgba(255,255,255,0)"
                                            @click="expand4 = !expand4; cardValue = activeinfluencer; expand = false; expand1 = false; expand2 = false; expand3 = false; expand5 = false">
                                        </v-btn>
                                    </v-img>

                                    <v-img class="card-kwai-icon" src="./../../assets/images/redes/redes-icons/kwai.svg">
                                        <v-btn flat color="rgba(255,255,255,0)"
                                            @click="expand5 = !expand5; cardValue = activeinfluencer; expand = false; expand1 = false; expand2 = false; expand3 = false; expand4 = false">
                                        </v-btn>
                                    </v-img>

                                </div>
                                <v-divider></v-divider>

                                <!-- Dados pessoais dos influenciadores -->
                                <div class="influencer-info-short">
                                    <div class="influencer-info">
                                        <v-text>{{ activeinfluencer.categoria }}</v-text>
                                        <v-text>{{ activeinfluencer.genero }}</v-text>
                                        <v-text>{{ activeinfluencer.idade }}</v-text>
                                        <v-text>{{ activeinfluencer.seIdentifica }}</v-text>
                                        <v-text>{{ activeinfluencer.idioma }}</v-text>
                                    </div>
                                </div>
                                <!--  -->

                                <v-divider></v-divider>
                                <v-dialog v-model="dialog" width="1024">
                                    <template v-slot:activator="{ props }">
                                        <div class="influencer-card-btn">
                                            <v-btn class="perfil-btn" width="80%" color="blue-darken-1" v-bind="props"
                                                @click="cardValue = activeinfluencer">Perfil</v-btn>
                                        </div>
                                    </template>
                                    <portifolio-preview />
                                </v-dialog>
                                <div class="influencer-card-btn">
                                    <v-btn class="perfil-btn" width="80%" color="blue-darken-1"
                                        @click="expand6 = !expand6; cardValue = activeinfluencer; expand = false; expand1 = false; expand2 = false; expand3 = false; expand4 = false; expand5 = false">Campanhas
                                        Ativas</v-btn>
                                </div>
                            </v-card>

                            <!-- Tansition Redes -->
                            <div>

                                <v-expand-transition v-if="activeinfluencer.id === cardValue.id" class="expanded">
                                    <v-card v-if="expand" width="220" height="440" class="mx-2">
                                        <v-card-title
                                            class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Youtube</v-card-title>
                                        <div class="info-dados-direcao">
                                            <v-title>Inserção em vídeo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Vídeo dedicado</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Repost</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Post na Comunidade</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Short dedicado</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Inserção em short</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Live Patrocinada</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Campanha Presencial</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                    </v-card>

                                    <v-card v-else-if="expand1" width="220" height="440" class="mx-2">
                                        <v-card-title
                                            class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Instagram</v-card-title>
                                        <div class="info-dados-direcao">
                                            <v-title>Inserção em vídeo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Vídeo dedicado</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Repost</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Post no Feed</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Combo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Live Patrocinada</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                    </v-card>

                                    <v-card v-else-if="expand2" width="220" height="440" class="mx-2">
                                        <v-card-title
                                            class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Twitter</v-card-title>
                                        <div class="py-2">
                                            <div class="info-dados-direcao">
                                                <v-title>Retweet da Marca</v-title>
                                                <v-text>dado1</v-text>
                                            </div>
                                            <div class="info-dados-direcao">
                                                <v-title>Post</v-title>
                                                <v-text>dado1</v-text>
                                            </div>
                                        </div>
                                    </v-card>

                                    <v-card v-else-if="expand3" width="220" height="440" class="mx-2">
                                        <v-card-title
                                            class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Facebook</v-card-title>
                                        <div class="info-dados-direcao">
                                            <v-title>Vídeo dedicado</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Repost</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Post no Feed</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Story</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Combo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Live Patrocinada</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                    </v-card>

                                    <v-card v-else-if="expand4" width="220" height="440" class="mx-2">
                                        <v-card-title
                                            class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">TikTok</v-card-title>
                                        <div class="info-dados-direcao">
                                            <v-title>Inserção em vídeo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Vídeo dedicado</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Repost</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Post no Feed</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Combo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Live Patrocinada</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                    </v-card>

                                    <v-card v-else-if="expand5" width="220" height="440" class="mx-2">
                                        <v-card-title
                                            class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Kwai</v-card-title>
                                        <div class="info-dados-direcao">
                                            <v-title>Inserção em vídeo</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Vídeo dedicado</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Repost</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Live Patrocinada</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                        <div class="info-dados-direcao">
                                            <v-title>Impulsionamento</v-title>
                                            <v-text>dado1</v-text>
                                        </div>
                                    </v-card>

                                    <v-card v-else-if="expand6" width="900" height="440" class="mx-2">
                                        <v-card-title class="ma-2" align="left">ATIVAS
                                            <v-tooltip text="text here">
                                                <template v-slot:activator="{ props }">
                                                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)"
                                                        v-bind="props" />
                                                </template>
                                            </v-tooltip>
                                        </v-card-title>

                                        <v-sheet class="mx-auto">
                                            <v-slide-group v-model="model" class="pa-2" show-arrows>
                                                <v-slide-group-item v-for="completedCampaign in completedCampaigns"
                                                    :key="completedCampaign.title" v-slot="{ selectedClass }">
                                                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto"
                                                        width="240">
                                                        <v-img :src="completedCampaign.src" class="align-end"
                                                            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                                                            height="250" cover>
                                                            <v-avatar color="white" variant="elevated" size="64"
                                                                class="minhas-cards-avatar">
                                                                <v-avatar size="60"><v-img :src="completedCampaign.src"
                                                                        cover></v-img></v-avatar>
                                                            </v-avatar>
                                                            <v-card-title class="campanhas-cards-title"
                                                                v-text="completedCampaign.title"></v-card-title>
                                                            <v-row class="mx-0">
                                                                <v-card-text class="campanhas-cards-marca-name"
                                                                    v-text="completedCampaign.text"></v-card-text>
                                                            </v-row>
                                                        </v-img>

                                                        <v-card-actions class="d-flex align-center justify-center ma-2">
                                                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus"
                                                                variant="flat" rounded="xl">Informações</v-btn>
                                                        </v-card-actions>

                                                    </v-card>
                                                </v-slide-group-item>
                                            </v-slide-group>
                                        </v-sheet>
                                    </v-card>
                                </v-expand-transition>

                            </div>
                            <!--  -->
                        </v-card>
                    </v-item>
                </div>
            </div>
        </v-item-group>
    </v-window-item>
    <v-spacer></v-spacer>
</template>
<style>
.gerenciar-section-agency {
    width: 1300px !important;
    display: flex !important;
    flex-direction: column !important;

}

.side-panel {
    display: flex !important;
    flex-direction: row;
    align-items: center;
}

.expanded {
    border-radius: 12px !important;
}

.sidebyside {
    display: flex;
    flex-direction: row;
    align-items: center;

}
</style>
<script>
export default {
    data: () => ({
        expand: false,
        expand1: false,
        expand2: false,
        expand3: false,
        expand4: false,
        expand5: false,
        expand6: false,
        cardValue: "",
        dialog: false,
        index: null,
        model: null,
        activeinfluencers: [
            { id: "1", title: "Username 1", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "21 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Life Style", },
            { id: "2", title: "Username 2", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "26 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "3", title: "Username 3", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "35 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },
            { id: "4", title: "Username 4", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "20 anos", seIdentifica: "elo/delo", idioma: "Português BR", categoria: "Curiosidade", },
            { id: "5", title: "Username 5", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "27 anos", seIdentifica: "ele/dele", idioma: "Português BR", categoria: "Games", },
            { id: "6", title: "Username 6", src: "https://cdn.vuetifyjs.com/images/cards/house.jpg", idade: "29 anos", seIdentifica: "ela/dela", idioma: "Português BR", categoria: "Make up", },

        ],
        completedCampaigns: [
            { title: 'Lorem 1', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', info: '', status: 'Concluída', rate: '3.5' },
            { title: 'Lorem 2', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', info: '', status: '', rate: '' },
            { title: 'Lorem 3', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', info: '', status: '', rate: '' },
            { title: 'Lorem 4', src: '', info: '', status: '', rate: '' },
            { title: 'Lorem 5', src: '', info: '', status: '', rate: '' },
            { title: 'Lorem 6', src: '', info: '', status: '', rate: '' },
        ],
        items: Array.from({ length: 1000 }, (k, v) => v + 1),
    }),
    methods: {
        activeRow(index) {
            this.index = index;
            console.log(index);
        },
    },
    components: {
        PortifolioPreview
    }
}
</script>
<script setup>
import PortifolioPreview from '../Modals/PortifolioPreview.vue';


</script>
