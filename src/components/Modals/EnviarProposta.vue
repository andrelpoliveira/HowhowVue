<template>

        <v-card>
            <div v-if="authStore.user">
            <v-toolbar color="primary" title="DROPBOX"></v-toolbar>
            <v-container>
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

                <v-form>
                    <v-container>
                        <div v-if="authStore.user.role ==='agency'">
                        <v-card-title class="profile-sobre-title mt-5">INFLUENCIADOR</v-card-title>
                        <v-select clearable
                            :items="['userName1', 'userName2', 'userName3', 'userName4', 'userName5', 'userName6']"
                            variant="outlined" flat></v-select>
                        </div>
                        <v-card-title class="profile-sobre-title mt-5">PROPOSTA</v-card-title>
                        <v-text-field prepend-icon="mdi-rename-box" density="comfortable"></v-text-field>

                        <v-card-title class="profile-sobre-title mb-5">FOTOS</v-card-title>
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" prepend-icon="mdi-camera"
                            density="comfortable" label="Adicionar fotos"></v-file-input>

                        <v-card-title class="profile-sobre-title mb-5">VÍDEOS</v-card-title>
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                            prepend-icon="mdi-camera-rear-variant" density="comfortable"
                            label="Adicionar vídeos"></v-file-input>
                    </v-container>

                    <v-col cols="12" md="12" class="d-flex">
                        <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated" :width="200"
                            location="bottom">Enviar</v-btn>
                    </v-col>
                </v-form>
            </v-container>
        </div>

        </v-card>
</template>
<script setup>
import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
const authStore = useAuthStore();

onMounted(async () => {
    await authStore.getUser();
})
</script>

<script>
export default {

    props: {
        nozes: String
    },

    // created() {

    //     console.log(this.nozes)
    // },

    data: () => ({

    }),

    methods: {

    }
}

</script>