<template>
    <v-layout class="main-feed-section">
        <v-text class="sub-title">
            FEEDBACKS
        </v-text>
        <v-title class="title">
            Confiabilidade e resultados comprovados
        </v-title>
        <v-text class="text">
            Junte-se a mais de 636 criadores de todo o mundo
        </v-text>
        <v-sheet class="feedback-section mx-auto" max-width="1100">
            <v-slide-group show-arrows>
                <v-slide-group-item v-slot="{ toggle, }">
                    <v-card class="feedback" @click="toggle">
                        <div class="">
                            <div class="feedback-nota">
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                            </div>
                            <div class="feedback-content-text">
                                <v-text>
                                    Estou usando a Howhow pra gerenciar minhas campanhas de influenciador e tô adorando! A
                                    plataforma é super fácil de usar e tem um monte de ferramentas incríveis para ajudar a
                                    monitorar meu desempenho. Sem contar que as marcas parceiras que conheci através da
                                    Howhow são top demais! Recomendo demais pra quem tá no mundo de redes sociais!
                                </v-text>
                            </div>
                            <div class="feedback-avatar">
                                <v-img class="avatar" src="./../../assets/images/influencers/2.jpeg" cover />
                                <div class="feedback-owner">
                                    <v-title>
                                        Nayara Rios
                                    </v-title>
                                    <v-text class="text">
                                        influenciador
                                    </v-text>
                                </div>
                            </div>
                        </div>
                    </v-card>
                </v-slide-group-item>
                <v-slide-group-item v-slot="{ toggle, }">
                    <v-card class="feedback" @click="toggle">
                        <div class="">
                            <div class="feedback-nota">
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                            </div>
                            <div class="feedback-content-text">
                                <v-text>
                                    A Howhow é simplesmente a melhor plataforma de marketing de influência que eu já usei!
                                    Além de ter um monte de marcas incríveis pra parcerias, a plataforma oferece insights
                                    detalhados sobre meu engajamento, alcance e impressões.
                                </v-text>
                            </div>
                            <div class="feedback-avatar">
                                <v-img class="avatar" src="./../../assets/images/influencers/6.png" cover />
                                <div class="feedback-owner">
                                    <v-title>
                                        Lucas Lira
                                    </v-title>
                                    <v-text class="text">
                                        influenciador
                                    </v-text>
                                </div>
                            </div>
                        </div>
                    </v-card>
                </v-slide-group-item>
                <v-slide-group-item v-slot="{ toggle, }">
                    <v-card class="feedback" @click="toggle">
                        <div class="">
                            <div class="feedback-nota">
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                            </div>
                            <div class="feedback-content-text">
                                <v-text>
                                    Gente, eu tô impressionada com a Howhow! Eu nunca tinha usado uma plataforma de marketing de influência tão completa assim. As ferramentas de analytics automatizados são incríveis e me ajudaram a entender melhor meu desempenho. Sem contar que a equipe de suporte é super prestativa e me ajudou em todas as dúvidas que eu tive, vale muito a pena!
                                </v-text>
                            </div>
                            <div class="feedback-avatar">
                                <v-img class="avatar" src="./../../assets/images/influencers/8.jpeg" cover />
                                <div class="feedback-owner">
                                    <v-title>
                                        Letícia Leone
                                    </v-title>
                                    <v-text class="text">
                                        influenciador
                                    </v-text>
                                </div>
                            </div>
                        </div>
                    </v-card>
                </v-slide-group-item>
                <v-slide-group-item v-slot="{ toggle, }">
                    <v-card class="feedback" @click="toggle">
                        <div class="">
                            <div class="feedback-nota">
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                                <v-img class="feedback-nota" src="./../../assets/images/feedbacks/ic_star.svg" />
                            </div>
                            <div class="feedback-content-text">
                                <v-text>
                                    Amo muito todas as ferramentas da Howhow, plataforma super prática de mexer, isso me ajuda a ajustar minha estratégia em tempo real e alcançar ainda mais sucesso.
                                </v-text>
                            </div>
                            <div class="feedback-avatar">
                                <v-img class="avatar" src="./../../assets/images/influencers/3.jpeg" cover />
                                <div class="feedback-owner">
                                    <v-title>
                                        Gabriel falconi
                                    </v-title>
                                    <v-text class="text">
                                        influenciador
                                    </v-text>
                                </div>
                            </div>
                        </div>
                    </v-card>
                </v-slide-group-item>

            </v-slide-group>
        </v-sheet>
        <v-container class="feed-btn">
            <v-btn class="read-more-btn">Leia mais Feedbacks</v-btn>
        </v-container>
</v-layout>
</template>