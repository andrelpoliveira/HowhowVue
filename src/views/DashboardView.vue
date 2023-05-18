<template>
    <v-app app id="inspire" theme="light">
        <DashboardDesign/>


    </v-app>
</template>

<script>

//Import Components
import DashboardDesign from '../components/Dashboards/DashboardDesign.vue';

export default ({

    name: 'DashoardView',

    components: {
        DashboardDesign,
    },

});
</script>