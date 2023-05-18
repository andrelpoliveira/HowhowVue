<template>
    <v-window-item value="op8">
        <v-card class="influencer-campanhas-searchbar" flat>
            <v-text-field class="searchbar-textarea"  v-model="search" label="Buscar campanhas..." single-line hide-details>
                <v-icon class="seachbar-icon" size="default" icon="mdi-magnify"/>
            </v-text-field>
        </v-card>
        <v-card class="mx-auto" flat>
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
                            <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>

                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>
                                                </v-chip-group>
                                            </v-col>
                                        </v-row>
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit'); infoCampaign = card; openCampaign()" append-icon="mdi-eye-settings" block
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
                            <v-slide-group-item class="campanha-section-title" v-for="card in $store.state.campaigns" :key="card.title"
                                :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>

                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>

                                                </v-chip-group>
                                            </v-col>
                                        </v-row>                                    
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit'); infoCampaign = card; openCampaign()" append-icon="mdi-eye-settings" block
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
                            <v-slide-group-item class="campanha-section-title" v-for="card in $store.state.campaigns" :key="card.title"
                                :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>

                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>

                                                </v-chip-group>
                                            </v-col>
                                        </v-row>                                    
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit'); infoCampaign = card; openCampaign()" append-icon="mdi-eye-settings" block
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
                            <v-slide-group-item class="campanha-section-title" v-for="card in $store.state.campaigns" :key="card.title"
                                :cols="card.flex">
                                <v-card :loading="loading" class="campanhas-cards ma-1" width="400px">
                                    <template v-slot:loader="{ isActive }">
                                        <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                        </v-progress-linear>
                                    </template>
                                    <v-img :src="card.src" class="align-end"
                                        gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="250px" cover>

                                        <v-row justify="center" class="campanhas-cards-periodo">
                                            <v-col class="campanhas-card-content">
                                                <v-card-title class="campanhas-cards-title"
                                                    v-text="card.title"></v-card-title>
                                                <v-chip-group>
                                                    <v-chip class="ma-2" color="blue-lighten-4"
                                                        prepend-icon="mdi-calendar-range" :text="card.datein">
                                                    </v-chip>

                                                </v-chip-group>
                                            </v-col>
                                        </v-row>                                    
                                    </v-img>

                                    <v-card-actions>
                                        <v-row justify="center" class="ma-0">
                                            <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                            <v-col cols="12" md="6">
                                                <v-btn @click="$emit('openEdit'); infoCampaign = card; openCampaign()" append-icon="mdi-eye-settings" block
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
//import { useStore } from 'vuex';

export default {
    name:'AllCampaignsMarca',

    //const store = useStore();
    data: () => ({
        show: false,
        tab: null,
        infoCampaign: Object,
        
    }),

    created(){
        //console.log(this.$store.state.campaigns);
    },
    emits: ['openEdit'],

    methods:{
        openCampaign() {
            this.$store.commit('openCampaign', this.infoCampaign)
            //console.log(this.idEvent)
        },
    }
    
}
</script>
