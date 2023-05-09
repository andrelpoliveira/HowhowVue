<template>
    <v-window-item value="infoCampanha">
        <v-card class="mx-auto" :border="100">
            <v-container fluid>
                <v-row dense>
                    <v-col cols="12">
                        <v-card class="mx-auto my-12">
                            <template v-slot:loader="{ isActive }">
                                <v-progress-linear :active="isActive" color="deep-purple" height="4" indeterminate>
                                </v-progress-linear>
                            </template>
                            <v-img src="https://cdn.vuetifyjs.com/images/cards/house.jpg" class="align-end"
                                gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)" height="200px" cover>
                                <v-avatar color="white" variant="elevated" size="64" class="avatar-mycampaign">
                                    <v-avatar image="https://cdn.vuetifyjs.com/images/cards/house.jpg" size="60"></v-avatar>
                                </v-avatar>
                                <v-row class="mx-0">
                                    <v-card color="rgba(255,255,255,0)" class="text-white" title="Pre-fab homes"
                                        subtitle="Lorem 1"></v-card>
                                </v-row>

                            </v-img>
                        </v-card>
                    </v-col>
                </v-row>
            </v-container>
        </v-card>
        <v-divider></v-divider>
        <v-card>
            

        </v-card>
    </v-window-item>
</template>
<script setup>
</script>
<script>
export default {
    name: 'InfoCampaignsMarca',
    data: () => ({
        detailsCampaigns: null,
        
    }),
    
    components:{
}

}
</script>
<style>
.avatar-mycampaign {
    margin-top: -250px;
    left: 5px;
}
</style>