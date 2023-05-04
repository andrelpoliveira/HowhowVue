<template>
  <v-card color="#eff3f8" class="rounded-lg" flat>
    <v-row>
      <v-col cols="12" sm="8">
        <br>
        <v-card color="blue" class="rounded-lg mx-auto" flat>
          <v-card class="mx-auto" >
          <v-card-item>
              <v-card-title>Atividades</v-card-title>
            <apexchart type="line" height="250" :options="chartOptions" :series="GraficoAtividades"></apexchart>
          </v-card-item>
        </v-card>
        </v-card>
        <br>
      </v-col>
 
      <v-col cols="12" sm="4">
      <br>

        <v-card color="black" class="rounded-lg mx-2" flat>
          <v-card class="mx-auto" max-width="368">
            <v-card class="mx-auto" max-width="350"
  >
    <v-img
      src="https://cdn.vuetifyjs.com/images/backgrounds/vbanner.jpg"
      height="188px"
      cover
    ></v-img>

    <v-card-title>
      Top 5 Campanhas
    </v-card-title>

    <v-card-subtitle>
      Campanhas mais rentáveis da semana
    </v-card-subtitle>

    <v-card-actions>
      <v-text
        color="blue"
        variant="text"
      >
        Mostrar
      </v-text>

      <v-spacer></v-spacer>

      <v-btn
        :icon="show ? 'mdi-chevron-up' : 'mdi-chevron-down'"
        @click="show = !show"
      ></v-btn>
    </v-card-actions>

    <v-expand-transition>
      <div v-show="show">
        <v-divider></v-divider>

        <v-card
    class="mx-auto"
    max-width="425"
  >
    <v-list lines="two">
      <v-list-subheader>hoje</v-list-subheader>

      <v-list-item
        prepend-avatar="https://cdn.vuetifyjs.com/images/lists/1.jpg"
        title="Brunch this weekend?"
      >
        <template v-slot:subtitle>
          <span class="font-weight-bold">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?
        </template>
      </v-list-item>

      <v-divider inset></v-divider>

      <v-list-item
        prepend-avatar="https://cdn.vuetifyjs.com/images/lists/2.jpg"
      >
        <template v-slot:title>
          Summer BBQ <span class="text-grey-lighten-1">4</span>
        </template>

        <template v-slot:subtitle>
          <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
        </template>
      </v-list-item>

      <v-divider inset></v-divider>

      <v-list-item
        prepend-avatar="https://cdn.vuetifyjs.com/images/lists/3.jpg"
        title="Oui oui"
      >
        <template v-slot:subtitle>
          <span class="font-weight-bold">Sandra Adams</span> &mdash; Do you have Paris recommendations? Have you ever been?
        </template>
      </v-list-item>
      <v-divider inset></v-divider>

      <v-list-item
        prepend-avatar="https://cdn.vuetifyjs.com/images/lists/2.jpg"
      >
        <template v-slot:title>
          Summer BBQ <span class="text-grey-lighten-1">4</span>
        </template>

        <template v-slot:subtitle>
          <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
        </template>
      </v-list-item>

      <v-divider inset></v-divider>

      <v-list-item
        prepend-avatar="https://cdn.vuetifyjs.com/images/lists/2.jpg"
      >
        <template v-slot:title>
          Summer BBQ <span class="text-grey-lighten-1">4</span>
        </template>

        <template v-slot:subtitle>
          <span class="font-weight-bold">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.
        </template>
      </v-list-item>

    </v-list>
  </v-card>
      </div>
    </v-expand-transition>
  </v-card>
          </v-card>
        </v-card>
        <br>
      </v-col>

    </v-row>
  </v-card>
</template>

<script>
export default {

data: function() {
  return {
    show: false,

    GraficoAtividades: [
      
      {name: 'Saidas', type: 'column', color: '#f99a7f', data: [1.4, 2, 2.5, 1.5, 2.5, 2.8, 3.8, 4.6, 2.5, 2.8, 3.8, 4.6,],}, 
      {name: 'Entradas', type: 'column', color: '#00d47f', data: [1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000,9000, 10000, 11000, 12000]}, 
      {name: 'Receita', type: 'line', color: '#78b3d5', data: [20, 29, 37, 36, 44, 45, 50, 58, 29, 37, 36, 44],}
    ],
    chartOptions: {
      chart: {height: 350, type: 'line', stacked: false}, dataLabels: {enabled: false},stroke: {width: [1, 1, 4],},
      xaxis: {categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],},
      yaxis: [
        {axisTicks: {show: true,},
          axisBorder: {show: true,color: '#f99a7f'},
          labels: {style: {colors: '#f99a7f',}},
          title: {text: "Fluxo de Saida", style: {color: '#f99a7f',}},
          tooltip: {enabled: true}
        },
        {seriesName: 'Renda', opposite: true, axisTicks: {show: true,},
          axisBorder: {show: true, color: '#00d47f'},
          labels: {style: {colors: '#00d47f',}},
          title: {text: "Fluxo de Entrada", style: {color: '#00d47f',}},
        },
        {seriesName: 'Renda', opposite: true, axisTicks: {show: true,},
          axisBorder: {show: true,color: '#78b3d5'},
          labels: {style: {colors: '#78b3d5',},},
          title: {text: "Fluxo de receita",style: {color: '#78b3d5',}}
        },
      ],
      tooltip: {fixed: {enabled: true, position: 'topLeft', // topRight, topLeft, bottomRight, bottomLeft
      offsetY: 30,offsetX: 60},
      },
      legend: {horizontalAlign: 'left',offsetX: 40}
    },
  }
}
}
</script>
<style></style>