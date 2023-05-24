<template>
    <div v-if="authStore.user">
        <div class="profile-redes-section">
            <v-container width="1100" class="card-bg">
                <div class="redes-section">

                    <div class="top-dashboard-section mb-2">
                        <v-card class="dashboard-profile mx-1 pa-2">
                            <v-card class="pa-2 mx-1" width="230px" height="350px">
                                <v-avatar color="white" size="150" class="dashboard-avatar-cover  ma-2" flat>
                                    <v-avatar size="140" rounded="0">
                                        <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                            cover />
                                    </v-avatar>
                                </v-avatar>
                                <v-card-title class="dashboard-username mb-3">@{{ authStore.user.name }}</v-card-title>

                                <v-dialog v-model="dialog1" width="1024">
                                    <template v-slot:activator="{ props }">
                                        <div class="dashboard-btns mt-8 px-5">
                                            <v-btn class="portifolio-btn my-1" v-bind="props">Gerar Portifólio</v-btn>
                                        </div>
                                    </template>
                                    <PortifolioPreview/>
                                </v-dialog>

                            </v-card>
                            <v-card class="mx-1" width="350" height="350px">
                                <v-card-title class="dashboard-card-title">
                                    Conta com o HowBOT
                                </v-card-title>
                                <v-card-text class="dashboard-card-text">
                                    HowBOT irá buscar em suas redes sociais cadastradas os valores necessários para calcular
                                    seu CPM para cada modalidade. Esta ferramenta pode ser ativada a cada 7 dias.
                                </v-card-text>
                                <v-btn class="dashboard-profile-btn my-1">Atualizar CPM</v-btn>
                                <v-card-title class="dashboard-card-title">
                                    Inserir Manualmente
                                </v-card-title>
                                <v-card-text class="dashboard-card-text">
                                    Você pode registrar manualmente os valores de sua modalidade quando quiser. Mas
                                    lembre-se que caso queira usar o HowBOT, será necessário aguardar 7 dias desde sua
                                    ultima ativação.
                                </v-card-text>

                                <!-- Alterar manualmente CPM -->
                                <v-dialog v-model="dialog" width="1024">
                                    <template v-slot:activator="{ props }">
                                        <v-btn class="dashboard-profile-btn my-1" v-bind="props">Alterar CPM</v-btn>
                                    </template>
                                    <AlterarCPM />
                                </v-dialog>

                                <!--  -->
                            </v-card>

                            <v-card class="mx-1 " width="340px" height="350px">
                                <v-card-title class="dashboard-card-title"> Desempenho Mensal</v-card-title>
                                <RedesDonutChart />

                            </v-card>
                            <v-card class="mx-1" width="600" height="350px">
                                <v-card-title class="dashboard-card-title my-2"> Medidor de CPM</v-card-title>
                                <RedesBarsChart />
                            </v-card>
                        </v-card>
                    </div>


                    <v-card class="youtube-section my-1">
                        <v-card class="campanha-info-card ma-2 py-2" width="300" height="auto">
                            <div class="edit-icons ml-3 mb-2">
                                <div class="influencer-card-btns">
                                    <v-img class="card-youtube-icon "
                                        src="./../../assets/images/redes/redes-icons/youtube.svg">
                                    </v-img>
                                </div>
                                <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Youtube</v-card-title>
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
                        <!-- <v-card class=" ma-1" width="400" height="auto">
                            <YoutubeInscritoChart />
                        </v-card> -->
                        <v-card class="campanha-info-card ma-2" width="800" height="280">
                            <RedesColumnChart />
                        </v-card>
                    </v-card>

                    <v-card class="instagram-section my-1">
                        <v-card class="campanha-info-card ma-2 py-2" width="300" height="auto">
                            <div class="edit-icons ml-3 mb-2">
                                <div class="influencer-card-btns">
                                    <v-img class="card-instagram-icon "
                                        src="./../../assets/images/redes/redes-icons/instagram.svg">
                                    </v-img>
                                </div>
                                <v-card-title
                                    class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Instagram</v-card-title>
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
                        <!-- <v-card class="ma-2">
                            <InstagramInscritoChart />
                        </v-card> -->
                        <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card>
                    </v-card>

                    <v-card class="twitter-section my-1">
                        <v-card class="campanha-info-card ma-2 py-2" width="300" height="auto">
                            <div class="edit-icons ml-3 mb-2">
                                <div class="influencer-card-btns">
                                    <v-img class="card-twitter-icon "
                                        src="./../../assets/images/redes/redes-icons/twitter.svg">
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
                        <!-- <v-card class="ma-2">
                            <TwitterInscritoChart />
                        </v-card> -->
                        <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card>
                    </v-card>

                    <v-card class="facebook-section my-1">
                        <v-card class="campanha-info-card ma-2 py-2" width="300" height="auto">
                            <div class="edit-icons ml-3 mb-2">
                                <div class="influencer-card-btns">
                                    <v-img class="card-facebook-icon "
                                        src="./../../assets/images/redes/redes-icons/facebook.svg">
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
                        <!-- <v-card class="ma-2">
                            <FacebookInscritoChart />
                        </v-card> -->
                        <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card>
                    </v-card>

                    <v-card class="tiktok-section my-1">
                        <v-card class="campanha-info-card ma-2 py-2" width="300" height="auto">
                            <div class="edit-icons ml-3 mb-2">
                                <div class="influencer-card-btns">
                                    <v-img class="card-tiktok-icon "
                                        src="./../../assets/images/redes/redes-icons/tik_tok.svg">
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
                        <!-- <v-card class="ma-2">
                            <TiktokInscritoChart />
                        </v-card> -->
                        <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card>
                    </v-card>

                    <v-card class="kwai-section my-1">
                        <v-card class="campanha-info-card ma-2 py-2" width="300" height="auto">
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
                        <!-- <v-card class="ma-2">
                            <KwaiInscritoChart />
                        </v-card> -->
                        <v-card class="campanha-info-card ma-2 py-2" width="800" height="280">
                            <RedesColumnChart />
                        </v-card>
                    </v-card>

                </div>

            </v-container>
        </div>
    </div>
</template>

<script setup>
//Import Components
import AlterarCPM from '../Modals/AlterarCPM.vue';
import RedesDonutChart from './../ChartsAnalytics/RedesDonutChart.vue';
import RedesColumnChart from './../ChartsAnalytics/RedesColumnChart.vue';
import RedesBarsChart from './../ChartsAnalytics/RedesBarsChart.vue';
import PortifolioPreview from '../Modals/PortifolioPreview.vue';

import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
const authStore = useAuthStore();

onMounted(async () => {
    await authStore.getUser();
})
</script>

<script>
export default {

    components: {
    RedesDonutChart,
    RedesColumnChart,
    RedesBarsChart,
    AlterarCPM,
    PortifolioPreview,
},

    data: () => ({
        dialog1: false,
        dialog: false,
        modelProfile: null,
        chartWidth: 500,
        chartHeight: 350,
        loading: false,
    }),
}
</script>