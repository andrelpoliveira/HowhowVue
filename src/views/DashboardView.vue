<template>
<v-app app id="inspire" theme="light">
   <DashboardSideBar/>

</v-app>
</template>

<script>

//Import Components
import DashboardSideBar from '../components/Dashboards/DashboardSidebar.vue';

export default ({

    name: 'App',

    components: {
        DashboardSideBar,
    },
    
});
</script>