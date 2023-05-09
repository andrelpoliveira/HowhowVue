<template>
    <v-window-item value="op8">
        <v-card class="mx-auto" :border="100">
            <v-container fluid>
                <v-divider></v-divider>
                <v-card-title class="campanha-section-title ma-2" align="left">CRIADAS
                    <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
                </v-card-title>

                <v-row dense>
                    <v-col>
                        <v-slide-group class="card-campanhas-marca-position" v-model="model" show-arrows>
                            <v-slide-group-item v-for="card in cards" :key="card.title" :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>
                                        <v-avatar color="white" variant="elevated" size="64" class="campanhas-cards-avatar">
                                            <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                                        </v-avatar>
                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>
                                                    <v-spacer></v-spacer>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.dateend">
                                                    </v-chip>
                                                </v-chip-group>
                                            </v-col>
                                        </v-row>
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit', {
                                                    dados: {
                                                        id: card.campanhaId,
                                                        title: card.title,
                                                        src: card.src,
                                                        text: card.text,
                                                        datein: card.datein,
                                                        dateend: card.dateend
                                                    }
                                                }); idEvent = card.campanhaId;" append-icon="mdi-eye-settings" block
                                                    size="x-large" color="blue-darken-1" variant="elevated"
                                                    :value="card.campanhaId">Visualizar</v-btn>
                                            </v-col>
                                        </v-row>
                                    </v-card-actions>
                                </v-card>
                            </v-slide-group-item>
                        </v-slide-group>
                    </v-col>
                </v-row>
                <v-divider></v-divider>
                <v-card-title class="campanha-section-title ma-2" align="left">ATIVAS <i class="text-italico">Públicas</i>
                    <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
                </v-card-title>
                <v-row dense>
                    <v-col>
                        <v-slide-group v-model="model" class="card-campanhas-marca-position" show-arrows>
                            <v-slide-group-item class="campanha-section-title" v-for="card in cards" :key="card.title"
                                :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>
                                        <v-avatar color="white" variant="elevated" size="64" class="campanhas-cards-avatar">
                                            <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                                        </v-avatar>
                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>
                                                    <v-spacer></v-spacer>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.dateend">
                                                    </v-chip>
                                                </v-chip-group>
                                            </v-col>
                                        </v-row>                                    
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit', {
                                                    dados: {
                                                        id: card.campanhaId,
                                                        title: card.title,
                                                        src: card.src,
                                                        text: card.text,
                                                        datein: card.datein,
                                                        dateend: card.dateend
                                                    }
                                                }); idEvent = card.campanhaId;" append-icon="mdi-eye-settings" block
                                                    size="x-large" color="blue-darken-1" variant="elevated"
                                                    :value="card.campanhaId">Visualizar</v-btn>
                                            </v-col>

                                        </v-row>
                                    </v-card-actions>
                                </v-card>
                            </v-slide-group-item>
                        </v-slide-group>
                    </v-col>
                </v-row>
                <v-divider></v-divider>
                <v-card-title class="campanha-section-title  ma-2" align="left">ATIVAS <i class="text-italico">Privadas</i>
                    <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
                </v-card-title>
                <v-row dense>
                    <v-col>
                        <v-slide-group v-model="model" class="card-campanhas-marca-position" show-arrows>
                            <v-slide-group-item class="campanha-section-title" v-for="card in cards" :key="card.title"
                                :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>
                                        <v-avatar color="white" variant="elevated" size="64" class="campanhas-cards-avatar">
                                            <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                                        </v-avatar>
                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>
                                                    <v-spacer></v-spacer>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.dateend">
                                                    </v-chip>
                                                </v-chip-group>
                                            </v-col>
                                        </v-row>                                    
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit', {
                                                    dados: {
                                                        id: card.campanhaId,
                                                        title: card.title,
                                                        src: card.src,
                                                        text: card.text,
                                                        datein: card.datein,
                                                        dateend: card.dateend
                                                    }
                                                }); idEvent = card.campanhaId;" append-icon="mdi-eye-settings" block
                                                    size="x-large" color="blue-darken-1" variant="elevated"
                                                    :value="card.campanhaId">Visualizar</v-btn>
                                            </v-col>
                                        </v-row>
                                    </v-card-actions>
                                </v-card>
                            </v-slide-group-item>
                        </v-slide-group>
                    </v-col>
                </v-row>
                <v-divider></v-divider>
                <v-card-title class="campanha-section-title  ma-2" align="left">ENCERRADAS
                    <v-tooltip text="text here">
                        <template v-slot:activator="{ props }">
                            <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                        </template>
                    </v-tooltip>
                </v-card-title>
                <v-row dense>
                    <v-col>
                        <v-slide-group v-model="model" class="card-campanhas-marca-position" show-arrows>
                            <v-slide-group-item class="campanha-section-title" v-for="card in cards" :key="card.title"
                                :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>
                                        <v-avatar color="white" variant="elevated" size="64" class="campanhas-cards-avatar">
                                            <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                                        </v-avatar>
                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>
                                                    <v-spacer></v-spacer>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.dateend">
                                                    </v-chip>
                                                </v-chip-group>
                                            </v-col>
                                        </v-row>                                    
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit', {
                                                    dados: {
                                                        id: card.campanhaId,
                                                        title: card.title,
                                                        src: card.src,
                                                        text: card.text,
                                                        datein: card.datein,
                                                        dateend: card.dateend
                                                    }
                                                }); idEvent = card.campanhaId;" append-icon="mdi-eye-settings" block
                                                    size="x-large" color="blue-darken-1" variant="elevated"
                                                    :value="card.campanhaId">Visualizar</v-btn>
                                            </v-col>
                                        </v-row>
                                    </v-card-actions>
                                </v-card>
                            </v-slide-group-item>
                        </v-slide-group>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>
    </v-window-item>
</template>
<script>
export default {
    name: 'AllCampaignsMarca',
    data: () => ({
        show: false,
        tab: null,
        idEvent: null,
        cards: [
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 1', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '1' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 2', datein: '26/04/2023', dateend: '02/05/2023', campanhaId: '2' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 3', datein: '30/04/2023', dateend: '08/05/2023', campanhaId: '3' },
            { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 4, text: 'Lorem 4', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '4' },
            { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 4, text: 'Lorem 5', datein: '28/04/2023', dateend: '04/05/2023', campanhaId: '5' },
            { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 4, text: 'Lorem 6', datein: '24/04/2023', dateend: '30/04/2023', campanhaId: '6' },
        ],
    }),

    emits: ['openEdit'],

}
</script>
