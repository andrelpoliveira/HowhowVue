<template>
    <v-window-item value="op5">
        <v-card class="influencer-campanhas-searchbar" flat>
            <v-text-field class="searchbar-textarea"  v-model="search" label="Buscar campanhas..." single-line hide-details>
                <v-icon class="seachbar-icon" size="default" icon="mdi-magnify"/>
            </v-text-field>
        </v-card>
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">EM ANDAMENTO
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Propostas -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">PROPOSTAS
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Abertas -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">ABERTAS <i class="text-italico">Comissão</i>
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>

        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Permutas / Presskits -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">PERMUTAS / PRESSKITS
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Privadas -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">EXCLUSÍVAS
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

        <!-- Campanhas Encerradas -->
        <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">CANCELADAS
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

                <!-- Campanhas Concluídas -->
                <v-divider></v-divider>
        <v-card-title class="ma-2" align="left">CONCLUÍDAS
            <v-tooltip text="text here">
                <template v-slot:activator="{ props }">
                    <v-icon size="x-large" icon="mdi-alert-circle" color="rgb(0, 184, 217)" v-bind="props" />
                </template>
            </v-tooltip>
        </v-card-title>
        <v-sheet class="mx-auto">
            <v-slide-group v-model="model" class="pa-2" show-arrows>
                <v-slide-group-item v-for="card in $store.state.campaigns" :key="card.title" v-slot="{ selectedClass }">
                    <v-card :class="['campanhas-cards ma-2', selectedClass]" height="auto" width="300">
                        <v-img :src="card.src" class="align-end" gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                            height="250" cover>
                            <v-avatar color="white" variant="elevated" size="64" class="minhas-cards-avatar">
                                <v-avatar size="60"><v-img :src="card.src" cover></v-img></v-avatar>
                            </v-avatar>
                            <v-card-title class="campanhas-cards-title" v-text="card.title"></v-card-title>
                            <v-row class="mx-0">
                                <v-card-text class="campanhas-cards-marca-name" v-text="card.text"></v-card-text>
                            </v-row>
                        </v-img>

                        <v-card-actions class="d-flex align-center justify-center ma-2">
                            <v-btn color="blue-darken-1" prepend-icon="mdi-plus" variant="flat"
                                rounded="xl">Informações</v-btn>
                        </v-card-actions>

                    </v-card>
                </v-slide-group-item>
            </v-slide-group>
        </v-sheet>

    </v-window-item>
</template>
<script>
export default {
    name: 'AllCampaignsInfluencer',
    data: () => ({
        search: '',
        show: false,
    }),
}
</script>