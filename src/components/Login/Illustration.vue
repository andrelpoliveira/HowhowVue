<template>
    <div class="main-login-section">
        <div class="login-banner">
        <v-img class="login-logo" src="../../assets/images/logo/logo-degrade.svg"></v-img>
        <v-card-title class="text-h6 text-md-h5 text-lg-h4 illustration font-weight-bold">
            Bem vindo!!
        </v-card-title>
        <v-img :width="700" src="../../assets/illustration_dashboard-v2.png" class="illustration">
        </v-img>
    </div>
    </div>
</template>
<script>
export default {

    name: 'App',

    data: () => ({

    }),
};
</script>
<style>
.illustration {
    margin-left: 100px !important;
    margin-top: 20px !important;
}
</style>