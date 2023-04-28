<template>
    <v-app app>
        <!-- Ilustration Login-->
            <v-layout full-height="true">
                <Illustration/>
                <!-- Login Panel position-->
                <LoginPanel />
            </v-layout>              
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