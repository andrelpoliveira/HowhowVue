<template>
    <v-window-item value="op5">
        <v-card class="mx-auto" :border="100">
            <v-container fluid>
                <v-row dense>
                    <v-col v-for="card in cards" :key="card.title" :cols="card.flex">
                        <v-card :loading="loading" class="mx-auto my-12">
                            <template v-slot:loader="{ isActive }">
                                <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                </v-progress-linear>
                            </template>
                            <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                                height="250px" cover>
                                <v-avatar color="white" variant="elevated" size="64" class="avatar-campaign">
                                    <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                                </v-avatar>
                                <v-card-title class="text-white" v-text="card.title"></v-card-title>
                            </v-img>
                            <v-row class="mx-0">
                                <v-card-text class="font-weight-bold" v-text="card.text"></v-card-text>
                            </v-row>
                            <v-row justify="center">
                                <v-chip-group>
                                    <v-chip class="ma-4" variant="outlined" prepend-icon="mdi-calendar-range"
                                        :text="card.datein">
                                    </v-chip>
                                    <v-spacer></v-spacer>
                                    <v-chip class="ma-4" variant="outlined" prepend-icon="mdi-calendar-range"
                                        :text="card.dateend">
                                    </v-chip>
                                </v-chip-group>
                            </v-row>
                            <v-card-actions>
                                <v-row justify="center" class="ma-4">
                                    <v-col cols="12" md="6">
                                        <v-btn block size="x-large" color="blue-darken-1"
                                            variant="flat">Ver mais</v-btn>
                                    </v-col>
                                </v-row>
                            </v-card-actions>
                        </v-card>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>
    </v-window-item>
</template>
<script>
export default {
    name: 'AllCampaignsInfluencer',
    data: () => ({
        show: false,
        cards: [
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023' },
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023' },
        ],
    }),
}
</script>
<style>
.avatar-campaign {
    display: flex !important;
    top: -130px !important;
    left: 10px !important;
}
</style>