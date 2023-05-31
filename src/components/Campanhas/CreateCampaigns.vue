<template>
    <v-window-item value="op7">

        <div class="mx-16" v-if="authStore.user">
            <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados da campanha</v-card-title>
            <v-form @submit.prevent="createCampaign">
                <v-row class="ma-2">
                    <v-col cols="12" md="6">
                        <v-text-field density="comfortable" label="Nome da marca" disabled="true">{{
                            authStore.user.business_name }}</v-text-field>
                    </v-col>
                    <v-col cols="12" md="6">
                        <v-text-field v-model="name" prepend-inner-icon="mdi-rename-box" density="comfortable"
                            label="Nome da campanha"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="6">
                        <v-autocomplete v-model="states" :items="statesDB.statesDB" item-title="state" item-value="state"
                            prepend-inner-icon="mdi-map-marker" label="Localização da audiência" placeholder="Selecione.."
                            density="comfortable" multiple>

                        </v-autocomplete>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-card-text>Visibilidade da campanha</v-card-text>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="isPrivate"
                                    label="Privada/Pública" false-value="0" true-value="1">
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
                        <!-- <label class="block uppercase tracking-wide text-gray-900 text-xs font-bold">Logo da Campanha</label>
                        <input class="form-control block w-full px-3 py-1.5 text-base font-normal text-gray-700 bg-white
                                        bg-clip-padding border border-solid border-gray-400 rounded transition ease-in-out
                                        m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none" type="file"
                                        id="image" ref="campaign_photo" @change="uploadImage"/> -->
                        <v-file-input :rules="rulesFile" type="file" accept="image/png, image/jpeg, image/bmp"
                            @change="uploadImage" prepend-icon="mdi-camera" label="Logo da Campanha" density="comfortable"
                            show-size></v-file-input>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-textarea v-model="campaign_purpose" class="ml-8" label="Propósito da Campanha"
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
                                <v-switch v-model="social.youtube" color="primary"></v-switch>
                                <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Youtube</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Youtube -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção em vídeo"
                            v-model="content.yt_vd_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Vídeo dedicado"
                            v-model="content.yt_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="content.yt_repost"></v-text-field>
                    </v-col>

                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post na Comunidade"
                            v-model="content.yt_post_community"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Short dedicado"
                            v-model="content.yt_short"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção em short"
                            v-model="content.yt_sh_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-card-text>Live Patrocinada?</v-card-text>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-tooltip location="top center" origin="auto" open-on-focus="true">
                            <template v-slot:activator="{ props }">
                                <v-switch v-bind="props" color="primary" hide-details v-model="content.yt_live"
                                    :label="`${content.yt_live.toString()}`" false-value="Não" true-value="Sim">
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
                                <v-switch v-bind="props" color="primary" hide-details v-model="content.yt_presential"
                                    :label="`${content.yt_presential.toString()}`" false-value="Não" true-value="Sim">

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
                                <v-switch v-model="social.instagram" color="primary"></v-switch>
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
                            v-model="content.ist_combo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção"
                            v-model="content.ist_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="content.ist_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post no Feed"
                            v-model="content.ist_post"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="content.ist_repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="3">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="3">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="content.ist_live"
                                            :label="`${content.ist_live.toString()}`" false-value="Não" true-value="Sim">

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
                                <v-switch v-model="social.facebook" color="primary"></v-switch>
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
                            v-model="content.fb_combo"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post no feed"
                            v-model="content.fb_post_feed"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="content.fb_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="content.fb_repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Story"
                            v-model="content.fb_story"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="content.fb_live"
                                            :label="`${content.fb_live.toString()}`" false-value="Não" true-value="Sim">

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
                                <v-switch v-model="social.twitter" color="primary"></v-switch>
                                <v-img class="card-twitter-icon " src="./../../assets/images/redes/redes-icons/twitter.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Twitter</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Twitter -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Retweet da Marca"
                            v-model="content.tw_retweet"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Post"
                            v-model="content.tw_post"></v-text-field>
                    </v-col>
                    <!-- Twitter End-->
                    <v-divider></v-divider>
                    <!-- Kwai -->
                    <v-col cols="12" md="12">
                        <div class="edit-icons">
                            <div class="influencer-card-btns">
                                <v-switch v-model="social.kwai" color="primary"></v-switch>
                                <v-img class="card-kwai-icon" src="./../../assets/images/redes/redes-icons/kwai.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Kwai</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Kwai -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção"
                            v-model="content.kw_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="content.kw_vd_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="content.kw_repost"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="content.kw_live"
                                            :label="`${content.kw_live.toString()}`" false-value="Não" true-value="Sim">

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
                                <v-switch v-model="social.tiktok" color="primary"></v-switch>
                                <v-img class="card-tiktok-icon " src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">TikTok</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Tiktok -->
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Inserção"
                            v-model="content.tk_insertion"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Video dedicado"
                            v-model="content.tk_vd_dedicated"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Repost"
                            v-model="content.tk_repost"></v-text-field>
                    </v-col>

                    <v-col cols="12" md="12">
                        <v-row>
                            <v-col cols="12" md="2">
                                <v-card-text>Live Patrocinada?</v-card-text>
                            </v-col>
                            <v-col cols="12" md="2">
                                <v-tooltip location="top center" origin="auto" open-on-focus="true">
                                    <template v-slot:activator="{ props }">
                                        <v-switch v-bind="props" color="primary" hide-details v-model="content.tk_live"
                                            :label="`${content.tk_live.toString()}`" false-value="Não" true-value="Sim">

                                        </v-switch>
                                    </template>

                                    <div>Um evento presencial, será necessário entrar em contato com nossa assessoria.</div>
                                </v-tooltip>
                            </v-col>
                            <v-radio-group inline v-model="content.tk_selectedRadio">
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
                                <v-switch v-model="social.howhow" color="primary"></v-switch>
                                <v-img class="card-howhow-icon " src="./../../assets/images/icon-logo/favicon-32x32.png">
                                </v-img>
                            </div>
                            <v-card-title class="text-h8 text-md-h6 text-lg-h5 font-weight-bold">Outros</v-card-title>
                        </div>
                    </v-col>
                    <!-- Texts Howhow -->
                    <v-col cols="12" md="2">
                        <v-text-field density="comfortable" label="Remarketing"
                            v-model="content.hw_remarketing"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Link na Bio"
                            v-model="content.hw_link_bio"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="3">
                        <v-text-field density="comfortable" label="Link no Descrição"
                            v-model="content.hw_link_description"></v-text-field>
                    </v-col>
                    <v-col cols="12" md="2">
                        <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Link no Comentário"
                            v-model="content.hw_link_comment"></v-text-field>
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
        //Input file
        rulesFile: [
            value => {
                return !value || !value.length || value[0].size < 5000000 || 'A imagem não pode ultrapassar 5MB!'
            },
        ],

        urlBase: '/api/campaign/create',
        errors: [],
        name: null,
        campaign_purpose: null,
        states: null,
        isPrivate: 0,
        campaign_photo: null,
        uploadedImage: null,
        social: {
            youtube: false,
            instagram: false,
            facebook: false,
            twitter: false,
            kwai: false,
            tiktok: false,
            howhow: false
        },
        content: {
            yt_vd_insertion: '',
            yt_vd_dedicated: '',
            yt_repost: '',
            yt_post_community: '',
            yt_short: '',
            yt_sh_insertion: '',
            yt_live: false,
            yt_presential: false,
            ist_combo: '',
            ist_insertion: '',
            ist_vd_dedicated: '',
            ist_post: '',
            ist_repost: '',
            ist_live: false,
            fb_combo: '',
            fb_post_feed: '',
            fb_vd_dedicated: '',
            fb_repost: '',
            fb_story: '',
            fb_live: false,
            tw_retweet: '',
            tw_post: '',
            kw_insertion: '',
            kw_vd_insertion: '',
            kw_repost: '',
            kw_live: '',
            tk_insertion: '',
            tk_vd_dedicated: '',
            tk_repost: '',
            tk_live: '',
            tk_impulse: '',
            tk_selectedRadio: 0,
            hw_remarketing: '',
            hw_link_bio: '',
            hw_link_description: '',
            hw_link_comment: ''
        },

    }),
    methods: {

        uploadImage(e) {
            const file = e.target.files[0];
            this.uploadedImage = URL.createObjectURL(file)
            this.campaign_photo = file
            console.log(this.campaign_photo, this.uploadedImage);
        },

        createCampaign() {
            this.errors = []

            let formData = new FormData();
            formData.append('campaign_photo', this.campaign_photo)
            formData.append('name', this.name || '')
            formData.append('campaign_purpose', this.campaign_purpose || '')
            formData.append('states', this.states || '')
            formData.append('social_media', JSON.stringify(this.social))
            formData.append('content_type', JSON.stringify(this.content))
            formData.append('private', this.isPrivate)

            let config = {
                headers: {
                    'Access-Control-Allow-Origin': '*',
                    'enctype': 'multipart/form-data',
                    'Authorization': Cookie.get('token')
                }
            }

            try {
                axios.post(this.urlBase, formData, config)

            } catch (err) {
                this.errors = err.response.data.errors
            }
        },
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
import axios from 'axios';
import Cookie from 'js-cookie';
//import { ref } from 'vue';
//import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import { useStatesDB } from '@/store/statesbd';

const authStore = useAuthStore();
const statesDB = useStatesDB();

// let urlBase = '/api/campaign/create'
// let errors = ref([])
// let name = ref(null)
// let campaign_purpose = ref(null)
// let states = ref(null)
// let isPrivate = ref(null)
// let campaign_photo = ref(null)
// let uploadedImage = ref(null)
// let social = ref(
//     {
//         youtube: false,
//         instagram: false,
//         facebook: false,
//         twitter: false,
//         kwai: false,
//         tiktok: false,
//         howhow: false
//     }
// )
// let content = ref({
//     yt_vd_insertion: '',
//     yt_vd_dedicated: '',
//     yt_repost: '',
//     yt_post_community: '',
//     yt_short: '',
//     yt_sh_insertion: '',
//     yt_live: false,
//     yt_presential: false,
//     ist_combo: '',
//     ist_insertion: '',
//     ist_vd_dedicated: '',
//     ist_post: '',
//     ist_repost: '',
//     ist_live: false,
//     fb_combo: '',
//     fb_post_feed: '',
//     fb_vd_dedicated: '',
//     fb_repost: '',
//     fb_story: '',
//     fb_live: false,
//     tw_retweet: '',
//     tw_post: '',
//     kw_insertion: '',
//     kw_vd_insertion: '',
//     kw_repost: '',
//     kw_live: '',
//     tk_insertion: '',
//     tk_vd_dedicated: '',
//     tk_repost: '',
//     tk_live: '',
//     tk_impulse: '',
//     tk_selectedRadio: 0,
//     hw_remarketing: '',
//     hw_link_bio: '',
//     hw_link_description: '',
//     hw_link_comment: ''
// })

// const uploadImage = (e) => {
//     const file = e.target.files[0];
//     uploadedImage.value = URL.createObjectURL(file)
//     campaign_photo.value = file
//     console.log(campaign_photo, uploadedImage.value);
// }

// onMounted(async () => {
//     await authStore.getUser();
//     statesDB.getStatesDb();
// })

// const createCampaign = async () => {
//     errors.value = []

//     let formData = new FormData();
//     formData.append('campaign_photo', campaign_photo.value)
//     formData.append('name', name.value || '')
//     formData.append('campaign_purpose', campaign_purpose.value || '')
//     formData.append('state', states.value || '')
//     formData.append('social_media', JSON.stringify(social.value))
//     formData.append('content_type', JSON.stringify(content.value))
//     formData.append('private', isPrivate.value || '')

//     let config = {
//         headers: {
//             'Access-Control-Allow-Origin': '*',
//             'enctype': 'multipart/form-data',
//             'Authorization': Cookie.get('token')
//         }
//     }

//     try {
//         await axios.post(urlBase, formData, config)

//     } catch (err) {
//         errors.value = err.response.data.errors
//     }
// }

</script>
<style>
p {
    font-size: 12px;
}
</style>