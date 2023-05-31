<template>
    <v-card v-if="authStore.user">
        <v-tabs class="ma-1" v-model="modelProfile" color="blue-lighten-4" align-tabs="center">
            <v-tab class="profile-tabs" value="detalhesProfile">Detalhes de Perfil</v-tab>
            <v-tab class="profile-tabs" value="editProfile">Editar Perfil</v-tab>
        </v-tabs>
        <!-- Dashboards Tab-->
        <!--Profile-->
        <v-window v-model="modelProfile">
            <v-window-item value="detalhesProfile">
                <div class="profile-detalhes-section">
                    <div class="profile-sobre-section">
                        <v-avatar color="white" size="130" class="profile-avatar-marca-cover my-10" rounded="1" flat>
                            <v-avatar size="120" rounded="0">
                                <v-img class="profile-avatar-marca" :src="profile_photo_path" cover />
                            </v-avatar>
                        </v-avatar>
                        <div class="profile-banner-detalhes">
                            <v-card-title class="profile-banner-username">{{ business_name }}</v-card-title>
                            <v-card-text class="profile-banner-categorias">{{ line_of_business }}</v-card-text>
                        </div>
                    </div>
                    <v-card width="1000" height="130px" class="mb-10" rounded="xl">
                        <v-card-title class="profile-sobre-title">
                            SOBRE NÓS
                        </v-card-title>
                        <div class="profile-content">
                            <v-text>{{ about_me }}</v-text>
                        </div>
                    </v-card>
                    <div class="profile-columns">
                        <div class="profile-main-section">
                            <v-card width="450" height="300" class="profissional-section" rounded="xl">
                                <v-card-title class="profile-titles">DADOS PROFISSIONAIS</v-card-title>
                                <div class="py-1">
                                    <!-- <div class="show-dados-direcao">
                                        <v-title>MARCA</v-title>
                                        <v-text>{{ authStore.user.business_name }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>RAMO</v-title>
                                        <v-text>{{ authStore.user.line_of_business }}</v-text>
                                    </div> -->
                                    <div class="show-dados-direcao">
                                        <v-title>CNPJ</v-title>
                                        <v-text>{{ cnpj }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>E-MAIL 1</v-title>
                                        <v-text>{{ email }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>E-MAIL 2</v-title>
                                        <v-text>{{ email2 }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>TELEFONE 1</v-title>
                                        <v-text>{{ phone }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>TELEFONE 2</v-title>
                                        <v-text>{{ phone2 }}</v-text>
                                    </div>
                                    <!-- <div class="show-dados-direcao">
                                        <v-title>CAMPANHAS ATIVAS</v-title>
                                        <v-text>dado1</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>CAMPANHAS ENCERRADAS</v-title>
                                        <v-text>dado1</v-text>
                                    </div> -->
                                </div>
                            </v-card>
                        </div>
                        <div class="profile-residencial-section">
                            <v-card width="450" min-height="300" rounded="xl">
                                <v-card-title class="profile-titles">DADOS DE LOCALIZAÇÃO</v-card-title>
                                <div class="text-disposition py-5">
                                    <div class="show-dados-direcao">
                                        <v-title>RUA</v-title>
                                        <v-text>{{ address.street }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>NÚMERO</v-title>
                                        <v-text>{{ address.numberadress }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>COMPLEMENTO</v-title>
                                        <v-text>{{ address.complement }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>BAIRRO</v-title>
                                        <v-text>{{ address.neighborhood }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>ESTADO</v-title>
                                        <v-text>{{ state }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>PAÍS</v-title>
                                        <v-text>{{ country }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>CEP</v-title>
                                        <v-text>{{ address.zipcode }}</v-text>
                                    </div>
                                </div>
                            </v-card>
                        </div>
                    </div>

                </div>
            </v-window-item>
            <!-- Edição de Profile -->
            <v-window-item value="editProfile">
                <v-form @submit.prevent="updateAgency">
                    <v-row class="ma-2">
                        <v-card-title class="profile-influencer-edit-title">Dados
                            Profissionais</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12" md="6">
                            <v-text-field density="comfortable" prepend-inner-icon="mdi-account-circle"
                                label="Nome"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field density="comfortable" prepend-inner-icon="mdi-map-marker-distance"
                                label="País de origem"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-textarea label="Categorias" prepend-inner-icon="mdi-clipboard-edit-outline"
                                density="comfortable"></v-textarea>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-select :items="category" prepend-inner-icon="mdi-office-building-outline" label="CPF/CNPJ"
                                density="comfortable" chips multiple>
                            </v-select>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field :items="states" prepend-inner-icon="mdi-email" label="E-mail 1"
                                density="comfortable">
                            </v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable"
                                label="Telefone 1"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-email" density="comfortable"
                                label="E-mail 2"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable"
                                label="Telefone 2"></v-text-field>
                        </v-col>


                        <v-card-title class="profile-influencer-edit-title">Dados
                            de Localização</v-card-title>
                        <v-divider></v-divider>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-circle" density="comfortable"
                                label="Número"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-edit" density="comfortable"
                                label="Nome da rua"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-floor-a" density="comfortable"
                                label="complemnto"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-group" density="comfortable"
                                label="Bairro"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker" density="comfortable"
                                label="Cidade"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker-circle" density="comfortable"
                                label="Estado"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker-distance" density="comfortable"
                                label="País"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-book-marker" density="comfortable"
                                label="CEP"></v-text-field>
                        </v-col>

                        <v-card-title class="profile-influencer-edit-title">Sobre
                            mim</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12" md="12">
                            <v-textarea label="Se apresente para os Influencers" density="comfortable"></v-textarea>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                prepend-icon="mdi-camera" label="Foto de perfil" density="comfortable"
                                @change="uploadImage"></v-file-input>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                prepend-icon="mdi-camera" label="Wallpaper" density="comfortable"
                                @change="uploadWallpaper"></v-file-input>
                        </v-col>

                        <v-col cols="12" md="12" class="d-flex">
                            <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated" :width="200"
                                location="bottom">Atualizar perfil</v-btn>
                        </v-col>

                    </v-row>
                </v-form>
            </v-window-item>
        </v-window>
    </v-card>
</template>

<script setup>
//Import Components
import axios from 'axios';
import Cookie from 'js-cookie'
import { ref } from 'vue';
import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import { useStatesDB } from '@/store/statesbd';

const authStore = useAuthStore();
const statesDB = useStatesDB();
//Form Update
let urlBase = '/api/userUpdate/agency'
let errors = ref([])
let business_name = ref(null)
let line_of_business = ref(null)
let country = ref(null)
let state = ref(null)
let cnpj = ref(null)
let email = ref(null)
let email2 = ref(null)
let phone = ref(null)
let phone2 = ref(null)
let about_me = ref(null)
let profile_photo = ref(null)
let uploadedImage = ref(null)
let wallpaper = ref(null)
let uploadedWallpaper = ref(null)
let address = ref({
    street: null,
    numberadress: null,
    neighborhood: null,
    city: null,
    countryadress: null,
    zipcode: null,
    complement: null,
})

//Upload de Imagens - Perfil e Wallpaper
const uploadImage = (e) => {
    const file = e.target.files[0];
    uploadedImage.value = URL.createObjectURL(file)
    profile_photo.value = file
    console.log(profile_photo, uploadedImage.value);
}
const uploadWallpaper = (e) => {
    const file = e.target.files[0];
    uploadedWallpaper.value = URL.createObjectURL(file)
    wallpaper.value = file
    console.log(wallpaper, uploadedWallpaper.value);
}

onMounted(async () => {
    await authStore.getOwnProfile();
    statesDB.getStatesDb();

    //Form Mount front
    business_name.value = authStore.owner.business_name || 'Não cadastrado'
    line_of_business.value = authStore.owner.line_of_business || 'Não informado'
    country.value = authStore.owner.country || 'Não cadastrado'
    state.value = authStore.owner.state || 'Não cadastrado'
    cnpj.value = authStore.owner.cnpj || 'Não cadastrado'
    email.value = authStore.owner.email || 'Não cadastrado'
    email2.value = authStore.owner.email2 || 'Não cadastrado'
    phone.value = authStore.owner.phone || 'Não cadastrado'
    phone2.value = authStore.owner.phone2 || 'Não cadastrado'
    about_me.value = authStore.owner.about_me || 'Ainda não possui nenhuma informação, edite seu perfil e mostre um pouco sobre sua marca'
    profile_photo.value = authStore.owner.profile_photo_path
    wallpaper.value = authStore.owner.background_photo_path
    if (authStore.owner.adress === null) {
        address.value.street = 'Não cadastrado'
        address.value.numberadress = 'Não cadastrado'
        address.value.neighborhood = 'Não cadastrado'
        address.value.city = 'Não cadastrado'
        address.value.countryadress = 'Não cadastrado'
        address.value.zipcode = 'Não cadastrado'
        address.value.complement = 'Não cadastrado'
    } else {
        address.value.street = authStore.owner.adress.adress
        address.value.numberadress = authStore.owner.adress.numberadress
        address.value.neighborhood = authStore.owner.adress.neighborhood
        address.value.city = authStore.owner.adress.city
        address.value.countryadress = authStore.owner.adress.countryadress
        address.value.zipcode = authStore.owner.adress.zipcode
        address.value.complement = authStore.owner.adress.complement
    }
})

//Update Info Marca
const updateAgency = async () => {
    errors.value = []

    let formData = new FormData();
    if (business_name.value != authStore.owner.business_name) {
        formData.append('business_name', business_name.value || '')
    }
    if (country.value != authStore.owner.country) {
        formData.append('country', country.value || '')
    }
    if (line_of_business.value != authStore.owner.line_of_business) {
        formData.append('line_of_business', line_of_business.value || '')
    }
    if (cnpj.value != authStore.owner.cnpj) {
        formData.append('cnpj', cnpj.value || '')
    }
    if (email.value != authStore.owner.email) {
        formData.append('email', email.value || '')
    }
    if (email2.value != authStore.owner.email2) {
        formData.append('email2', email2.value || '')
    }
    if (phone.value != authStore.owner.phone) {
        formData.append('phone', phone.value || '')
    }
    if (phone2.value != authStore.owner.phone2) {
        formData.append('phone2', phone2.value || '')
    }
    if (address.value.adress != null) {
        formData.append('adress', JSON.stringify(address.value))
    }
    if (state.value != authStore.owner.state) {
        formData.append('state', state.value || '')
    }
    if (about_me.value != authStore.owner.about_me) {
        formData.append('about_me', about_me.value || '')
    }
    if (profile_photo.value != authStore.owner.profile_photo_path) {
        formData.append('profile_photo_path', profile_photo.value)
    }
    if (wallpaper.value != authStore.owner.background_photo_path) {
        formData.append('background_photo_path', wallpaper.value)
    }

    let config = {
        headers: {
            'Access-Control-Allow-Origin': '*',
            'enctype': 'multipart/form-data',
            'Authorization': Cookie.get('token')
        }
    }

    try {
        await axios.post(urlBase, formData, config)
        this.modelProfile.value = 'detalhesProfile'

    } catch (err) {
        errors.value = err.response.data.errors
    }
}

</script>

<script>
export default {
    name: 'ProfileAgencia',
    components: {

    },

    data: () => ({
        modelProfile: null,
    }),
}
</script>
