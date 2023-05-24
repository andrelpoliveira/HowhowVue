<template>
    <v-card>
        <v-tabs class="ma-1" v-model="modelProfile" color="blue-lighten-4" align-tabs="center">
            <v-tab class="profile-tabs" value="detalhesProfile">Detalhes de Perfil</v-tab>
            <v-tab class="profile-tabs" value="editPortifolio">Portifólio</v-tab>
            <v-tab class="profile-tabs" value="editProfile">Editar Perfil</v-tab>
        </v-tabs>

        <v-window v-model="modelProfile">
            <v-window-item value="detalhesProfile">
                <!-- Profile Detalhes-->
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
                            <v-card-title class="profile-banner-username">Username</v-card-title>
                            <v-card-text class="profile-banner-categorias">Categorias</v-card-text>
                        </div>
                    </div>

                </v-card>
                <div class="pessoal-section-card">
                    <v-card class="pessoal-section">
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>NOME</v-title>
                            <v-text>dado1</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>SE IDENTIFICA</v-title>
                            <v-text>dado1</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>IDADE</v-title>
                            <v-text>dado1</v-text>
                        </div>
                        <div class="dados-direcao my-1">
                            <v-title>IDIOMA NATIVO</v-title>
                            <v-text>dado1</v-text>
                        </div>
                    </v-card>
                </div>

                <div class="profile-detalhes-section">
                    <div class="profile-sobre-section ">
                        <v-card class="my-10" width="1000" rounded="xl">
                            <v-card-title class="profile-sobre-title">SOBRE MIM</v-card-title>
                            <div class="profile-content">
                                <v-text>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Non veniam eos
                                    eligendi blanditiis ullam. Obcaecati repudiandae repellendus vitae, velit voluptates
                                    animi, asperiores fugit aut assumenda consequatur sapiente dolor dolorem
                                    eius.</v-text>
                            </div>
                        </v-card>
                    </div>
                    <div class="profile-columns">
                        <div class="profile-main-section">

                            <v-card width="400" min-height="240" class="profissional-section" rounded="xl">
                                <v-card-title class="profile-titles">DADOS PROFISSIONAIS</v-card-title>
                                <div class="py-5">
                                    <div class="show-dados-direcao">
                                        <v-title>CATEGORIA(S)</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>CPF / CNPJ</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>E-MAIL 1</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>E-MAIL 2</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>TELEFONE</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                </div>

                            </v-card>
                        </div>
                        <div class="profile-residencial-section">
                            <v-card width="400" height="240" rounded="xl">
                                <v-card-title class="profile-titles">DADOS RESIDENCIAIS</v-card-title>
                                <div class="text-disposition py-1">
                                    <div class="show-dados-direcao">
                                        <v-title>RUA</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>NÚMERO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>COMPLEMENTO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>BAIRRO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>ESTADO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>PAÍS</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>CEP</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                </div>

                            </v-card>
                        </div>
                    </div>
                </div>
                <v-container class="galeria-section">
                    <v-card class="galeria mx-2 my-4 pa-2" width="1000px">
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

            </v-window-item>
            <v-window-item value="editPortifolio">
                <!-- Profile Detalhes-->
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
                            <v-card-title class="profile-banner-username">Username</v-card-title>
                            <v-card-text class="profile-banner-categorias">Categorias</v-card-text>
                        </div>
                    </div>

                </v-card>
                <div class="pessoal-section-card">
                    <v-card class="pessoal-section">
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>NOME</v-title>
                            <v-text>dado1</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>SE IDENTIFICA</v-title>
                            <v-text>dado1</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>IDADE</v-title>
                            <v-text>dado1</v-text>
                        </div>
                        <div class="dados-direcao my-1">
                            <v-title>IDIOMA NATIVO</v-title>
                            <v-text>dado1</v-text>
                        </div>
                    </v-card>
                </div>

                <div class="profile-detalhes-section">
                    <div class="profile-sobre-section">
                        <v-card class="my-10" width="1000" rounded="xl">
                            <v-card-title class="profile-sobre-title">SOBRE MIM</v-card-title>
                            <div class="profile-content">
                                <v-text>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Non veniam eos
                                    eligendi blanditiis ullam. Obcaecati repudiandae repellendus vitae, velit voluptates
                                    animi, asperiores fugit aut assumenda consequatur sapiente dolor dolorem
                                    eius.</v-text>
                            </div>
                        </v-card>
                    </div>
                </div>

                <v-container class="inputs-section">
                    <div class="portifolio-input">
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" prepend-icon="mdi-camera" 
                            density="comfortable" label="Adicionar fotos"></v-file-input>
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" prepend-icon="mdi-camera-rear-variant" 
                            density="comfortable" label="Adicionar vídeos"></v-file-input>
                    </div>
                </v-container>

                <v-container class="galeria-section" width="1000px">
                    <v-card class="mx-2 my-4 pa-2" width="1000px">
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
                            location="bottom">Gerar Portifólio</v-btn>
                    </v-col>

            </v-window-item>
            <v-window-item value="editProfile">
                <v-card-title class="profile-edit-title">Dados Pessoais</v-card-title>
                <v-divider></v-divider>

                <v-form v-model="valid">
                    <v-row class="ma-2">

                        <v-col cols="12" md="6">
                            <v-text-field density="comfortable" prepend-inner-icon="mdi-account-circle"
                                label="Nome"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                                label="Como se identifica">
                            </v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field :items="types" prepend-inner-icon="mdi-cake-variant-outline"
                                label="Data de nascimento" density="comfortable">
                            </v-text-field>
                        </v-col>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-translate-variant" density="comfortable"
                                label="Idioma nativo"></v-text-field>
                        </v-col>

                        <v-card-title class="profile-edit-title">Dados
                            Profissionais</v-card-title>
                        <v-divider></v-divider>

                        <v-col cols="12" md="12">
                            <v-textarea label="Categorias" prepend-inner-icon="mdi-clipboard-edit-outline"
                                density="comfortable"></v-textarea>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-select :items="category" prepend-inner-icon="mdi-office-building-outline" label="CPF/CNPJ"
                                density="comfortable" chips multiple>
                            </v-select>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field :items="states" prepend-inner-icon="mdi-email" label="E-mail 1"
                                density="comfortable">
                            </v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable"
                                label="Telefone"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-email" density="comfortable"
                                label="E-mail 2"></v-text-field>
                        </v-col>


                        <v-card-title class="profile-edit-title">Dados
                            Residenciais</v-card-title>
                        <v-divider></v-divider>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-circle" density="comfortable"
                                label="Número"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-edit" density="comfortable"
                                label="Nome da rua"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-floor-a" density="comfortable"
                                label="complemnto"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-group" density="comfortable"
                                label="Bairro"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker" density="comfortable"
                                label="Cidade"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker-circle" density="comfortable"
                                label="Estado"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker-distance" density="comfortable"
                                label="País"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-book-marker" density="comfortable"
                                label="CEP"></v-text-field>
                        </v-col>

                        <v-card-title class="profile-edit-title">Sobre
                            mim</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12" md="12">
                            <v-textarea
                                label="Fale mais sobre você! Curiosidades, hábitos interesses e feitos profissionais."
                                density="comfortable"></v-textarea>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                prepend-icon="mdi-camera" label="Foto de perfil" density="comfortable"></v-file-input>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                prepend-icon="mdi-camera" label="Wallpaper" density="comfortable"></v-file-input>
                        </v-col>

                        <v-card-title class="profile-edit-title">Redes
                            Sociais</v-card-title>
                        <v-divider></v-divider>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Youtube"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Instagram"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Twitter"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Facebook"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="TikTok"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Kwai"></v-text-field>
                        </v-col>

                        <v-col cols="12" md="12" class="d-flex">
                            <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated" :width="200"
                                location="bottom">Atualizar perfil</v-btn>
                        </v-col>

                    </v-row>
                </v-form>
            </v-window-item>
        </v-window>
    </v-card>
</template>

<style>
.label {
    white-space: pre-wrap !important;
}
</style>

<script setup>
//Import Components
// import YoutubeInscritoChart from './../ChartsAnalytics/YoutubeInscritoChart.vue';
// import InstagramInscritoChart from './../ChartsAnalytics/InstagramInscritoChart.vue';
// import TwitterInscritoChart from './../ChartsAnalytics/TwitterInscritoChart.vue';
// import FacebookInscritoChart from './../ChartsAnalytics/FacebookInscritoChart.vue';
// import TiktokInscritoChart from './../ChartsAnalytics/TiktokInscritoChart.vue';
// import KwaiInscritoChart from './../ChartsAnalytics/KwaiInscritoChart.vue';


</script>

<script>
export default {

    components: {
        // YoutubeInscritoChart,
        // InstagramInscritoChart,
        // TwitterInscritoChart,
        // FacebookInscritoChart,
        // TiktokInscritoChart,
        // KwaiInscritoChart
    },

    data: () => ({
        modelProfile: null,
    }),
}
</script>
