<template>
    <!-- Campanhas Ativas -->
    <v-window-item value="op6" flat floating>
        <v-card-title class="ma-2" align="center">Campanhas Ativas</v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="activeCampaign in activeCampaigns" :key="activeCampaign.title"
                    v-slot="{ toggle, selectedClass }">
                    <v-card :class="['ma-2', selectedClass]" height="auto" width="300" @click="toggle">
                        <v-img :src="activeCampaign.src" height="200" cover></v-img>
                        <v-card-title>{{ activeCampaign.title }}</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12">
                            <v-sheet class="d-flex align-center justify-center flex-wrap text-center" elevation="4"
                                height="40" rounded color="blue-lighten-3" floating>
                                <v-icon icon="mdi-calendar-month"></v-icon><span class="text-h6">{{
                                    activeCampaign.status }}</span>
                            </v-sheet>
                        </v-col>
                        <v-divider></v-divider>
                        <v-card-text class="text-center">Período</v-card-text>
                        <v-row justify="center">
                            <v-chip-group>
                                <v-chip class="ma-2" color="blue-lighten-4" elevation="2" floating>{{
                                    activeCampaign.dateinit }}</v-chip>
                                <v-chip class="ma-2" color="blue-lighten-4" elevation="2" floating>{{ activeCampaign.dateend
                                }}</v-chip>
                            </v-chip-group>
                        </v-row>

                        <v-card-actions class="ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                            <!-- <v-spacer></v-spacer>
                                <v-btn color="red-darken-1" prepend-icon="mdi-trash-can-outline" variant="flat"
                                    rounded="xl">Sair</v-btn> -->
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Pendentes -->
        <v-card-title class="ma-2" align="center">Campanhas Pendentes</v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="pendentCampaign in pendentCampaigns" :key="pendentCampaign.title"
                    v-slot="{ toggle, selectedClass }">
                    <v-card :class="['ma-2', selectedClass]" height="auto" width="300" @click="toggle">
                        <v-img :src="pendentCampaign.src" height="200" cover></v-img>
                        <v-card-title>{{ pendentCampaign.title }}</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12">
                            <v-sheet class="d-flex align-center justify-center flex-wrap text-center" elevation="4"
                                height="40" rounded color="red-lighten-3" floating>
                                <v-icon icon="mdi-calendar-alert"></v-icon><span class="text-h6">{{
                                    pendentCampaign.status }}</span>
                            </v-sheet>
                        </v-col>
                        <v-divider></v-divider>
                        <!-- <v-card-text class="text-center">Período</v-card-text> -->
                        <!-- <v-row justify="center">
                                <v-chip-group>
                                    <v-chip class="ma-2" color="blue-lighten-4" elevation="2" floating>{{ pendentCampaign.dateinit }}</v-chip>
                                    <v-chip class="ma-2" color="blue-lighten-4" elevation="2" floating>{{ pendentCampaign.dateend }}</v-chip>
                                </v-chip-group>
                            </v-row> -->

                        <v-card-actions class="ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-reload" variant="flat"
                                rounded="xl">Atualizar</v-btn>
                            <v-spacer></v-spacer>
                            <v-btn color="red-darken-1" prepend-icon="mdi-trash-can-outline" variant="flat"
                                rounded="xl">Sair</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Encerradas -->
        <v-card-title class="ma-2" align="center">Campanhas Encerradas</v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="completedCampaign in completedCampaigns" :key="completedCampaign.title"
                    v-slot="{ toggle, selectedClass }">
                    <v-card :class="['ma-2', selectedClass]" height="auto" width="300" @click="toggle">
                        <v-img :src="completedCampaign.src" height="200" cover></v-img>
                        <v-card-title>{{ completedCampaign.title }}</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12">
                            <v-sheet class="d-flex align-center justify-center flex-wrap text-center" elevation="4"
                                height="40" rounded color="green-lighten-3" floating>
                                <v-icon icon="mdi-calendar-check"></v-icon><span class="text-h6">{{
                                    completedCampaign.status }}</span>
                            </v-sheet>
                        </v-col>
                        <v-divider></v-divider>

                        <v-card-text>
                            <v-row justify="center" class="mx-0">
                                <v-rating :model-value="completedCampaign.rate" color="amber" density="compact" half-increments readonly size="small"></v-rating>
                            </v-row>
                        </v-card-text>
                        <!-- <v-card-actions class="ma-2">
                                <v-btn color="blue-darken-1" prepend-icon="mdi-reload" variant="flat"
                                    rounded="xl">Atualizar</v-btn>
                                <v-spacer></v-spacer>
                                <v-btn color="red-darken-1" prepend-icon="mdi-trash-can-outline" variant="flat"
                                    rounded="xl">Sair</v-btn>
                            </v-card-actions> -->

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>


    </v-window-item>
    <v-spacer></v-spacer>
</template>
<script>
export default {
    data: () => ({
        model: null,
        activeCampaigns: [
            { title: 'Lorem 1', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', info: '', dateinit: '30/04/2023', dateend: '05/05/2023', status: 'Aprovado' },
            { title: 'Lorem 2', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', info: '', dateinit: '30/04/2023', dateend: '', status: '' },
            { title: 'Lorem 3', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', info: '', dateinit: '30/04/2023', dateend: '', status: '' },
            { title: 'Lorem 4', src: '', info: '', dateinit: '30/04/2023', dateend: '', status: '' },
            { title: 'Lorem 5', src: '', info: '', dateinit: '30/04/2023', dateend: '', status: '' },
            { title: 'Lorem 6', src: '', info: '', dateinit: '30/04/2023', dateend: '', status: '' },
        ],
        pendentCampaigns: [
            { title: 'Lorem 1', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', info: '', status: 'Pendente' },
            { title: 'Lorem 2', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', info: '', status: '' },
            { title: 'Lorem 3', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', info: '', status: '' },
            { title: 'Lorem 4', src: '', info: '', status: '' },
            { title: 'Lorem 5', src: '', info: '', status: '' },
            { title: 'Lorem 6', src: '', info: '', status: '' },
        ],
        completedCampaigns: [
            { title: 'Lorem 1', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', info: '', status: 'Concluída', rate: '3.5' },
            { title: 'Lorem 2', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', info: '', status: '', rate: ''  },
            { title: 'Lorem 3', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', info: '', status: '', rate: ''  },
            { title: 'Lorem 4', src: '', info: '', status: '', rate: ''  },
            { title: 'Lorem 5', src: '', info: '', status: '', rate: ''  },
            { title: 'Lorem 6', src: '', info: '', status: '', rate: ''  },
        ],

    }),
}
</script>