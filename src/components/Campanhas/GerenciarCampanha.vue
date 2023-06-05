<template>
    <v-window-item value="gerenciarCampanha">
        <v-item-group v-model="model">
            <v-container>
                <!-- nav-bar de gerenciamento de influenciadores da campanha -->

                <v-navigation-drawer class="right-sidebar" permanent location="right" elevation="8">
                    <template v-slot:prepend>

                        <v-card class="gerenciar-section overflow-y-auto" flat>
                            <v-card-title>Gerenciador de campanha</v-card-title>
                            <v-divider></v-divider>
                            <v-list v-model:opened="requer" max-height="300" class="overflow-y-auto">
                                <v-list-group value="atencao" fluid>
                                    <template v-slot:activator="{ props }">
                                        <v-list-item v-bind="props" title="Requer atenção">
                                        </v-list-item>
                                    </template>
                                    <v-list-item lines="one" v-for="item in activeinfluencers" :key="item.title"
                                        :title="item.title" :subtitle="item.categoria"
                                        prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg">
                                        <template v-slot:append>
                                            <v-btn color="green-lighten-1" icon="mdi-information" variant="text"></v-btn>
                                            <v-btn color="red-lighten-1" icon="mdi-information" variant="text"></v-btn>
                                        </template>
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
                                    <v-list-item lines="one" v-for="item in activeinfluencers" :key="item.title"
                                        :title="item.title" :subtitle="item.categoria"
                                        prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg">
                                        <template v-slot:append>
                                            <v-btn color="green-lighten-1" icon="mdi-information" variant="text"></v-btn>
                                            <v-btn color="red-lighten-1" icon="mdi-information" variant="text"></v-btn>
                                        </template>
                                    </v-list-item>
                                </v-list-group>
                            </v-list>
                        </v-card>
                    </template>
                </v-navigation-drawer>

                <!--  -->
                <v-main>
                    <div class="gerenciar-section-marca" v-if="influencersStore.allinfluencers">
                        <!-- Cards dos influenciadores -->
                        <div v-for="activeinfluencer in influencersStore.allinfluencers" :key="activeinfluencer.name"
                            class="side-panel">
                            <v-item>
                                <v-card class="campanhas-cards my-2" height="auto" min-width="240">

                                    <v-img class="influencer-card-img overflow-visible"
                                        :src="activeinfluencer.profile_photo_path || 'https://cdn.vuetifyjs.com/images/cards/house.jpg'"
                                        linear-gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" cover>
                                        <v-card-title class="card-influencer-title">{{ activeinfluencer.name_artistic ||
                                            "Não informado" }}</v-card-title>
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

                                        <v-img class="card-kwai-icon"
                                            src="./../../assets/images/redes/redes-icons/kwai.svg">
                                            <v-btn flat color="rgba(255,255,255,0)"
                                                @click="expand5 = !expand5; cardValue = activeinfluencer; expand = false; expand1 = false; expand2 = false; expand3 = false; expand4 = false">
                                            </v-btn>
                                        </v-img>

                                    </div>
                                    <v-divider></v-divider>

                                    <!-- Dados pessoais dos influenciadores -->
                                    <div class="influencer-info-short">
                                        <div class="influencer-info">
                                            <v-text>{{ activeinfluencer.category || "Não informado" }}</v-text>
                                            <v-text>{{ activeinfluencer.gender || "Não informado" }}</v-text>
                                            <v-text>{{ activeinfluencer.idade || "Não informado" }}</v-text>
                                            <v-text>{{ activeinfluencer.language || "Não informado" }}</v-text>
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="influencer-card-btn">
                                        <v-btn class="perfil-btn" width="80%" color="blue-darken-1"
                                            @click="influencerInfo.getInfluencer(activeinfluencer); dialog = true">Perfil</v-btn>
                                    </div>
                                    <v-divider></v-divider>

                                    <v-divider></v-divider>

                                    <div class="influencer-card-btn">
                                        <v-btn class="perfil-btn" width="80%" color="blue-darken-1">Contratar</v-btn>
                                    </div>
                                </v-card>
                            </v-item>

                            <!-- Tansition Redes -->
                            <div>
                                <v-col>
                                    <v-expand-transition v-if="activeinfluencer.name === cardValue.name" class="expanded">
                                        <v-card v-if="expand" width="220" height="220" class="mx-auto">
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

                                        <v-card v-else-if="expand1" width="220" height="150" class="mx-auto">
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

                                        <v-card v-else-if="expand2" width="220" height="100" class="mx-auto">
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

                                        <v-card v-else-if="expand3" width="220" height="180" class="mx-auto">
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

                                        <v-card v-else-if="expand4" width="220" height="180" class="mx-auto">
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

                                        <v-card v-else-if="expand5" width="220" height="160" class="mx-auto">
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

                                        <v-card v-else-if="expand6" width="220" height="120" class="mx-auto">
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
                                        </v-card>
                                    </v-expand-transition>
                                </v-col>
                            </div>
                            <!--  -->
                        </div>
                    </div>
                    <v-dialog v-model="dialog" width="1024">
                        <portifolio-preview />
                    </v-dialog>
                </v-main>
            </v-container>
        </v-item-group>
    </v-window-item>
</template>

<style>
.gerenciar-section-marca {
    width: 1300px !important;
    display: flex !important;
    flex-wrap: wrap !important;
    flex-direction: row !important;
}

.side-panel {
    display: flex !important;
    flex-direction: row;
    align-items: center;
}

.expanded {
    border-radius: 12px !important;
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
        cardValue: '',
        dialog: false,
        requer: ["atencao"],
        em: ["processo"],
        open: ["proposta"],
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
        activeRow(index) {
            this.index = index;
            console.log(index);
        },
        verificaInfluencer() {
            this.dialog = true
        }
    },
    components: {
        PortifolioPreview
    }
}
</script>
<script setup>
import PortifolioPreview from '../Modals/PortifolioPreview.vue';
import { useAuthStore } from '@/store/auth';
import { useInfluencerInfo } from '@/store/influencerinfo';
import { onMounted } from 'vue';

const influencersStore = useAuthStore();
const influencerInfo = useInfluencerInfo();

onMounted(async () => {
    await influencersStore.getBrandInfluencers();
})

</script>
