<template>
    <v-card>
        <v-tabs class="ma-1" v-model="modelProfile" color="blue-lighten-4" align-tabs="center">
            <v-tab class="profile-tabs" value="detalhesProfile">Detalhes de Perfil</v-tab>
            <v-tab class="profile-tabs" value="editPortifolio">Portifólio</v-tab>
            <v-tab class="profile-tabs" value="editProfile">Editar Perfil</v-tab>
        </v-tabs>

        <v-window v-model="modelProfile" v-if="authStore.owner">
            <v-window-item value="detalhesProfile">
                <!-- Profile Detalhes-->
                <v-card class="profile-banner-section mx-auto">
                    <div class="top-card-orientation overflow-visible">
                        <v-img :src="background_photo_url" class="profile-banner" height="250px" cover>
                        </v-img>

                        <div class="profile-user-name-banner">
                            <v-avatar color="white" size="150" class="profile-avatar-cover" rounded="1" flat>
                                <v-avatar size="140" rounded="0">
                                    <v-img class="profile-avatar" :src='profile_photo_url' cover />
                                </v-avatar>
                            </v-avatar>
                        </div>
                        <div class="profile-banner-detalhes">
                            <v-card-title class="profile-banner-username">{{ name_artistic }}</v-card-title>
                            <v-card-text class="profile-banner-categorias">{{ category }}</v-card-text>
                        </div>
                    </div>

                </v-card>
                <div class="pessoal-section-card">
                    <v-card class="pessoal-section">
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>NOME</v-title>
                            <v-text>{{ name }}</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>SE IDENTIFICA</v-title>
                            <v-text>{{ gender }}</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>IDADE</v-title>
                            <v-text>{{ ageActual }}</v-text>
                        </div>
                        <div class="dados-direcao my-1">
                            <v-title>IDIOMA NATIVO</v-title>
                            <v-text>{{ language }}</v-text>
                        </div>
                    </v-card>
                </div>

                <div class="profile-detalhes-section">
                    <div class="profile-sobre-section ">
                        <v-card class="my-10" width="1000" rounded="xl">
                            <v-card-title class="profile-sobre-title">SOBRE MIM</v-card-title>
                            <div class="profile-content">
                                <v-text>{{ about_me }}</v-text>
                            </div>
                        </v-card>
                    </div>
                    <div class="profile-columns">
                        <div class="profile-main-section">

                            <v-card width="400" min-height="240" class="profissional-section" rounded="xl">
                                <v-card-title class="profile-titles">DADOS PROFISSIONAIS</v-card-title>
                                <div class="py-5">
                                    <div class="show-dados-direcao">
                                        <v-title>CATEGORIA(S)</v-title>
                                        <v-text>{{ category }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>CPF</v-title>
                                        <v-text>{{ cpf }}</v-text>
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
                                        <v-title>TELEFONE</v-title>
                                        <v-text>{{ phone }}</v-text>
                                    </div>
                                    <div class="show-dados-direcao">
                                        <v-title>TELEFONE 2</v-title>
                                        <v-text>{{ phone2 }}</v-text>
                                    </div>
                                </div>

                            </v-card>
                        </div>
                        <div class="profile-residencial-section">
                            <v-card width="400" height="240" rounded="xl">
                                <v-card-title class="profile-titles">DADOS RESIDENCIAIS</v-card-title>
                                <div class="text-disposition py-1">
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
                <v-container class="galeria-section">
                    <v-card class="galeria mx-2 my-4 pa-2" width="1000px">
                        <v-card-title class="profile-sobre-title mb-5">GALERIA DE FOTOS</v-card-title>

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
                </v-container>

                <v-container class="galeria-section" width="1000px">
                    <v-card class="mx-2 my-4 pa-2" width="1000px">
                        <v-card-title class="profile-sobre-title mb-5">GALERIA DE VÍDEOS</v-card-title>

                        <v-row>
                            <v-col v-for="n in 3" :key="n" class="d-flex child-flex" cols="4">
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
                </v-container>

            </v-window-item>
            <!-- Editar Portifólio Influencer-->
            <v-window-item value="editPortifolio">
                <!-- Profile Detalhes-->
                <v-card class="profile-banner-section mx-auto">
                    <div class="top-card-orientation overflow-visible">
                        <v-img src='https://cdn.vuetifyjs.com/images/cards/house.jpg' class="profile-banner" height="250px"
                            cover>
                        </v-img>

                        <div class="profile-user-name-banner">
                            <v-avatar color="white" size="150" class="profile-avatar-cover" rounded="1" flat>
                                <v-avatar size="140" rounded="0">
                                    <v-img class="profile-avatar" src='https://cdn.vuetifyjs.com/images/cards/house.jpg'
                                        cover />
                                </v-avatar>
                            </v-avatar>
                        </div>
                        <div class="profile-banner-detalhes">
                            <v-card-title class="profile-banner-username">{{ name_artistic }}</v-card-title>
                            <v-card-text class="profile-banner-categorias">{{ category }}</v-card-text>
                        </div>
                    </div>

                </v-card>
                <div class="pessoal-section-card">
                    <v-card class="pessoal-section">
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>NOME</v-title>
                            <v-text>{{ name }}</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>SE IDENTIFICA</v-title>
                            <v-text>{{ gender }}</v-text>
                        </div>
                        <div class="dados-direcao my-1 mr-16">
                            <v-title>IDADE</v-title>
                            <v-text>{{ ageActual }}</v-text>
                        </div>
                        <div class="dados-direcao my-1">
                            <v-title>IDIOMA NATIVO</v-title>
                            <v-text>{{ language }}</v-text>
                        </div>
                    </v-card>
                </div>

                <div class="profile-detalhes-section">
                    <div class="profile-sobre-section">
                        <v-card class="my-10" width="1000" rounded="xl">
                            <v-card-title class="profile-sobre-title">SOBRE MIM</v-card-title>
                            <div class="profile-content">
                                <v-text>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Non veniam eos
                                    eligendi blanditiis ullam. Obcaecati repudiandae repellendus vitae, velit voluptates
                                    animi, asperiores fugit aut assumenda consequatur sapiente dolor dolorem
                                    eius.</v-text>
                            </div>
                        </v-card>
                    </div>
                </div>

                <v-container class="inputs-section">
                    <div class="portifolio-input">
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" prepend-icon="mdi-camera"
                            density="comfortable" label="Adicionar fotos"></v-file-input>
                        <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                            prepend-icon="mdi-camera-rear-variant" density="comfortable"
                            label="Adicionar vídeos"></v-file-input>
                    </div>
                </v-container>

                <v-container class="galeria-section" width="1000px">
                    <v-card class="mx-2 my-4 pa-2" width="1000px">
                        <v-card-title class="profile-sobre-title mb-5">GALERIA DE FOTOS</v-card-title>

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
                </v-container>

                <v-container class="galeria-section" width="1000px">
                    <v-card class="mx-2 my-4 pa-2" width="1000px">
                        <v-card-title class="profile-sobre-title mb-5">GALERIA DE VÍDEOS</v-card-title>

                        <v-row>
                            <v-col v-for="n in 3" :key="n" class="d-flex child-flex" cols="4">
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
                </v-container>

                <v-col cols="12" md="12" class="d-flex">
                    <v-dialog v-model="dialog" width="1024">
                        <template v-slot:activator="{ props }">
                            <v-btn class="my-1" append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated"
                                :width="200" location="bottom" v-bind="props">Gerar Portifólio</v-btn>
                        </template>
                        <portifolio-preview />
                    </v-dialog>
                </v-col>

            </v-window-item>
            <!-- Editar Perfil Influencer-->
            <v-window-item value="editProfile">
                <v-card-title class="profile-edit-title">Dados Pessoais</v-card-title>
                <v-divider></v-divider>

                <v-form @submit.prevent="updateInfluencer">
                    <v-row class="ma-2">
                        <v-col cols="12" md="6">
                            <v-text-field density="comfortable" prepend-inner-icon="mdi-account-circle"
                                label="Nome Completo" v-model="name"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field density="comfortable" prepend-inner-icon="mdi-account-circle"
                                label="Nome Artístico" v-model="name_artistic"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <!-- <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable"
                                label="Como se identifica" v-model="gender">
                                
                            </v-text-field> -->
                            <v-select v-model="gender" :items="genderDB.gendersDB" item-title="gender" item-value="gender"
                                chips label="Como se identifica"></v-select>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field type="date" prepend-inner-icon="mdi-cake-variant-outline"
                                label="Data de nascimento" density="comfortable" v-model="birthday">
                            </v-text-field>
                        </v-col>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-translate-variant" density="comfortable"
                                label="Idioma nativo" v-model="language"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-card-title class="profile-edit-title">Dados
                                Profissionais</v-card-title>
                        </v-col>
                        <v-divider></v-divider>
                        <v-col cols="12" md="6">
                            <!-- <v-text-field label="Categorias" prepend-inner-icon="mdi-clipboard-edit-outline"
                                density="comfortable"></v-text-field> -->
                            <v-select v-model="category" :items="categoriesStore.categories" item-title="categorie"
                                item-value="categorie" chips label="Categorias" multiple></v-select>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-office-building-outline" label="CPF" density="comfortable"
                                v-model="cpf">
                            </v-text-field>
                        </v-col>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable" label="Telefone"
                                v-model="phone"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-cellphone-message" density="comfortable"
                                label="Telefone 2" v-model="phone2"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-email" density="comfortable" label="E-mail"
                                v-model="email"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-email" density="comfortable" label="E-mail 2"
                                v-model="email2"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-card-title class="profile-edit-title">Dados
                                Residenciais</v-card-title>
                        </v-col>
                        <v-divider></v-divider>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-edit" density="comfortable" label="Nome da rua"
                                v-model="address.street"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-circle" density="comfortable" label="Número"
                                v-model="address.numberadress"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-floor-a" density="comfortable" label="complemento"
                                v-model="address.complement"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-home-group" density="comfortable" label="Bairro"
                                v-model="address.neighborhood"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker" density="comfortable" label="Cidade"
                                v-model="address.city"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-autocomplete v-model="state" :items="statesDB.statesDB" item-title="state" item-value="state"
                                prepend-inner-icon="mdi-map-marker" label="Localização" placeholder="Estado"
                                density="comfortable">
                            </v-autocomplete>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-map-marker-distance" density="comfortable" label="País"
                                v-model="country"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="mdi-book-marker" density="comfortable" label="CEP"
                                v-model="address.zipcode"></v-text-field>
                        </v-col>

                        <v-card-title class="profile-edit-title">Sobre
                            mim</v-card-title>
                        <v-divider></v-divider>
                        <v-col cols="12" md="12">
                            <v-textarea
                                label="Fale mais sobre você! Curiosidades, hábitos interesses e feitos profissionais."
                                density="comfortable" v-model="about_me"></v-textarea>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" @change="uploadImage"
                                prepend-icon="mdi-camera" label="Foto de perfil" density="comfortable"></v-file-input>
                        </v-col>
                        <v-col cols="12" md="12">
                            <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp"
                                @change="uploadbackground" prepend-icon="mdi-camera" label="Wallpaper"
                                density="comfortable"></v-file-input>
                        </v-col>

                        <v-card-title class="profile-edit-title">Redes
                            Sociais</v-card-title>
                        <v-divider></v-divider>

                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Youtube"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Instagram"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Twitter"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Facebook"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="TikTok"></v-text-field>
                        </v-col>
                        <v-col cols="12" md="6">
                            <v-text-field prepend-inner-icon="" density="comfortable" label="Kwai"></v-text-field>
                        </v-col>

                        <v-col cols="12" md="12" class="d-flex">
                            <v-btn append-icon="mdi-arrow-right-bold" type="submit" color="blue-darken-3" variant="elevated"
                                :width="200" location="bottom">Atualizar perfil</v-btn>
                        </v-col>
                    </v-row>
                </v-form>
            </v-window-item>
        </v-window>
    </v-card>
</template>

<style>
.label {
    white-space: pre-wrap !important;
}
</style>

<script setup>
//Import Components
import { ref } from 'vue';
import { onMounted } from 'vue';
import { useAuthStore } from '../../store/auth';
import { useStatesDB } from '@/store/statesbd';
import { useCategories } from '@/store/categories';
import { useGendersDb } from '@/store/gender';
import Cookie from 'js-cookie';
import PortifolioPreview from '../Modals/PortifolioPreview.vue';
import axios from 'axios';

const authStore = useAuthStore();
const categoriesStore = useCategories();
const statesDB = useStatesDB();
const genderDB = useGendersDb();
let ageActual = ref(null)
//Form Update
let urlBase = '/api/userUpdate/influencer'
let errors = ref([])
let name = ref(null)
let name_artistic = ref(null)
let country = ref(null)
let state = ref(null)
let email = ref(null)
let email2 = ref(null)
let category = ref(null)
let gender = ref(null)
let cpf = ref(null)
let cnpj = ref(null)
let birthday = ref(null)
let landline = ref(null)
let phone = ref(null)
let phone2 = ref(null)
let about_me = ref(null)
let theme = ref(null)
let language = ref(null)
let profile_photo_url = ref(null)
let uploadedImage = ref(null)
let background_photo_url = ref(null)
let uploadedBackground = ref(null)
let address = ref({
    street: null,
    numberadress: null,
    neighborhood: null,
    city: null,
    zipcode: null,
    complement: null,
})


onMounted(async () => {
    // await authStore.getOwnProfile();
    // statesDB.getStatesDb();
    // categoriesStore.getCategories();
    // genderDB.getGendersDb();
    calculateAge;
    //Form Mount front
    name.value = authStore.owner.name || 'Não cadastrado'
    name_artistic.value = authStore.owner.name_artistic || 'Não cadastrado'
    state.value = authStore.owner.state || 'Não cadastrado'
    country.value = authStore.owner.country || 'Não cadastrado'
    email.value = authStore.owner.email || 'Não cadastrado'
    email2.value = authStore.owner.email2 || ''
    category.value = authStore.owner.category
    gender.value = authStore.owner.gender || ''
    cpf.value = authStore.owner.cpf || 'Não cadastrado'
    cnpj.value = authStore.owner.cnpj || 'Não cadastrado'
    birthday.value = authStore.owner.birthday || 'Não cadastrado'
    landline.value = authStore.owner.landline || 'Não cadastrado'
    phone.value = authStore.owner.phone || 'Não cadastrado'
    phone2.value = authStore.owner.phone2 || 'Não cadastrado'
    about_me.value = authStore.owner.about_me || 'Não cadastrado'
    theme.value = authStore.owner.theme || 'Não cadastrado'
    language.value = authStore.owner.language || 'Não cadastrado'
    profile_photo_url.value = authStore.owner.profile_photo_path
    background_photo_url.value = authStore.owner.background_photo_path
    if (authStore.owner.street === null) {
        address.value.street = 'Não cadastrado'
        address.value.numberadress = 'Não cadastrado'
        address.value.neighborhood = 'Não cadastrado'
        address.value.city = 'Não cadastrado'
        address.value.zipcode = 'Não cadastrado'
        address.value.complement = 'Não cadastrado'
    } else {
        address.value.street = authStore.owner.adress.adress
        address.value.numberadress = authStore.owner.adress.numberadress
        address.value.neighborhood = authStore.owner.adress.neighborhood
        address.value.city = authStore.owner.adress.city
        address.value.zipcode = authStore.owner.adress.zipcode
        address.value.complement = authStore.owner.adress.complement
    }
})

const uploadImage = (e) => {
    const file = e.target.files[0];
    uploadedImage.value = URL.createObjectURL(file)
    profile_photo_url.value = file
    console.log(profile_photo_url, uploadedImage.value);
}
const uploadbackground = (e) => {
    const file = e.target.files[0];
    uploadedBackground.value = URL.createObjectURL(file)
    background_photo_url.value = file
    console.log(background_photo_url, uploadbackground.value);
}

const calculateAge = () => {
    var birthdayA = this.authStore.owner.birthday.split("-");
    var birth = new Date(parseInt(birthdayA[2], 10), parseInt(birthdayA[1], 10) - 1, parseInt(birthdayA[0], 10));
    var dif = Date.now() - birth.getTime();
    ageActual = new Date(dif);
    console.log(ageActual);
}

//Update Info Influencer
const updateInfluencer = async () => {
    errors.value = []

    let formData = new FormData();
    if (name.value != authStore.owner.name) {
        formData.append('name', name.value || '')
    }
    if (name_artistic.value != authStore.owner.name_artistic) {
        formData.append('name_artistic', name_artistic.value || '')
    }
    if (state.value != authStore.owner.state) {
        formData.append('state', state.value || '')
    }
    if (email.value != authStore.owner.email) {
        formData.append('email', email.value || '')
    }
    if (email2.value != authStore.owner.email2) {
        formData.append('email2', email2.value || '')
    }
    if (category.value != authStore.owner.category) {
        formData.append('category', category.value || '')
    }
    if (gender.value != authStore.owner.gender) {
        formData.append('gender', gender.value || '')
    }
    if (cpf.value != authStore.owner.cpf) {
        formData.append('cpf', cpf.value || '')
    }
    if (cnpj.value != authStore.owner.cnpj) {
        formData.append('cnpj', cnpj.value || '')
    }
    if (birthday.value != authStore.owner.birthday) {
        formData.append('birthday', birthday.value || '')
    }
    if (landline.value != authStore.owner.landline) {
        formData.append('landline', landline.value || '')
    }
    if (phone.value != authStore.owner.phone) {
        formData.append('phone', phone.value || '')
    }
    if (phone2.value != authStore.owner.phone2) {
        formData.append('phone2', phone2.value || '')
    }
    if (about_me.value != authStore.owner.about_me) {
        formData.append('about_me', about_me.value || '')
    }
    if (theme.value != authStore.owner.theme) {
        formData.append('theme', theme.value || '')
    }
    if (language.value != authStore.owner.language) {
        formData.append('language', language.value || '')
    }
    if (profile_photo_url.value != authStore.owner.profile_photo_path) {
        formData.append('profile_photo_path', profile_photo_url.value)
    }
    if (background_photo_url.value != authStore.owner.background_photo_path) {
        formData.append('background_photo_path', background_photo_url.value)
    }
    if (address.value.adress != null) {
        formData.append('adress', JSON.stringify(address.value))
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

    } catch (err) {
        errors.value = err.response.data.errors
    }
}


</script>

<script>
export default {

    components: {
        PortifolioPreview
    },

    data: () => ({
        modelProfile: null,
        dialog: false,
    }),

}
</script>
