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
            <v-tabs class="ma-1" v-model="modelProfile" color="blue-lighten-4" align-tabs="center">
                <v-tab class="profile-tabs" value="detalhesProfile">Detalhes de Perfil</v-tab>
                <v-tab class="profile-tabs" value="editProfile">Editar Perfil</v-tab>
            </v-tabs>
            <!-- Dashboards Tab-->
            <v-window v-model="modelProfile">
                <v-window-item value="detalhesProfile">
                    <div class="profile-detalhes-section">
                        <div class="profile-sobre-section">
                            <v-card width="1020">
                                <v-card-title class="profile-titles">SOBRE NÓS</v-card-title>
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

                                <v-card width="500" class="profissional-section">
                                    <v-card-title class="profile-titles">DADOS PROFISSIONAIS</v-card-title>
                                    <div class="dados-direcao">
                                        <v-title>NOME</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>PAÍS DE ORIGEM</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>CATEGORIA(S)</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>CPF / CNPJ</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>E-MAIL 1</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>E-MAIL 2</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>TELEFONE 1</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>TELEFONE 2</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                </v-card>
                            </div>
                            <div class="profile-residencial-section">
                                <v-card width="500">
                                    <v-card-title class="profile-titles">DADOS DE LOCALIZAÇÃO</v-card-title>
                                    <div class="text-disposition">
                                        <div class="dados-direcao">
                                        <v-title>RUA</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>NÚMERO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>COMPLEMENTO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>BAIRRO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>ESTADO</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>PAÍS</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="dados-direcao">
                                        <v-title>CEP</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    </div>
                                    
                                </v-card>
                            </div>
                        </div>

                    </div>

                </v-window-item>
                <v-window-item value="editProfile">
                    <v-form v-model="valid">
                        <v-row class="ma-2">
                            <v-card-title class="profile-influencer-edit-title">Dados
                                Profissionais</v-card-title>
                            <v-divider></v-divider>

                            <v-col cols="12" md="6">
                                <v-text-field density="comfortable" prepend-inner-icon="mdi-account-circle"
                                    label="Nome"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field density="comfortable" prepend-inner-icon="mdi-map-marker-distance"
                                    label="País de origem"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-textarea label="Categorias" prepend-inner-icon="mdi-clipboard-edit-outline"
                                    density="comfortable"></v-textarea>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-select :items="category" prepend-inner-icon="mdi-office-building-outline"
                                    label="CPF/CNPJ" density="comfortable" chips multiple>
                                </v-select>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field :items="states" prepend-inner-icon="mdi-email" label="E-mail 1"
                                    density="comfortable">
                                </v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable"
                                    label="Telefone 1"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-email" density="comfortable"
                                    label="E-mail 2"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable"
                                    label="Telefone 2"></v-text-field>
                            </v-col>


                            <v-card-title class="profile-influencer-edit-title">Dados
                                de Localização</v-card-title>
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

                            <v-card-title class="profile-influencer-edit-title">Sobre
                                mim</v-card-title>
                            <v-divider></v-divider>
                            <v-col cols="12" md="12">
                                <v-textarea label="Se apresente para os Influencers"
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

                            <v-col cols="12" md="12" class="d-flex">
                                <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated"
                                    :width="200" location="bottom">Atualizar perfil</v-btn>
                            </v-col>

                        </v-row>
                    </v-form>
                </v-window-item>
            </v-window>
        </v-card>

</template>

<!-- <style>
.youtube-chart-icon {
    height: 32px;
    width: 32px;
    margin: 0px !important;
    padding: 0px !important;
    display: flex !important;
    top: 30px !important;
}
</style> -->

<script setup>
//Import Components

</script>

<script>
export default {
    
    components: {

    },

    data: () => ({
        modelProfile: null,
    }),
}
</script>
