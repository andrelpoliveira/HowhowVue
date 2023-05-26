<template>
    <div v-if="authStore.user">
        <div class="profile-redes-section">
            <v-container width="1100" class="card-bg">
                <div class="redes-section">

                    <div class="top-dashboard-section mb-2">
                        <v-card class="dashboard-profile mx-1 pa-2">
                            <v-card class="pa-2 mx-1" width="400px" height="350px">
                                <v-avatar color="white" size="150" class="dashboard-avatar-cover  ma-2" flat>
                                    <v-avatar size="140" rounded="0">
                                        <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                            cover />
                                    </v-avatar>
                                </v-avatar>
                                <v-card-title class="dashboard-username mb-3">@{{ authStore.user.name_artistic
                                }}</v-card-title>
                                <v-card-title class="dashboard-username mb-3">{{ authStore.user.line_of_business
                                }}</v-card-title>

                                <div class="dashboard-marca-btns mt-8  px-5">
                                    <v-btn class="portifolio-btn my-1" width="50%">Macros</v-btn>
                                </div>
                            </v-card>
                            <v-card class="contador-campanhas-card mx-1" width="350" height="350px">
                                <v-card-title class="dashboard-card-title">
                                    Campanhas Realizadas
                                </v-card-title>
                                <v-card-text class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">
                                    107
                                </v-card-text>
                                <v-card-text class="dashboard-card-text">
                                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Modi ipsam, quae soluta
                                    aspernatur aperiam amet sit ad minima laborum fugiat quis id a reprehenderit unde
                                    corporis voluptate vitae perspiciatis at.
                                </v-card-text>
                                <v-card-title class="dashboard-card-title">
                                    Campanhas Ativas
                                </v-card-title>
                                <v-card-text class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">
                                    13
                                </v-card-text>
                                <v-card-text class="dashboard-card-text">
                                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Modi ipsam, quae soluta
                                    aspernatur aperiam amet sit ad minima laborum fugiat quis id a reprehenderit unde
                                    corporis voluptate vitae perspiciatis at.
                                </v-card-text>

                            </v-card>

                            <!-- <v-card class="mx-1 " width="340px" height="350px">
                                <v-card-title class="dashboard-card-title"> Desempenho Mensal</v-card-title>
                                <RedesDonutChart />

                            </v-card> -->
                            <v-card class="mx-1" width="800" height="350px">
                                <v-card-title class="dashboard-card-title my-2"> Medidor de Engajamento</v-card-title>
                                <RedesBarsChartMarca />
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
                            <div class="py-5">
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-bold">Campanhas Realizadas</v-title>
                                    <v-text class="text-lg-h6 font-weight-bold">107</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-bold">Contratados</v-title>
                                    <v-text class="text-lg-h6 font-weight-bold">121</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-bold">Visualização</v-title>
                                    <v-text class="text-lg-h6 font-weight-bold">5.4M</v-text>
                                </div>


                            </div>

                        </v-card>
                        <v-card class=" ma-2" width="800" height="auto">
                            <YoutubeInscritoChart />
                        </v-card>
                        <!-- <v-card class="campanha-info-card ma-2" width="800" height="280">
                            <RedesColumnChart />
                        </v-card> -->
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
                            <div class="py-5">
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Campanhas
                                        Realizadas</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Contratados</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Visualização</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>

                            </div>
                        </v-card>
                        <v-card class="ma-2" width="800" height="auto">
                            <InstagramInscritoChart />
                        </v-card>
                        <!-- <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card> -->
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
                            <div class="py-5">
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Campanhas
                                        Realizadas</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Contratados</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Visualização</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>

                            </div>

                        </v-card>
                        <v-card class="ma-2" width="800" height="auto">
                            <TwitterInscritoChart />
                        </v-card>
                        <!-- <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card> -->
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

                            <div class="py-5">
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Campanhas
                                        Realizadas</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Contratados</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Visualização</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>

                            </div>
                        </v-card>
                        <v-card class="ma-2" width="800" height="auto">
                            <FacebookInscritoChart />
                        </v-card>
                        <!-- <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card> -->
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
                            <div class="py-5">
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Campanhas
                                        Realizadas</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Contratados</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title
                                        class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">Visualização</v-title>
                                    <v-text class="text-lg-h6 font-weight-boldtext-lg-h6 font-weight-bold">dado1</v-text>
                                </div>

                            </div>
                        </v-card>
                        <v-card class="ma-2" width="800" height="auto">
                            <TiktokInscritoChart />
                        </v-card>
                        <!-- <v-card class="campanha-info-card ma-2 " width="800" height="280">
                            <RedesColumnChart />
                        </v-card> -->
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
                            <div class="py-5">
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-bold">Campanhas Realizadas</v-title>
                                    <v-text class="text-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-bold">Contratados</v-title>
                                    <v-text class="text-lg-h6 font-weight-bold">dado1</v-text>
                                </div>
                                <div class="info-dados-direcao">
                                    <v-title class="text-lg-h6 font-weight-bold">Visualização</v-title>
                                    <v-text class="text-lg-h6 font-weight-bold">dado1</v-text>
                                </div>

                            </div>

                        </v-card>
                        <v-card class="ma-2" width="800" height="auto">
                            <KwaiInscritoChart />
                        </v-card>
                        <!-- <v-card class="campanha-info-card ma-2 py-2" width="800" height="280">
                            <RedesColumnChart />
                        </v-card> -->
                    </v-card>

                </div>

            </v-container>
        </div>
    </div>
</template>

<script setup>
//Import Components
// import RedesDonutChart from './../ChartsAnalytics/RedesDonutChart.vue';
// import RedesColumnChart from './../ChartsAnalytics/RedesColumnChart.vue';
import RedesBarsChartMarca from './../ChartsAnalytics/RedesBarsChartMarca.vue';
import YoutubeInscritoChart from '../ChartsAnalytics/YoutubeInscritoChart.vue';
import InstagramInscritoChart from '../ChartsAnalytics/InstagramInscritoChart.vue';
import TwitterInscritoChart from '../ChartsAnalytics/TwitterInscritoChart.vue';
import FacebookInscritoChart from '../ChartsAnalytics/FacebookInscritoChart.vue';
import TiktokInscritoChart from '../ChartsAnalytics/TiktokInscritoChart.vue';
import KwaiInscritoChart from '../ChartsAnalytics/KwaiInscritoChart.vue';


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
        // RedesDonutChart,
        // RedesColumnChart,
        RedesBarsChartMarca,
        YoutubeInscritoChart,
        InstagramInscritoChart,
        TwitterInscritoChart,
        FacebookInscritoChart,
        TiktokInscritoChart,
        KwaiInscritoChart
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