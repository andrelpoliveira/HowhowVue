<template>

        <v-card class="profile-banner-section mx-auto">
            <v-container fluid>
                <v-row dense>
                    <v-img src='https://cdn.vuetifyjs.com/images/cards/house.jpg' class="profile-banner align-end"
                        height="250px" cover>
                        <div class="profile-user-name-banner">
                            <v-avatar color="white" size="100" class="profile-avatar-cover" rounded="1" flat>
                                <v-avatar size="90" rounded="0">
                                    <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                        cover />
                                </v-avatar>
                            </v-avatar>
                            <div class="profile-banner-detalhes">
                                <v-card-title class="profile-banner-username">Username</v-card-title>
                                <v-card-text class="profile-banner-categorias">Categorias</v-card-text>
                            </div>
                        </div>
                    </v-img>
                </v-row>
            </v-container>
        </v-card>
        <v-card>
            <div class="profile-detalhes-section">
                <div class="profile-sobre-section">
                    <v-card width="1020">
                        <v-card-title class="profile-titles">SOBRE MIM</v-card-title>
                        <div class="show-influencer-content">
                            <v-text>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Non veniam eos
                                eligendi blanditiis ullam. Obcaecati repudiandae repellendus vitae, velit voluptates
                                animi, asperiores fugit aut assumenda consequatur sapiente dolor dolorem
                                eius.</v-text>
                        </div>
                    </v-card>
                </div>
                <div class="profile-columns">
                    <div class="profile-main-section">

                        <v-card width="1020" class="pessoal-section">
                            <v-card-title class="profile-titles">DETALHES DO INFLUENCER</v-card-title>
                            <div class="show-dados-direcao">
                                <v-title>NOME</v-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="show-dados-direcao">
                                <v-title>SE IDENTIFICA</v-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="show-dados-direcao">
                                <v-title>IDADE</v-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="show-dados-direcao">
                                <v-title>IDIOMA NATIVO</v-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="show-dados-direcao">
                                <v-title>CATEGORIA(S)</v-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="show-dados-direcao">
                                <v-title>PAÍS</v-title>
                                <v-text>dado1</v-text>
                            </div>
                        </v-card>
                    </div>
                </div>
            </div>

            <div class="profile-redes-section">
                <v-card width="1020" class="card-bg">
                    <v-card-title class="profile-titles">REDES</v-card-title>
                    <div class="redes-section">
                        <v-card class=" ma-2">
                            <!-- <v-img src="./../../assets/images/redes/redes-icons/youtube.svg" class="youtube-chart-icon"/> -->
                            <YoutubeInscritoChart />
                        </v-card>
                        <v-card class="ma-2">
                            <InstagramInscritoChart />
                        </v-card>
                        <v-card class="ma-2">
                            <TwitterInscritoChart />
                        </v-card>
                        <v-card class="ma-2">
                            <FacebookInscritoChart />
                        </v-card>
                        <v-card class="ma-2">
                            <TiktokInscritoChart />
                        </v-card>
                        <v-card class="ma-2">
                            <KwaiInscritoChart />
                        </v-card>
                    </div>

                </v-card>
            </div>
        </v-card>

</template>

<style>
.youtube-chart-icon {
    height: 32px;
    width: 32px;
    margin: 0px !important;
    padding: 0px !important;
    display: flex !important;
    top: 30px !important;
}
</style>

<script setup>
//Import Components
import YoutubeInscritoChart from './../ChartsAnalytics/YoutubeInscritoChart.vue';
import InstagramInscritoChart from './../ChartsAnalytics/InstagramInscritoChart.vue';
import TwitterInscritoChart from './../ChartsAnalytics/TwitterInscritoChart.vue';
import FacebookInscritoChart from './../ChartsAnalytics/FacebookInscritoChart.vue';
import TiktokInscritoChart from './../ChartsAnalytics/TiktokInscritoChart.vue';
import KwaiInscritoChart from './../ChartsAnalytics/KwaiInscritoChart.vue';



</script>

<script>
export default {
    name: 'ProfileMarcatoInfluencer',

    components: {
        YoutubeInscritoChart,
        InstagramInscritoChart,
        TwitterInscritoChart,
        FacebookInscritoChart,
        TiktokInscritoChart,
        KwaiInscritoChart,

    },

    data: () => ({
        modelProfile: null,
    }),
}
</script>
