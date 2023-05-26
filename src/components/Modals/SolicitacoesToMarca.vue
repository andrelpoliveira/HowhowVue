
<template v-slot:default="{ isActive }">
    <v-card width="50rem">
        <v-toolbar color="primary" align="center" title="SOLICITAÇÃO DE PARTICIPAÇÃO"></v-toolbar>

        <v-card-text class="proposta-text py-2 my-2">
            "Turns out semicolon-less style is easier and safer in TS because
            most
            gotcha edge cases are type invalid as well."
        </v-card-text>

        <div class="solicitacao-card-orientation">
            <v-card-actions class="solicitacao-profile-card ma-2" height="70">
                <v-layout>
                    <v-list-item prepend-avatar="https://randomuser.me/api/portraits/women/85.jpg"
                        class="solicitacao-profile-info">

                        <v-list-item-title>{{ activeinfluencer.title
                        }}</v-list-item-title>
                        <v-list-item-subtitle>{{ activeinfluencer.categoria
                        }}</v-list-item-subtitle>
                    </v-list-item>
                </v-layout>
                <v-btn class="perfil-btn" color="blue-darken-1">Perfil</v-btn>
            </v-card-actions>
            <!-- <v-btn class="perfil-btn" color="blue-darken-1" flat>Perfil</v-btn> -->
        </div>

        <v-card class="mx-2 my-4">
            <v-row>
                <v-col v-for="n in 6" :key="n" class="d-flex child-flex" cols="4">
                    <v-img :src="`https://picsum.photos/500/300?image=${n * 5 + 10}`"
                        :lazy-src="`https://picsum.photos/10/6?image=${n * 5 + 10}`" aspect-ratio="1" cover
                        class="bg-grey-lighten-2">
                        <template v-slot:placeholder>
                            <v-row class="fill-height ma-0" align="center" justify="center">
                                <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                            </v-row>
                        </template>
                    </v-img>
                </v-col>
            </v-row>
        </v-card>



        <v-card-actions class="justify-end">
            <v-btn variant="text">Contratar</v-btn>
            <v-btn variant="text" @click="isActive.value = false">Fechar</v-btn>
        </v-card-actions>
    </v-card>
</template>


<script>
export default {

    data: () => ({

    }),

}

</script>