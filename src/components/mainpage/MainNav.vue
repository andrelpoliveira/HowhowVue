<template>
    <v-card>
        <v-layout>
            <v-app-bar class="main-navbar">
                <v-img src="./../assets/images/logo/logo-degrade.svg" class="nav-logo">
                </v-img>
                <div class="main-nav-btns">
                    <v-btn class="main-nav-btn">Início</v-btn>
                    <v-btn class="main-nav-btn">Serviços</v-btn>
                    <v-btn class="main-nav-btn">Sobre</v-btn>
                    <v-btn class="main-nav-btn">Campanhas</v-btn>
                    <v-btn class="main-nav-btn">Contatos</v-btn>
                </div>
                <div >
                    <v-btn class="main-nav-btn-bg">Log in</v-btn>
                    <v-btn class="main-nav-btn-bg">Registrar-se</v-btn>
                </div>
            </v-app-bar>
            <v-main></v-main>
        </v-layout>
    </v-card>
</template>