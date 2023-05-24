<template>
    <v-window-item value="infoCampanha">
        <v-card class="mx-auto" :border="100" flat>
            <v-container fluid>
                <v-row dense>
                    <v-col cols="12">
                        <v-card class="marca-avatar mx-10">
                            <v-img :src="activeinfluencers.src" class="align-end"
                                gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>
                                <v-row class="mx-0">
                                    <v-card color="rgba(255,255,255,0)">
                                        <v-card-title class="info-campanha-title">
                                            {{ activeinfluencers.title }}
                                        </v-card-title>
                                    </v-card>
                                </v-row>
                            </v-img>
                        </v-card>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>


        <v-container class="campanha-info-section mt-10">
            <div class="info-section">
                <div class="info-section-avatar">
                    <v-card class="marca-avatar mx-2 pa-1">
                        <v-avatar size="120" rounded="0" class="">
                            <v-img class="profile-avatar-marca" src='https://cdn.vuetifyjs.com/images/cards/house.jpg' cover />
                        </v-avatar>
                    </v-card>
                </div>
                <v-card class="campanha-info-card mx-2 py-2" width="450px" height="128px">
                    <div class="info-dados-direcao">
                        <v-title>CAMPANHA</v-title>
                        <v-text>dado1</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>MARCA</v-title>
                        <v-text>dado1</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>CATEGORIA</v-title>
                        <v-text>dado1</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>LOCAL</v-title>
                        <v-text>dado1</v-text>
                    </div>
                    <div class="info-dados-direcao">
                        <v-title>VISIBILIDADE</v-title>
                        <v-text>dado1</v-text>
                    </div>
                </v-card>
                <v-card class="campanha-info-card mx-2" width="450px" height="128px">
                    <div class="proposta-content">
                        <v-title>PROPOSTA</v-title>
                        <v-text class="mt-2 px-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laborum repellendus ut exercitationem voluptate ea accusantium distinctio veniam, commodi nesciunt aperiam, placeat a, perspiciatis hic suscipit optio adipisci possimus fugiat molestiae!</v-text>
                    </div>
                </v-card>
            </div>
        </v-container>

        <v-container class="info-modalidades-cards px-12">
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
                <div class="edit-icons ml-3 mb-2">
                    <div class="influencer-card-btns">
                        <v-img class="card-instagram-icon " src="./../../assets/images/redes/redes-icons/instagram.svg">
                        </v-img>
                    </div>
                    <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Instagram</v-card-title>
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
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
            <v-card class="campanha-info-card ma-2 py-2" width="200" height="auto">
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




    </v-window-item>
</template>
<script setup>
</script>
<script>
export default {
    name: 'InfoCampaignsMarca',
    data: () => ({
        detailsCampaigns: null,

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

    components: {
    }

}
</script>
