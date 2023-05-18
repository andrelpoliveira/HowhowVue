<template>
    <div>
        <div class="profile-redes-section">
            <v-container width="1100" class="card-bg">
                <div class="redes-section">

                    <v-container class="top-dashboard-section">
                        <v-card class="dashboard-profile mx-1 pa-2">
                            <v-card class="pa-2 mx-1" width="250px" height="320px">
                                <v-avatar color="white" size="150" class="dashboard-avatar-cover  ma-2" flat>
                                    <v-avatar size="140" rounded="0">
                                        <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                            cover />
                                    </v-avatar>
                                </v-avatar>
                                <v-card-title class="dashboard-username mb-3">@Username</v-card-title>
                                <div class="dashboard-btns mt-8 px-5">
                                    <v-btn class="portifolio-btn my-1">Gerar Portifólio</v-btn>
                                </div>
                            </v-card>
                            <v-card class="mx-1" width="400" height="320px">
                                <v-card-title class="dashboard-card-title">
                                    Conta com o HowBOT
                                </v-card-title>
                                <v-card-text class="dashboard-card-text">
                                    HowBOT irá buscar em suas redes sociais cadastradas os valores necessários para calcular seu CPM para cada modalidade. Esta ferramenta pode ser ativada a cada 7 dias.
                                </v-card-text>
                                <v-btn class="dashboard-profile-btn my-1">Atualizar CPM</v-btn>
                                <v-card-title class="dashboard-card-title">
                                    Inserir Manualmente
                                </v-card-title>
                                <v-card-text class="dashboard-card-text">
                                    Você pode registrar manualmente os valores de sua modalidade quando quiser. Mas lembre-se que caso queira usar o HowBOT, será necessa´rio aguardar 7 dias desde sua ultima ativação.
                                </v-card-text>
                                <v-btn class="dashboard-profile-btn my-1">Alterar CPM</v-btn>

                            </v-card>
                            <v-card class="mx-1" width="320px" height="320px">
                                <v-card-title class="dashboard-card-title"> Desempenho Mensal</v-card-title>
                                <RedesDonutChart />
                            </v-card>
                            <v-card class="mx-1" width="400" height="320px">

                            </v-card>
                        </v-card>
                    </v-container>

                    <v-divider></v-divider>

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
                        <v-card class=" ma-2">
                            <YoutubeInscritoChart />
                        </v-card>
                        <v-card class="ma-2" width="400" height="auto">

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
                        <v-card class="ma-2">
                            <InstagramInscritoChart />
                        </v-card>
                        <v-card class="ma-2" width="400" height="auto">

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
                        <v-card class="ma-2">
                            <TwitterInscritoChart />
                        </v-card>
                        <v-card class="ma-2" width="400" height="auto">

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
                        <v-card class="ma-2">
                            <FacebookInscritoChart />
                        </v-card>
                        <v-card class="ma-2" width="400" height="auto">

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
                        <v-card class="ma-2">
                            <TiktokInscritoChart />
                        </v-card>
                        <v-card class="ma-2" width="400" height="auto">

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
                        <v-card class="ma-2">
                            <KwaiInscritoChart />
                        </v-card>
                        <v-card class="ma-2" width="400" height="auto">

                        </v-card>
                    </v-card>

                </div>

            </v-container>
        </div>
    </div>
</template>

<script setup>
//Import Components
import YoutubeInscritoChart from './../ChartsAnalytics/YoutubeInscritoChart.vue';
import InstagramInscritoChart from './../ChartsAnalytics/InstagramInscritoChart.vue';
import TwitterInscritoChart from './../ChartsAnalytics/TwitterInscritoChart.vue';
import FacebookInscritoChart from './../ChartsAnalytics/FacebookInscritoChart.vue';
import TiktokInscritoChart from './../ChartsAnalytics/TiktokInscritoChart.vue';
import KwaiInscritoChart from './../ChartsAnalytics/KwaiInscritoChart.vue';
import RedesDonutChart from './../ChartsAnalytics/RedesDonutChart.vue';

</script>

<script>
export default {

    components: {
        YoutubeInscritoChart,
        InstagramInscritoChart,
        TwitterInscritoChart,
        FacebookInscritoChart,
        TiktokInscritoChart,
        KwaiInscritoChart,
        RedesDonutChart
    },

    data: () => ({
        modelProfile: null,
    }),
}
</script>