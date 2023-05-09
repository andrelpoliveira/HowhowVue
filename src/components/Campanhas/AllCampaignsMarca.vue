<template>
    <v-window-item value="op8">
        <v-card class="mx-auto" :border="100">
            <v-container fluid>
                <v-row dense>
                    <v-col v-for="card in $store.state.campaigns" :key="card.campanhaId" :cols="card.flex">
                        <v-card :loading="loading" class="campanhas-cards mx-auto my-12">
                            <template v-slot:loader="{ isActive }">
                                <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                </v-progress-linear>
                            </template>
                            <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                                height="250px" cover>
                                <v-avatar color="white" variant="elevated" size="64" class="campanhas-cards-avatar">
                                    <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                                </v-avatar>
                                <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            </v-img>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                            <!-- <v-divider></v-divider> -->
                            <!-- <v-card-text class="campanhas-cards-periodo-title">Período</v-card-text> -->
                            <v-row justify="center" class="campanhas-cards-periodo">
                                <v-chip-group>
                                    <v-chip class="ma-2" color="blue-lighten-4"  prepend-icon="mdi-calendar-range"
                                        :text="card.datein">
                                    </v-chip>
                                    <v-spacer></v-spacer>
                                    <v-chip class="ma-2" color="blue-lighten-4"  prepend-icon="mdi-calendar-range"
                                        :text="card.dateend">
                                    </v-chip>
                                </v-chip-group>
                            </v-row>
                            <v-spacer></v-spacer>
                            <v-card-actions>
                                <v-row justify="center" class="ma-0">
                                    <!-- <v-list-item :title="`${card.campanhaId.toString()}`"></v-list-item> -->
                                    <v-col cols="12" md="6">
                                        <v-btn @click="$emit('openEdit'); infoCampaign = card; openCampaign()" append-icon="mdi-eye-settings" block size="x-large"
                                            color="blue-darken-1" variant="elevated" :value="card.campanhaId">Visualizar</v-btn>
                                    </v-col>
                                    <!-- <v-col cols="12" md="6">
                                        <v-btn append-icon="mdi-trash-can" block size="x-large"
                                            color="grey-darken-3" variant="outlined">Deletar</v-btn>
                                    </v-col> -->
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
