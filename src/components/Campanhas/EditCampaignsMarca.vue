<template>
    <v-window-item value="editCampanha">
        <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Dados da campanha</v-card-title>
        <v-form v-model="valid">
            <v-row class="ma-2">
                <v-col cols="12" md="6">
                    <v-text-field density="comfortable" label="Nome da marca" variant="outlined"
                        disabled="true"></v-text-field>
                </v-col>
                <v-col cols="12" md="6">
                    <v-text-field prepend-inner-icon="mdi-rename-box" density="comfortable" label="Nome da campanha"
                        variant="outlined" disabled="true"></v-text-field>
                </v-col>
                <v-col cols="12" md="3">
                    <v-autocomplete :items="types" label="Tipo de custo" placeholder="Selecione.." variant="outlined"
                        density="comfortable" disabled="true">

                    </v-autocomplete>
                </v-col>
                <v-col cols="12" md="3">
                    <v-text-field prepend-inner-icon="mdi-currency-usd" density="comfortable" label="valor"
                        variant="outlined" disabled="true"></v-text-field>
                </v-col>
                <v-col cols="12" md="6">
                    <v-text-field prepend-inner-icon="mdi-currency-usd" density="comfortable" label="Orçamento planejado"
                        variant="outlined" disabled="true"></v-text-field>
                </v-col>
                <v-col cols="12" md="6">
                    <v-autocomplete :items="states" prepend-inner-icon="mdi-map-marker" label="Localização da audiência"
                        placeholder="Selecione.." variant="outlined" density="comfortable" disabled="true">

                    </v-autocomplete>
                </v-col>
                <v-col cols="12" md="6">
                    <v-select :items="category" prepend-inner-icon="mdi-shape" label="Categorias do Influenciador"
                        placeholder="Selecione máximo 3 opções" variant="outlined" density="comfortable" chips multiple
                        disabled="true">

                    </v-select>
                </v-col>
                <v-col cols="12" md="6">
                    <v-text-field prepend-inner-icon="mdi-account-group-outline" density="comfortable"
                        label="Alcance mínimo" variant="outlined" disabled="true"></v-text-field>
                </v-col>
                <v-col cols="12" md="3">
                    <v-card-text>Visibilidade da campanha</v-card-text>
                </v-col>
                <v-col cols="12" md="3">
                    <v-tooltip location="top center" origin="auto" open-on-focus="true">
                        <template v-slot:activator="{ props }">
                            <v-switch v-bind="props" color="primary" hide-details v-model="isPublic"
                                :label="`${isPublic.toString()}`" false-value="Privado" true-value="Público"
                                disabled="true">

                            </v-switch>
                        </template>

                        <div>Um evento privado não aparece para os influenciadores,<br> porém você pode escolher todos em
                            uma lista<br>
                            Um evento público aparece para todos os influenciadores,<br> e você ainda pode escolher todos em
                            uma lista</div>
                    </v-tooltip>
                </v-col>
                <!-- <v-col cols="12" md="3">
                    <v-text-field type="date" density="comfortable" label="data de início" variant="outlined"></v-text-field>
                </v-col>
                <v-col cols="12" md="3">
                    <v-text-field type="date" density="comfortable" label="data de término" variant="outlined"></v-text-field>
                </v-col> -->
                <v-divider></v-divider>
                <v-card-title class="text-h8 text-md-h6 text-lg-h4 font-weight-bold pb-2">Opções da campanha</v-card-title>
                <v-col cols="12" md="12">
                    <v-file-input :rules="rulesFile" accept="image/png, image/jpeg, image/bmp" prepend-icon="mdi-camera"
                        label="Logo da Campanha" density="comfortable" variant="outlined" disabled="true"></v-file-input>
                </v-col>
                <v-col cols="12" md="12">
                    <v-textarea label="Propósito da Campanha" variant="outlined" density="comfortable"
                        disabled="true"></v-textarea>
                </v-col>
                <v-col cols="12" md="12" class="d-flex">
                    <v-btn append-icon="mdi-arrow-right-bold" color="blue-darken-3" variant="elevated" :width="200"
                        location="bottom" disabled="true">Alterar Campanha</v-btn>
                </v-col>
            </v-row>
        </v-form>
    </v-window-item>
</template>
<script setup>
import { defineProps } from 'vue';

const props = defineProps({
    teste: {
        type: String,

    },
    // openedit:{
    //     type:Array,

    // },
});

console.log(props)
</script>
<script>
export default {
    data: () => ({
        //Switch campanha
        isPublic: 'Privado',
        //Tooltip info campanha
        loactionSide: 'top',
        locationAlign: 'center',
        originSide: 'auto',
        originAlign: '',
        //Tipos de Custo Campanha
        types: ['CPM Marca', 'CPM Howhow', 'Tabelado', 'Comissão'],
        //Cidades campanha
        states: ['Acre', 'Alagoas', 'Amapá', 'Amazonas', 'Bahia', 'Ceará', 'Espírito Santo', 'Goiás',
            'Maranhão', 'Mato Grosso', 'Mato Grosso do Sul', 'Minas Gerais', 'Pará', 'Paraíba',
            'Paraná', 'Pernambuco', 'Piauí', 'Rio de Janeiro', 'Rio Grande do Norte', 'Rio Grande do Sul',
            'Rondônia', 'Roraima', 'Santa Catarina', 'São Paulo', 'Sergipe', 'Tocantins'],
        //Categoria Influenciador
        category: ['Anime & Cartoon', 'Apps & Serviços', 'Comédia & Humor', 'Curiosidades', 'Dança Profissional',
            'Dublagem', 'Entretenimento', 'Fashion/Moda', 'Games', 'Gastronomia/Comida', 'Life Skills (Comportamento na vida)',
            'Make Prank (Pegadinhas)', 'Makeup/Maquiagem', 'Motivação', 'Música', 'Outros'],
        //Input file
        rulesFile: [
            value => {
                return !value || !value.length || value[0].size < 5000000 || 'A imagem não pode ultrapassar 5MB!'
            },
        ],
    }),

    computed: {
        location() {
            return `${this.locationSide} ${this.locationAlign}`
        },
        origin() {
            return this.originDisabled ? this.originSide : `${this.originSide} ${this.originAlign}`
        },
    }
}
</script>