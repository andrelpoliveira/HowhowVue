<template>
    <v-window-item value="infoCampanha" v-if="authStore.user">
        <v-card class="mx-auto" :border="100" flat>
            <v-container fluid>
                <v-row dense>
                    <v-col cols="12">
                        <v-card class="marca-avatar mx-10">
                            <v-img :src="campaignInfo.campaign_photo" class="align-end"
                                gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>
                                <v-row class="mx-0">
                                    <v-card color="rgba(255,255,255,0)">
                                        <v-card-title class="info-campanha-title">
                                            {{ campaignInfo.name || "Não informado" }}
                                        </v-card-title>
                                    </v-card>
                                </v-row>
                            </v-img>
                        </v-card>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>

        <v-container>
            <v-card-title class="ma-2" align="left">DETALHES
                <v-tooltip text="text here">
                    <template v-slot:activator="{ props }">
                        <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                    </template>
                </v-tooltip>
            </v-card-title>
        </v-container>

        <v-container class="campanha-info-section ">
            <div class="info-section">
                <div class="info-section-avatar">
                    <v-card class="marca-avatar mx-2 pa-1">
                        <v-avatar size="120" rounded="0" class="">
                            <v-img class="profile-avatar-marca" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                cover />
                        </v-avatar>
                    </v-card>
                </div>
                <v-card class="campanha-info-card mx-2 py-2" width="450px" height="128px">
                    <div class="info-dados-direcao">
                        <v-title>CAMPANHA</v-title>
                        <v-text>{{ campaignInfo.name || "Não informado" }}</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>MARCA</v-title>
                        <v-text>{{ campaignInfo.brand_name || "Não informado" }}</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>RAMO</v-title>
                        <v-text>{{ campaignInfo.line_of_business || "Não informado" }}</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>LOCAL</v-title>
                        <v-text>{{ campaignInfo.country || "Não informado" }}</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>VISIBILIDADE</v-title>
                        <v-text v-if="campaignInfo.private === 0">Pública</v-text>
                        <v-text v-else>Privada</v-text>
                    </div>
                </v-card>
                <v-card class="campanha-info-card mx-2" width="450px" height="128px">
                    <div class="proposta-content">
                        <v-title>PROPOSTA</v-title>
                        <v-text class="mt-2 px-2">{{ campaignInfo.campaign_purpose || "Não informado" }}</v-text>
                    </div>
                </v-card>
            </div>
        </v-container>

        <v-container>
            <v-divider></v-divider>
            <div class="btn-position">
                <v-card-title class="ml-2 mt-4" align="left">PROPOSTA(S) E MODALIDADES
                    <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
                </v-card-title>
                <div v-if="authStore.user.role === 'influencer' || 'agency'">
                    <v-dialog v-model="dialog" width="1024">
                        <template v-slot:activator="{ props }">
                            <div class="dashboard-btns mt-2 px-5">
                                <v-btn class="" append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated"
                                    width="150" v-bind="props">Enviar Proposta</v-btn>
                            </div>
                        </template>
                        <EnviarProposta />
                    </v-dialog>
                </div>
            </div>
        </v-container>

        <v-container class="info-modalidades-cards px-12">
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.youtube === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Youtube</v-card-title>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_vd_insertion > 0">
                    <v-title>Inserção em vídeo</v-title>
                    <v-text>{{ campaignInfo.content_type.yt_vd_insertion }}</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_vd_dedicated > 0">
                    <v-title>Vídeo dedicado</v-title>
                    <v-text>{{ campaignInfo.content_type.yt_vd_dedicated }}</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_repost > 0">
                    <v-title>Repost</v-title>
                    <v-text>{{ campaignInfo.content_type.yt_repost }}</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_post_community > 0">
                    <v-title>Post na Comunidade</v-title>
                    <v-text>{{ campaignInfo.content_type.yt_post_community }}</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_short > 0">
                    <v-title>Short dedicado</v-title>
                    <v-text>{{ campaignInfo.content_type.yt_short }}</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_sh_insertion > 0">
                    <v-title>Inserção em short</v-title>
                    <v-text>{{ campaignInfo.content_type.yt_sh_insertion }}</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_live">
                    <v-title>Live Patrocinada</v-title>
                    <v-text>Sim</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.yt_presential">
                    <v-title>Campanha Presencial</v-title>
                    <v-text>Sim</v-text>
                </div>
            </v-card>
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.instagram === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-instagram-icon " src="./../../assets/images/redes/redes-icons/instagram.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Instagram</v-card-title>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.ist_insertion > 0">
                    <v-title>Inserção em vídeo</v-title>
                    <v-text>dado1</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.ist_vd_dedicated > 0">
                    <v-title>Vídeo dedicado</v-title>
                    <v-text>dado1</v-text>
                </div>
                <div class="info-dados-direcao" v-if="campaignInfo.content_type.ist_repost > 0">
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.facebook === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-facebook-icon " src="./../../assets/images/redes/redes-icons/facebook.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Facebook</v-card-title>
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.twitter === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-twitter-icon " src="./../../assets/images/redes/redes-icons/twitter.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Twitter</v-card-title>
                </div>
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.kwai === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-kwai-icon" src="./../../assets/images/redes/redes-icons/kwai.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Kwai</v-card-title>
                </div>
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.tiktok === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-tiktok-icon " src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">TikTok</v-card-title>
                </div>
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto"
                v-if="campaignInfo.social_media.howhow === true">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-howhow-icon " src="./../../assets/images/icon-logo/favicon-32x32.png">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Outros</v-card-title>
                </div>
                <div class="info-dados-direcao">
                    <v-title>Remarketing</v-title>
                    <v-text>dado1</v-text>
                </div>
                <div class="info-dados-direcao">
                    <v-title>Link na Bio</v-title>
                    <v-text>dado1</v-text>
                </div>
                <div class="info-dados-direcao">
                    <v-title>Link no Descrição</v-title>
                    <v-text>dado1</v-text>
                </div>
                <div class="info-dados-direcao">
                    <v-title>Link no Comentário</v-title>
                    <v-text>dado1</v-text>
                </div>

            </v-card>
        </v-container>

        <div v-if="authStore.user.role === 'influencer'">
            <v-container>
                <v-divider></v-divider>
                <div class="btn-position">
                    <v-card-title class="ml-2 mt-4" align="left">PROPOSTA(S) E MODALIDADES
                        <v-tooltip text="text here">
                            <template v-slot:activator="{ props }">
                                <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                            </template>
                        </v-tooltip>
                    </v-card-title>

                    <v-dialog v-model="dialog1" width="1024">
                        <template v-slot:activator="{ props }">
                            <div class="dashboard-btns mt-2 px-5">
                                <v-btn class="" append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated"
                                    width="150" v-bind="props">Dropbox</v-btn>
                            </div>
                        </template>
                        <PropostaDropbox />
                    </v-dialog>
                </div>
            </v-container>

            <v-container class="info-modalidades-cards px-12">
                <v-card class="ma-2" width="1100" height="auto">
                    <v-card class="campanha-info-card ma-1">
                        <div class="edit-icons ml-3 ">
                            <div class="influencer-card-btns">
                                <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-lg-h6 font-weight-bold">Youtube</v-card-title>
                        </div>
                        <div class="info-dados-direcao">
                            <v-title class="text-lg-h8 font-weight-bold">Modalidade(s)</v-title>
                            <v-text class="text-lg-h8 font-weight-bold">@links</v-text>
                        </div>
                    </v-card>

                    <v-card class="campanha-info-card ma-1">
                        <div class="edit-icons ml-3 ">
                            <div class="influencer-card-btns">
                                <v-img class="card-instagram-icon "
                                    src="./../../assets/images/redes/redes-icons/instagram.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-lg-h6 font-weight-bold">Instagram</v-card-title>
                        </div>
                        <div class="info-dados-direcao">
                            <v-title class="text-lg-h8 font-weight-bold">Modalidade(s)</v-title>
                            <v-text class="text-lg-h8 font-weight-bold">@links</v-text>
                        </div>
                    </v-card>
                    <v-card class="campanha-info-card ma-1">
                        <div class="edit-icons ml-3 ">
                            <div class="influencer-card-btns">
                                <v-img class="card-twitter-icon " src="./../../assets/images/redes/redes-icons/twitter.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-lg-h6 font-weight-bold">Twitter</v-card-title>
                        </div>
                        <div class="info-dados-direcao">
                            <v-title class="text-lg-h8 font-weight-bold">Modalidade(s)</v-title>
                            <v-text class="text-lg-h8 font-weight-bold">@links</v-text>
                        </div>
                    </v-card>
                    <v-card class="campanha-info-card ma-1">
                        <div class="edit-icons ml-3 ">
                            <div class="influencer-card-btns">
                                <v-img class="card-facebook-icon "
                                    src="./../../assets/images/redes/redes-icons/facebook.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-lg-h6 font-weight-bold">Facebook</v-card-title>
                        </div>
                        <div class="info-dados-direcao">
                            <v-title class="text-lg-h8 font-weight-bold">Modalidade(s)</v-title>
                            <v-text class="text-lg-h8 font-weight-bold">@links</v-text>
                        </div>
                    </v-card>
                    <v-card class="campanha-info-card ma-1">
                        <div class="edit-icons ml-3 ">
                            <div class="influencer-card-btns">
                                <v-img class="card-tiktok-icon " src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-lg-h6 font-weight-bold">TikTok</v-card-title>
                        </div>
                        <div class="info-dados-direcao">
                            <v-title class="text-lg-h8 font-weight-bold">Modalidade(s)</v-title>
                            <v-text class="text-lg-h8 font-weight-bold">@links</v-text>
                        </div>
                    </v-card>
                    <v-card class="campanha-info-card ma-1">
                        <div class="edit-icons ml-3 ">
                            <div class="influencer-card-btns">
                                <v-img class="card-kwai-icon " src="./../../assets/images/redes/redes-icons/kwai.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-lg-h6 font-weight-bold">Kwai</v-card-title>
                        </div>
                        <div class="info-dados-direcao">
                            <v-title class="text-lg-h8 font-weight-bold">Modalidade(s)</v-title>
                            <v-text class="text-lg-h8 font-weight-bold">@links</v-text>
                        </div>
                    </v-card>
                </v-card>
            </v-container>
        </div>

    </v-window-item>
</template>

<style>
.btn-position {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
}
</style>

<script setup>



</script>
<script>
import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import EnviarProposta from '../Modals/EnviarProposta.vue';
import PropostaDropbox from '../Modals/PropostaDropbox.vue';
import { useCampaignStore } from '@/store/campaign';

export default {
    name: 'InfoCampaignsMarca',
    data: () => ({
        detailsCampaigns: null,
        dialog: false,
        dialog1: false,
        activeinfluencers: [
            { id: '1', title: 'Username 1', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '21 anos', seIdentifica: 'elo/delo', idioma: 'Português BR', categoria: 'Life Style', },
            { id: '2', title: 'Username 2', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '26 anos', seIdentifica: 'ele/dele', idioma: 'Português BR', categoria: 'Games', },
            { id: '3', title: 'Username 3', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '35 anos', seIdentifica: 'ela/dela', idioma: 'Português BR', categoria: 'Make up', },
            { id: '4', title: 'Username 4', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '20 anos', seIdentifica: 'elo/delo', idioma: 'Português BR', categoria: 'Curiosidade', },
            { id: '5', title: 'Username 5', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '27 anos', seIdentifica: 'ele/dele', idioma: 'Português BR', categoria: 'Games', },
            { id: '6', title: 'Username 6', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '29 anos', seIdentifica: 'ela/dela', idioma: 'Português BR', categoria: 'Make up', },
            { id: '7', title: 'Username 7', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '22 anos', seIdentifica: 'elo/delo', idioma: 'Português BR', categoria: 'Life Hacks', },
            { id: '8', title: 'Username 8', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '26 anos', seIdentifica: 'ele/dele', idioma: 'Português BR', categoria: 'Games', },
            { id: '9', title: 'Username 9', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '30 anos', seIdentifica: 'ela/dela', idioma: 'Português BR', categoria: 'Make up', },
            { id: '10', title: 'Username 10', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '22 anos', seIdentifica: 'elo/delo', idioma: 'Português BR', categoria: 'Life Style', },
            { id: '11', title: 'Username 11', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '26 anos', seIdentifica: 'ele/dele', idioma: 'Português BR', categoria: 'Games', },
            { id: '12', title: 'Username 12', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', idade: '35 anos', seIdentifica: 'ela/dela', idioma: 'Português BR', categoria: 'Make up', },
        ],
    }),
    setup() {
        const campaignStore = useCampaignStore();
        const campaignInfo = campaignStore.campaignSelected;
        const authStore = useAuthStore();

        onMounted(async () => {
            await authStore.getUser();
            await authStore.getOwnProfile();
        })
        return {
            campaignInfo,
            campaignStore,
            authStore
        };
    },

    components: {
        EnviarProposta,
        PropostaDropbox
    }

}
</script>
