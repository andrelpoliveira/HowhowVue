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
        <v-lis>
            <v-list-item v-for="([title, icon]) in itemsSettings" :key="title">
                <v-list-item-title :prepend-icon="icon" @click="authStore.handleLogout()">
                    {{ title }}
                </v-list-item-title>
            </v-list-item>
        </v-lis>
    </v-menu>
</template>
<script>
export default {
    data: () => ({
        itemsSettings: [
            ['Logout', 'mdi-logout'],
            ['Manager', 'mdi-account-cog']
        ]
    }),


}
</script>
<script setup>
import { useAuthStore } from '@/store/auth';

const authStore = useAuthStore();
</script>