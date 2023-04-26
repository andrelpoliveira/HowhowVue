<template>
<v-app app id="inspire" theme="dark">
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