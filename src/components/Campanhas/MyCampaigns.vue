<template>
    <!-- Campanhas Ativas -->
    <v-window-item value="op6" flat floating>
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">APROVADAS
            <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="activeCampaign in activeCampaigns" :key="activeCampaign.title"
                    v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="activeCampaign.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                    <v-avatar size="60"><v-img :src="activeCampaign.src" cover></v-img></v-avatar>
                                </v-avatar>
                                <v-card-title class="campanhas-cards-title" v-text="activeCampaign.title"></v-card-title>
                                <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="activeCampaign.text"></v-card-text>
                            </v-row>
                        </v-img>
                        <!-- <v-card-title>{{ activeCampaign.title }}</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12">
                            <v-sheet class="d-flex align-center justify-center flex-wrap text-center"
                                height="40" rounded color="blue-lighten-3" floating>
                                <v-icon icon="mdi-calendar-month"></v-icon><span class="text-h6">{{
                                    activeCampaign.status }}</span>
                            </v-sheet>
                        </v-col>
                        <v-divider></v-divider> -->

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Pendentes -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">PENDENTES
            <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="pendentCampaign in pendentCampaigns" :key="pendentCampaign.title"
                    v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="pendentCampaign.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                    <v-avatar size="60"><v-img :src="pendentCampaign.src" cover></v-img></v-avatar>
                                </v-avatar>
                                <v-card-title class="campanhas-cards-title" v-text="pendentCampaign.title"></v-card-title>
                                <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="pendentCampaign.text"></v-card-text>
                            </v-row>
                        </v-img>
                        <!-- <v-card-title>{{ pendentCampaign.title }}</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12">
                            <v-sheet class="d-flex align-center justify-center flex-wrap text-center"
                                height="40" rounded color="red-lighten-3" floating>
                                <v-icon icon="mdi-calendar-alert"></v-icon><span class="text-h6">{{
                                    pendentCampaign.status }}</span>
                            </v-sheet>
                        </v-col>
                        <v-divider></v-divider> -->

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Encerradas -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">ENCERRADAS
            <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
        </v-card-title>

        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="completedCampaign in completedCampaigns" :key="completedCampaign.title"
                    v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="completedCampaign.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                    <v-avatar size="60"><v-img :src="completedCampaign.src" cover></v-img></v-avatar>
                                </v-avatar>
                                <v-card-title class="campanhas-cards-title" v-text="completedCampaign.title"></v-card-title>
                                <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="completedCampaign.text"></v-card-text>
                            </v-row>
                        </v-img>                        <!-- <v-card-title>{{ completedCampaign.title }}</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12">
                            <v-sheet class="d-flex align-center justify-center flex-wrap text-center"
                                height="40" rounded color="green-lighten-3" floating>
                                <v-icon icon="mdi-calendar-check"></v-icon><span class="text-h6">{{
                                    completedCampaign.status }}</span>
                            </v-sheet>
                        </v-col>
                        <v-divider></v-divider> -->

                        <!-- <v-card-text>
                            <v-row justify="center" class="mx-0">
                                <v-rating :model-value="completedCampaign.rate" color="amber" density="compact" half-increments readonly size="small"></v-rating>
                            </v-row>
                        </v-card-text> -->

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

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
