<template>
    <v-window-item value="op7">

        <div class="mx-16" v-if="authStore.user">
            <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados da campanha</v-card-title>
            <v-form @submit.prevent="authStore.handleCreateCampaign(form)">
                <v-row class="ma-2">
                    <v-col cols="12" md="6">
                        <v-text-field density="comfortable" label="Nome da marca" disabled="true">{{
                            authStore.user.business_name }}</v-text-field>
                    </v-col>
                    <v-col cols="12" md="6">
                        <v-text-field v-model="form.name" prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Nome da campanha"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="6">
                        <v-autocomplete v-model="form.states" :items="statesDB.statesDB" item-title="states"
                            item-value="states" prepend-inner-icon="mdi-map-marker" label="Localização da audiência"
                            placeholder="Selecione.." density="comfortable">

                        </v-autocomplete>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-card-text>Visibilidade da campanha</v-card-text>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details 
                                    v-model="form.private" label="Privada/Pública">
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
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" @change="uploadImage($event)" prepend-icon="mdi-camera"
                            label="Logo da Campanha" density="comfortable" ></v-file-input>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-textarea v-model="form.campaign_purpose" class="ml-8" label="Propósito da Campanha"
                            density="comfortable"></v-textarea>
                    </v-col>

                    <v-divider></v-divider>

                    <v-col cols="12" md="12">
                        <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold">Modalidades da
                            campanha</v-card-title>
                    </v-col>
                    <!-- Youtube -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.youtube" color="primary"></v-switch>
                                <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Youtube</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Youtube -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção em vídeo"
                            v-model="form.content.yt_vd_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Vídeo dedicado"
                            v-model="form.content.yt_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="form.content.yt_repost"></v-text-field>
                    </v-col>

                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post na Comunidade"
                            v-model="form.content.yt_post_community"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Short dedicado"
                            v-model="form.content.yt_short"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção em short"
                            v-model="form.content.yt_sh_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-card-text>Live Patrocinada?</v-card-text>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="data.isLiveYoutube"
                                    :label="`${data.isLiveYoutube.toString()}`" 
                                    false-value="Não" true-value="Sim">
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
                                <v-switch v-bind="props" color="primary" hide-details v-model="data.isEvento"
                                    :label="`${data.isEvento.toString()}`"
                                    false-value="Não" true-value="Sim">

                                </v-switch>
                            </template>

                            <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                        </v-tooltip>
                    </v-col>
                    <!-- Youtube End-->
                    <v-divider></v-divider>
                    <!-- Instagram -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.instagram" color="primary"></v-switch>
                                <v-img class="card-instagram-icon "
                                    src="./../../assets/images/redes/redes-icons/instagram.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Instagram</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Instagram -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Combo"
                            v-model="form.content.ist_combo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção"
                            v-model="form.content.ist_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="form.content.ist_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post no Feed"
                            v-model="form.content.ist_post"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="form.content.ist_repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="3">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="3">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="data.isLiveInstagram"
                                            :label="`${data.isLiveInstagram.toString()}`"
                                            false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                        </v-row>
                    </v-col>
                    <!-- Instagram End-->
                    <v-divider></v-divider>
                    <!-- Facebook -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.facebook" color="primary"></v-switch>
                                <v-img class="card-facebook-icon "
                                    src="./../../assets/images/redes/redes-icons/facebook.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Facebook</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Favebook -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Combo"
                            v-model="form.content.fb_combo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post no feed"
                            v-model="form.content.fb_post_feed"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="form.content.fb_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="form.content.fb_repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Story"
                            v-model="form.content.fb_story"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="data.isLiveFacebook"
                                            :label="`${data.isLiveFacebook.toString()}`"
                                            false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                        </v-row>
                    </v-col>
                    <!-- Facebook End -->
                    <v-divider></v-divider>
                    <!-- Twitter -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.twitter" color="primary"></v-switch>
                                <v-img class="card-twitter-icon " src="./../../assets/images/redes/redes-icons/twitter.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Twitter</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Twitter -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Retweet da Marca"
                            v-model="form.content.tw_retweet"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post"
                            v-model="form.content.tw_post"></v-text-field>
                    </v-col>
                    <!-- Twitter End-->
                    <v-divider></v-divider>
                    <!-- Kwai -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.kwai" color="primary"></v-switch>
                                <v-img class="card-kwai-icon" src="./../../assets/images/redes/redes-icons/kwai.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Kwai</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Kwai -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção"
                            v-model="form.content.kw_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="form.content.kw_vd_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="form.content.kw_repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="data.isLiveKwai"
                                            :label="`${data.isLiveKwai.toString()}`"
                                            false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                        </v-row>
                    </v-col>
                    <!-- Kwai End-->
                    <v-divider></v-divider>
                    <!-- Tiktok -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.tiktok" color="primary"></v-switch>
                                <v-img class="card-tiktok-icon " src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">TikTok</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Tiktok -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção"
                            v-model="form.content.tk_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="form.content.tk_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="form.content.tk_repost"></v-text-field>
                    </v-col>

                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="data.isLiveTiktok"
                                            :label="`${data.isLiveTiktok.toString()}`"
                                            false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                            <v-radio-group inline v-model="data.selectedRadio" v-mode:value="form.content">
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
                    <!-- Tiktok End-->
                    <v-divider></v-divider>
                    <!-- Howhow -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="form.social.howhow" color="primary"></v-switch>
                                <v-img class="card-howhow-icon " src="./../../assets/images/icon-logo/favicon-32x32.png">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Outros</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Howhow -->
                    <v-col cols="12" md="2">
                        <v-text-field density="comfortable" label="Remarketing"
                            v-model="form.content.hw_remarketing"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Link na Bio"
                            v-model="form.content.hw_link_bio"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-text-field density="comfortable" label="Link no Descrição"
                            v-model="form.content.hw_link_description"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Link no Comentário"
                            v-model="form.content.hw_link_comment"></v-text-field>
                    </v-col>
                    <!-- Howhow End-->

                    <v-col cols="12" md="12" class="d-flex">
                        <v-btn append-icon="mdi-arrow-right-bold" type="submit" color="blue-darken-3" variant="elevated"
                            :width="200" location="bottom">Criar Campanha</v-btn>
                    </v-col>
                </v-row>
            </v-form>
        </div>


    </v-window-item>
</template>
<style></style>

<script>

export default {
    data: () => ({
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
    methods: {
        
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
<script setup>
import { ref } from 'vue';
import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import { useStatesDB } from '@/store/statesbd';

const authStore = useAuthStore();
const statesDB = useStatesDB();

const data = ({
        selectedRadio: 0,
        //Switch campanha
        isLiveInstagram: 'Não',
        isLiveYoutube: 'Não',
        isLiveFacebook: 'Não',
        isLiveKwai: 'Não',
        isLiveTiktok: 'Não',
        isEvento: 'Não',
        isPublic: 'false',
        image: '',

});

const form = ref({
    name: "",
    campaign_purpose: "",
    states: "",
    social: {
        youtube: '',
        instagram: '',
        facebook:'',
        twitter: '',
        kwai: '',
        tiktok: '',
        howhow: '',
    },
    content: {
        yt_vd_insertion: '',
        yt_vd_dedicated: '',
        yt_repost: '',
        yt_post_community: '',
        yt_short: '',
        yt_sh_insertion: '',
        yt_live: data.isLiveYoutube,
        yt_presential: data.isEvento,
        ist_combo: '',
        ist_insertion: '',
        ist_vd_dedicated: '',
        ist_post: '',
        ist_repost: '',
        ist_live: data.isLiveInstagram,
        fb_combo: '',
        fb_post_feed: '',
        fb_vd_dedicated: '',
        fb_repost: '',
        fb_story: '',
        fb_live: data.isLiveFacebook,
        tw_retweet: '',
        tw_post: '',
        kw_insertion: '',
        kw_vd_insertion: '',
        kw_repost: '',
        kw_live: data.isLiveKwai,
        tk_insertion: '',
        tk_vd_dedicated: '',
        tk_repost: '',
        tk_live: data.isLiveTiktok,
        tk_impulse: '',
        hw_remarketing: '',
        hw_link_bio: '',
        hw_link_description: '',
        hw_link_comment: ''
    },
    type: "",
    private: "",
    campaign_photo: "",
});

const uploadImage = (e)=>{
    form.value.campaign_photo = e.target.files;
    console.log(form.value.campaign_photo);
}

onMounted(async () => {
    await authStore.getUser();
    statesDB.getStatesDb();
})

</script>
<style>
p {
    font-size: 12px;
}
</style>