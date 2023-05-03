<template>
    <v-window-item value="op2">
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
                            <v-card width="1140">
                                <v-card-title class="profile-titles">SOBRE MIM</v-card-title>
                                <div class="profile-content">
                                    <v-text>dado1</v-text>
                                </div>
                            </v-card>
                        </div>
                        <div class="profile-main-section">

                            <v-card width="560" class="pessoal-section">
                                <v-card-title class="profile-titles">DADOS PESSOAIS</v-card-title>
                                <div class="dados-direcao">
                                    <v-title>NOME</v-title>
                                    <v-text>dado1</v-text>
                                </div>
                                <div class="dados-direcao">
                                    <v-title>SE IDENTIFICA</v-title>
                                    <v-text>dado1</v-text>
                                </div>
                                <div class="dados-direcao">
                                    <v-title>NASCIMENTO</v-title>
                                    <v-text>dado1</v-text>
                                </div>
                                <div class="dados-direcao">
                                    <v-title>IDIOMA NATIVO</v-title>
                                    <v-text>dado1</v-text>
                                </div>
                            </v-card>

                            <v-card width="560" class="profissional-section">
                                <v-card-title class="profile-titles">DADOS PROFISSIONAIS</v-card-title>
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
                                    <v-title>TELEFONE</v-title>
                                    <v-text>dado1</v-text>
                                </div>
                            </v-card>
                        </div>
                    </div>
                    <div class="profile-residencial-section">
                        <v-card width="1140">
                            <v-card-title class="profile-titles">DADOS RESIDENCIAIS</v-card-title>
                            <div class="profile-content">
                                <v-card-title class="card-title">NÚMERO</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">NOME DA RUA</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">COMPLEMENTO</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">BAIRRO</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">CIDADE</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">ESTADO</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">PAÍS</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                            <div class="profile-content">
                                <v-card-title class="card-title">CEP</v-card-title>
                                <v-text>dado1</v-text>
                            </div>
                        </v-card>
                    </div>
                    <div class="profile-redes-section">
                        <v-card width="1200" class="card-bg">
                            <v-card-title class="profile-titles">REDES</v-card-title>
                            <div class="redes-section">
                                <v-card height="250px" width="250px" class="ma-2">Youtube
                                </v-card>
                                <v-card height="250px" width="250px" class="ma-2">Instagram
                                </v-card>
                                <v-card height="250px" width="250px" class="ma-2">twitter
                                </v-card>
                                <v-card height="250px" width="250px" class="ma-2">Facebook
                                </v-card>
                                <v-card height="250px" width="250px" class="ma-2">TikTok
                                </v-card>
                                <v-card height="250px" width="250px" class="ma-2">Kwai
                                </v-card>
                            </div>

                        </v-card>
                    </div>
                </v-window-item>
                <v-window-item value="editProfile">
                    <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados Pessoais</v-card-title>
                    <v-divider></v-divider>

                    <v-form v-model="valid">
                        <v-row class="ma-2">
                            <v-col cols="12" md="6">
                                <v-text-field density="comfortable" label="Nome"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                                    label="Como se identifica"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field :items="types" label="Data de nascimento" density="comfortable">

                                </v-text-field>
                            </v-col>

                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-map-marker" density="comfortable"
                                    label="Idioma nativo"></v-text-field>
                            </v-col>

                            <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados Profissionais</v-card-title>
                            <v-divider></v-divider>

                            <v-col cols="12" md="12">
                                <v-textarea label="Categorias" density="comfortable"
                                ></v-textarea>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-select :items="category" prepend-inner-icon=""
                                    label="CPF/CNPJ"
                                    density="comfortable" chips multiple>
                                </v-select>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field :items="states" prepend-inner-icon="mdi-account-group-outline"
                                    label="E-mail 1" density="comfortable"
                                >
                                </v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="" density="comfortable"
                                    label="Telefone"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="E-mail 2"></v-text-field>
                            </v-col>


                            <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados Residenciais</v-card-title>
                            <v-divider></v-divider>

                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="Número"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="Nome da rua"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="complemnto"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="Bairro"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="Cidade"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="Estado"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="País"></v-text-field>
                            </v-col>
                            <v-col cols="12" md="6">
                                <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                                    label="CEP"></v-text-field>
                            </v-col>

                            <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Sobre mim</v-card-title>
                            <v-divider></v-divider>
                            <v-col cols="12" md="12">
                                <v-textarea label="Se apresente para as Marcas e Agências" density="comfortable"
                                ></v-textarea>
                            </v-col>
                            <v-col cols="12" md="12">
                                <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                    prepend-icon="mdi-camera" label="Foto de perfil" density="comfortable"
                                ></v-file-input>
                            </v-col>
                            <v-col cols="12" md="12">
                                <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                    prepend-icon="mdi-camera" label="Wallpaper" density="comfortable"
                                ></v-file-input>
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
    </v-window-item>
</template>

<script>
export default {
    data: () => ({
        modelProfile: null,
    }),
}
</script>