<template>
    <v-app app class="d-flex align-start">
        <!-- Logo Howhow-->
        <v-card flat height="150px" rounded="0">
            <v-col cols="12" lg="4" class="mx-auto">
                <v-img :width="200" aspect-ratio="16/9" src="../assets/logo.degrade.svg" class="pa-md-16">
                </v-img>
            </v-col>
        </v-card>
        <!-- Ilustration Login-->
        <v-card flat class="ma-8">
            <v-layout full-height="true">
                <Illustration/>
                <!-- Login Panel position-->
                <LoginPanel />
            </v-layout>
        </v-card>
                
    </v-app>
</template>
  
<script>
//Import Components
import Illustration from '../components/Login/Illustration.vue'
import LoginPanel from '../components/Login/LoginPanel.vue'

export default {

    name: 'App',
    components:{
        LoginPanel,
        Illustration
    },
    data: () => ({

        
    }),
};
</script>
  
<style>
.logo {
    top: 20px;
    left: 80px;
}

.panel-login {
    margin-top: 50px;
}

.input-fields .v-field__input {
    background: #E3F2FD;
}

p {
    color: rgb(100, 154, 203);
}
</style>