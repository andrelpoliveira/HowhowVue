<template>
    <v-btn density="compact">
        <v-icon size="x-large">mdi-theme-light-dark</v-icon>
        <span class="dashboard-topbar-icons">Tema</span>
    </v-btn>

    <v-btn density="compact">
        <v-icon size="x-large">mdi-bell-ring</v-icon>
        <span class="dashboard-topbar-icons">Alerta</span>
    </v-btn>
    <v-menu open-on-hover>
        <template v-slot:activator="{ props }">
            <v-btn density="compact" v-bind="props">
                <v-icon size="x-large">mdi-cog-outline</v-icon>
                <span class="dashboard-topbar-icons">Settings</span>
            </v-btn>
        </template>

            <v-list-item>
                <v-dialog v-model="dialog" fullscreen :scrim="false" transition="dialog-bottom-transition">
                    <template v-slot:activator="{ props }">
                        <v-btn density="compact" v-bind="props">
                            <v-icon size="x-large">mdi-cog-outline</v-icon>
                            <span class="dashboard-topbar-icons">Config</span>
                        </v-btn>
                    </template>
                    <ManageAccount />
                </v-dialog>
            </v-list-item>
            <v-list-item>
                <v-btn density="compact" @click="authStore.handleLogout()">
                    <v-icon size="x-large">mdi-account-cog</v-icon>
                    <span class="dashboard-topbar-icons">Logout</span>
                </v-btn>
            </v-list-item>

    </v-menu>
</template>
<script>
export default {
    data: () => ({
        dialog: false,
        notifications: false,
        sound: false,
        widgets: false,
        // itemsSettings: [
        //     ["Logout", "mdi-logout"],
        //     ["Manager", "mdi-account-cog"]
        // ]
    }),
    components: {
        ManageAccount,
    },
}
</script>
<script setup>
import { useAuthStore } from '@/store/auth';
import ManageAccount from '../Modals/ManageAccount.vue';

const authStore = useAuthStore();
</script>