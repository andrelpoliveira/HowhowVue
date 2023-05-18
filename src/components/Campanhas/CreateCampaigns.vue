<template>
    <v-window-item value="op7">

        <div class="mx-16">
            <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados da campanha</v-card-title>
            <v-form v-model="valid">
                <v-row class="ma-2">
                    <v-col cols="12" md="6">
                        <v-text-field density="comfortable" label="Nome da marca" disabled="true"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="6">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Nome da campanha"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="6">
                        <v-autocomplete v-model="values" :items="estados" prepend-inner-icon="mdi-map-marker"
                            label="Localização da audiência" placeholder="Selecione.." density="comfortable">

                        </v-autocomplete>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-card-text>Visibilidade da campanha</v-card-text>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="isPublic"
                                    :label="`${isPublic.toString()}`" false-value="Privado" true-value="Público">

                                </v-switch>
                            </template>

                            <div>Um evento privado não aparece para os influenciadores,<br> porém você pode escolher todos
                                em
                                uma lista<br>
                                Um evento público aparece para todos os influenciadores,<br> e você ainda pode escolher
                                todos em
                                uma lista</div>
                        </v-tooltip>
                    </v-col>
                    <!-- <v-col cols="12" md="3">
                    <v-text-field type="date" density="comfortable" label="data de início" ></v-text-field>
                </v-col>
                <v-col cols="12" md="3">
                    <v-text-field type="date" density="comfortable" label="data de término" ></v-text-field>
                </v-col> -->
                    <v-divider></v-divider>
                    <v-col cols="12" md="12">
                        <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Detalhes da
                            Campanha</v-card-title>
                    </v-col>

                    <v-col cols="12" md="12">
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" prepend-icon="mdi-camera"
                            label="Logo da Campanha" density="comfortable"></v-file-input>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-textarea class="ml-8" label="Propósito da Campanha" density="comfortable"></v-textarea>
                    </v-col>

                    <v-divider></v-divider>
                    <v-col cols="12" md="12">
                        <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold">Modalidades da
                            campanha</v-card-title>
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Youtube</v-card-title>
                        </div>
                    </v-col>


                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Inserção em vídeo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Vídeo dedicado"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Repost"></v-text-field>
                    </v-col>

                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Post na Comunidade"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Short dedicado"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Inserção em short"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-card-text>Live Patrocinada?</v-card-text>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="isLiveYoutube"
                                    :label="`${isLiveYoutube.toString()}`" false-value="Não" true-value="Sim">

                                </v-switch>
                            </template>

                            <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                        </v-tooltip>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-card-text>Campanha Presencial?</v-card-text>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="isEvento"
                                    :label="`${isEvento.toString()}`" false-value="Não" true-value="Sim">

                                </v-switch>
                            </template>

                            <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                        </v-tooltip>
                    </v-col>



                    <v-divider></v-divider>
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-instagram-icon "
                                    src="./../../assets/images/redes/redes-icons/instagram.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Instagram</v-card-title>
                        </div>
                    </v-col>

                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Combo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Inserção"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Video dedicado"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Post no Feed"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="3">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="3">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="isLiveInstagram"
                                            :label="`${isLiveInstagram.toString()}`" false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                        </v-row>

                    </v-col>

                    <v-divider></v-divider>

                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-facebook-icon "
                                    src="./../../assets/images/redes/redes-icons/facebook.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Facebook</v-card-title>
                        </div>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Combo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Post no feed"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Video dedicado"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Story"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="isLiveFacebook"
                                            :label="`${isLiveFacebook.toString()}`" false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                        </v-row>
                    </v-col>


                    <v-divider></v-divider>

                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-twitter-icon " src="./../../assets/images/redes/redes-icons/twitter.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Twitter</v-card-title>
                        </div>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Retweet da Marca"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post"></v-text-field>
                    </v-col>

                    <v-divider></v-divider>
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-kwai-icon" src="./../../assets/images/redes/redes-icons/kwai.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Kwai</v-card-title>
                        </div>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Inserção"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Video dedicado"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                        <v-card-text>Live Patrocinada?</v-card-text>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="isLiveKwai"
                                    :label="`${isLiveKwai.toString()}`" false-value="Não" true-value="Sim">

                                </v-switch>
                            </template>

                            <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                        </v-tooltip>
                    </v-col>
                        </v-row>
                    </v-col>


                    <v-divider></v-divider>
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-tiktok-icon " src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">TikTok</v-card-title>
                        </div>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Inserção"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Video dedicado"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Repost"></v-text-field>
                    </v-col>
                    
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                        <v-card-text>Live Patrocinada?</v-card-text>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="isLiveTiktok"
                                    :label="`${isLiveTiktok.toString()}`" false-value="Não" true-value="Sim">

                                </v-switch>
                            </template>

                            <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                        </v-tooltip>
                    </v-col>
                    <v-radio-group inline v-model="selectedRadio">
                        <v-col cols="12" md="3">
                        <v-radio prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Com impulsionamento (Marca)" :value="1"></v-radio>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-radio prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Com impulsionamento (Marca)" :value="2"></v-radio>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-radio prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Sem impulsionamento" :value="0"></v-radio>
                    </v-col>
                    </v-radio-group>
                        </v-row>
                    </v-col>

                    <v-divider></v-divider>
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-img class="card-howhow-icon " src="./../../assets/images/icon-logo/favicon-32x32.png">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Outros</v-card-title>
                        </div>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field density="comfortable" label="Remarketing"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Link na Bio"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-text-field density="comfortable" label="Link no Descrição"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Link no Comentário"></v-text-field>
                    </v-col>



                    <v-col cols="12" md="12" class="d-flex">
                        <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated" :width="200"
                            location="bottom">Criar Campanha</v-btn>
                    </v-col>
                </v-row>
            </v-form>
        </div>


    </v-window-item>
</template>
<style>

</style>

<script>

export default {
    data: () => ({
        selectedRadio: 0,
        //Switch campanha
        isLiveInstagram: 'Não',
        isLiveYoutube: 'Não',
        isLiveFacebook: 'Não',
        isLiveKwai: 'Não',
        isLiveTiktok: 'Não',
        isEvento: 'Não',
        isPublic: 'Privado',
        //Tooltip info campanha
        loactionSide: 'top',
        locationAlign: 'center',
        originSide: 'auto',
        originAlign: '',
        //Tipos de Custo Campanha
        types: ['CPM Marca', 'CPM Howhow', 'Tabelado', 'Comissão'],
        //Input file
        rulesFile: [
            value => {
                return !value || !value.length || value[0].size < 5000000 || 'A imagem não pode ultrapassar 5MB!'
            },
        ],
    }),
    methods:{
    },
    created() {
    },
    //Localização do tooltip
    computed: {
        location() {
            return `${this.locationSide} ${this.locationAlign}`
        },
        origin() {
            return this.originDisabled ? this.originSide : `${this.originSide} ${this.originAlign}`
        },
    },

}
</script>
<style>
p {
    font-size: 12px;
}
</style>