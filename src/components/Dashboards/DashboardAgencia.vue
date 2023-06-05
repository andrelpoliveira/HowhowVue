<template>
    <div v-if="authStore.user">
        <div class="profile-redes-section">
            <v-container width="1100" class="card-bg">
                <div class="redes-section">
                    <div class="top-dashboard-agency mb-2">
                        <v-card class="dashboard-agency mx-1 pa-2">
                            <v-card class="pa-2 mx-1 mb-1" width="300px" height="350px">
                                <v-avatar color="white" size="150" class="dashboard-avatar-cover  ma-2" flat>
                                    <v-avatar size="140" rounded="0">
                                        <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                            cover />
                                    </v-avatar>
                                </v-avatar>
                                <v-card-title class="dashboard-username mb-3">@{{ authStore.user.name }}</v-card-title>

                                <v-dialog v-model="dialog" width="1024">
                                    <template v-slot:activator="{ props }">
                                        <div class="dashboard-btns mt-8 px-5">
                                            <v-btn class="portifolio-btn my-1" v-bind="props">Gerar Portifólio</v-btn>
                                        </div>
                                    </template>
                                    <PortifolioPreview />
                                </v-dialog>

                            </v-card>
                            <v-card class="mx-1 mt-1 py-2" width="300" height="350px">
                                <v-card-title class="dashboard-card-title">
                                    Adicionar Influencer
                                </v-card-title>
                                <v-card-text class="dashboard-card-text">
                                    Você pode registrar manualmente os valores de sua modalidade quando quiser. Mas
                                    lembre-se que caso queira usar o HowBOT, será necessário aguardar 7 dias desde sua
                                    ultima ativação.
                                </v-card-text>

                                <!-- Adicionar influencer btn -->
                                <v-dialog v-model="dialog1" width="800">
                                    <template v-slot:activator="{ props }">
                                        <v-btn class="dashboard-profile-btn my-1" v-bind="props">Adicionar
                                            Influencer</v-btn>
                                    </template>
                                    <AdicionarInfluencer />
                                </v-dialog>
                                <!--  -->
                                <v-card-title class="dashboard-card-title">
                                    Influencers acessoradas
                                </v-card-title>
                                <v-card-text class="text-h8 text-md-h6 text-lg-h5 mt-2">
                                    92
                                </v-card-text>
                                <v-card-text class="dashboard-card-text">
                                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Modi ipsam, quae soluta
                                    aspernatur aperiam amet sit ad minima laborum.
                                </v-card-text>

                            </v-card>
                        </v-card>

                        <v-card class="mx-2" width="850">
                            <v-toolbar class="" color="primary" title="MEUS INFLUENCERS" rounded="lg"></v-toolbar>
                            <v-spacer></v-spacer>

                            <v-card class="influencer-searchbar" flat>
                                <v-text-field class="searchbar-textarea" v-model="search" label="Buscar campanhas..."
                                    single-line hide-details>
                                    <v-icon class="seachbar-icon" size="default" icon="mdi-magnify" />
                                </v-text-field>
                            </v-card>

                            <v-container>
                                <v-data-table :headers="headers" :items="influencers" :search="search"></v-data-table>
                            </v-container>
                        </v-card>
                    </div>
                </div>
            </v-container>
        </div>
    </div>
</template>

<script setup>
//Import Components

import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import AdicionarInfluencer from '../Modals/AdicionarInfluencer.vue';
const authStore = useAuthStore();

onMounted(async () => {
    await authStore.getUser();
})
</script>

<script>
export default {

    components: {
        AdicionarInfluencer
    },

    data: () => ({
        dialog: false,
        dialog1: false,
        search: '',
        headers: [
            {
                align: 'start',
                key: 'name',
                sortable: false,
                title: 'Influencers',
            },
            { key: 'age', title: 'Idade' },
            { key: 'gender', title: 'Se Identifica' },
            { key: 'category', title: 'Categorias' },
            { key: 'redes', title: 'Redes' },
            { key: 'status', title: 'Status' },
        ],
        influencers: [
            {
                name: 'Frozen Yogurt',
                age: 159,
                gender: 6.0,
                category: 24,
                redes: 4.0,
                status: 1,
            },
            {
                name: 'Ice cream sandwich',
                age: 237,
                gender: 9.0,
                category: 37,
                redes: 4.3,
                status: 1,
            },
            {
                name: 'Eclair',
                age: 262,
                gender: 16.0,
                category: 23,
                redes: 6.0,
                status: 7,
            },
            {
                name: 'Cupcake',
                age: 305,
                gender: 3.7,
                category: 67,
                redes: 4.3,
                status: 8,
            },
            {
                name: 'Gingerbread',
                age: 356,
                gender: 16.0,
                category: 49,
                redes: 3.9,
                status: 16,
            },
            {
                name: 'Jelly bean',
                age: 375,
                gender: 0.0,
                category: 94,
                redes: 0.0,
                status: 0,
            },
            {
                name: 'Lollipop',
                age: 392,
                gender: 0.2,
                category: 98,
                redes: 0,
                status: 2,
            },
            {
                name: 'Honeycomb',
                age: 408,
                gender: 3.2,
                category: 87,
                redes: 6.5,
                status: 45,
            },
            {
                name: 'Donut',
                age: 452,
                gender: 25.0,
                category: 51,
                redes: 4.9,
                status: 22,
            },
            {
                name: 'KitKat',
                age: 518,
                gender: 26.0,
                category: 65,
                redes: 7,
                status: 6,
            },
        ],
    }),
}
</script>