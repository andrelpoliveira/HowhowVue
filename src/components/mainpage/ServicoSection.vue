<template>
    <v-card>
        <v-main class="main-servico-section">
            <v-container class="sub-servico-section">
                <v-sheet class="categorias-slideshow mx-auto" max-width="800">
                    <v-slide-group class="" show-arrows>
                        <v-slide-group-item v-for="n in 15" :key="n" v-slot="{ isSelected, toggle }">
                            <v-btn class="ma-2" rounded :color="isSelected ? 'primary' : undefined" @click="toggle">
                                Options {{ n }}
                            </v-btn>
                        </v-slide-group-item>
                    </v-slide-group>
                </v-sheet>
                <v-container class="top-sub-servico-section">
                    <v-text class="sub-title">
                        TORNE MAIS FÁCIL
                    </v-text>
                    <v-title class="title">
                        Recursos projetados para você
                    </v-title>
                    <v-text class="text">
                        Centralize todas as suas necessidades de marketing em uma única plataforma, incluindo análises,
                        campanhas, feed de notícias, bate-papo, carteira digital, colaborações e muito mais.
                    </v-text>
                </v-container>

                <v-container class="servicos">
                    <v-card class="servico-campanhas">

                        <v-img class="servicos-img" src="./../assets/images/servicos/icon.svg" />

                        <v-title class="title">
                            Campanhas
                        </v-title>
                        <v-text class="text">
                            Encontre campanhas facilmente, efetue propostas, envie postagens para analises e receba por
                            publicidade.
                        </v-text>
                    </v-card>
                    <v-card class="servico-integracao">

                        <v-img class="servicos-img" src="./../assets/images/servicos/icon-1.svg" />

                        <v-title class="title">
                            Integrações
                        </v-title>
                        <v-text class="text">
                            Integre sua conta com vários serviços populares e obtenha analytics detalhados do seu
                            engajamento.
                        </v-text>
                    </v-card>
                    <v-card class="servico-assessoria">

                        <v-img class="servicos-img" src="./../assets/images/servicos/icon-2.svg" />

                        <v-title class="title">
                            Assessoria
                        </v-title>
                        <v-text class="text">
                            Tenha acompanhamento de uma equipe profissional em marketing e assessoria para lhe auxiliar e
                            guiar em suas campanhas
                        </v-text>
                    </v-card>
                </v-container>
            </v-container>
        </v-main>
    </v-card>
</template>
  