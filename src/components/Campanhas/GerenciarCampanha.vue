<template>
    <v-window-item value="gerenciarCampanha">
        <v-item-group v-model="model">
            <v-container>
                <!-- nav-bar de gerenciamento de influenciadores da campanha -->

                <v-navigation-drawer class="right-sidebar" permanent location="right" elevation="8" >
                    <template v-slot:prepend>
                        <v-card class="gerenciar-section overflow-y-auto" flat >
                            <v-card-title>Gerenciador de campanha</v-card-title>
                            <v-divider></v-divider>
                            <v-card-title>Requer atenção</v-card-title>

                            <div v-for="n in 5" :key="n" class="">
                                <v-list-item lines="two" prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg"
                                    title="Jane Smith" subtitle="Logged in"></v-list-item>
                            </div>
                        </v-card>

                        <v-divider></v-divider>
                        <v-card class="gerenciar-section" flat>
                            <v-card-title>Em processo</v-card-title>
                            <div v-for="n in 5" :key="n" class="">
                                <v-list-item lines="two" prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg"
                                    title="Jane Smith" subtitle="Logged in"></v-list-item>
                            </div>
                        </v-card>

                        <v-divider></v-divider>
                        <v-card class="gerenciar-section" flat>
                            <v-card-title>Em processo</v-card-title>
                            <div v-for="n in 5" :key="n" class="">
                                <v-list-item lines="two" prepend-avatar="https://randomuser.me/api/portraits/women/81.jpg"
                                    title="Jane Smith" subtitle="Logged in"></v-list-item>
                            </div>
                        </v-card>
                    </template>
                </v-navigation-drawer>

                <!--  -->
                <v-main>
                    <!-- Cards dos influenciadores -->
                    <v-row>
                        <v-col v-for="activeinfluencer in activeinfluencers" :key="activeinfluencer.id" cols="12" md="3">
                            <v-item>
                                <v-card class="campanhas-cards" height="auto" width="200">

                                    <v-img class="influencer-card-img overflow-visible" :src="activeinfluencer.src" linear-gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" cover>
                                        <v-card-title class="card-influencer-title">{{ activeinfluencer.title
                                        }}</v-card-title>
                                    </v-img>
                                    <v-divider></v-divider>
                                    <div class="influencer-card-btns">

                                        <!-- Submenu de cada rede social -->

                                        <v-img class="card-youtube-icon "
                                            src="./../../assets/images/redes/redes-icons/youtube.svg">

                                            <!-- <v-btn flat color="rgba(255,255,255,0)" v-for="item in activeinfluencer"
                                                :key="item.id" :value="activeinfluencer.id" @click="activeRow(index)">
                                            </v-btn> -->
                                        </v-img>
                                        <v-img class="card-instagram-icon"
                                            src="./../../assets/images/redes/redes-icons/instagram.svg">
                                            <v-btn flat color="rgba(255,255,255,0)">
                                            </v-btn>
                                        </v-img>
                                        <v-img class="card-twitter-icon"
                                            src="./../../assets/images/redes/redes-icons/twitter.svg">
                                            <v-btn flat color="rgba(255,255,255,0)">
                                            </v-btn>
                                        </v-img>
                                        <v-img class="card-facebook-icon"
                                            src="./../../assets/images/redes/redes-icons/facebook.svg">
                                            <v-btn flat color="rgba(255,255,255,0)">
                                            </v-btn>
                                        </v-img>
                                        <v-img class="card-tiktok-icon"
                                            src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                                            <v-btn flat color="rgba(255,255,255,0)">
                                            </v-btn>
                                        </v-img>
                                        <!--  -->


                                    </div>
                                    <v-divider></v-divider>

                                    <!-- Dados pessoais dos influenciadores -->
                                    <div class="influencer-info-short">
                                        <div class="influencer-info">
                                            <v-text>{{ activeinfluencer.categoria }}</v-text>
                                            <v-text>{{ activeinfluencer.genero }}</v-text>
                                            <v-text>{{ activeinfluencer.idade }}</v-text>
                                            <v-text>{{ activeinfluencer.idioma }}</v-text>
                                        </div>
                                    </div>
                                    <!--  -->

                                    <v-divider></v-divider>
                                    <div class="influencer-card-btn">
                                        <v-btn class="perfil-btn" width="80%" color="blue-darken-1">Perfil</v-btn>
                                    </div>
                                </v-card>
                            </v-item>

                            <template v-if="index = !activeinfluencer.id">
                                <v-expand-transition class="card-sidebar">
                                    <v-card>
                                        <div class="redes-info">
                                            <v-list-item-title>{{ activeinfluencer.id }}</v-list-item-title>

                                        </div>

                                        <v-divider></v-divider>

                                        <div class="influencer-card-btn">
                                            <v-btn class="contratar-btn" width="100px"
                                                color="blue-darken-1">Contratar</v-btn>
                                        </div>
                                    </v-card>
                                </v-expand-transition>
                            </template>

                        </v-col>
                    </v-row>
                </v-main>
            </v-container>
        </v-item-group>
    </v-window-item>
</template>


<script>
export default {

    data: () => ({
        // expanded: Boolean,
        index: null,
        model: null,
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

        items: Array.from({ length: 1000 }, (k, v) => v + 1),
    }),
    methods: {
        activeRow(index) {
            this.index = index
            console.log(index)
        }
    },
}
</script>
<script setup>

</script>



