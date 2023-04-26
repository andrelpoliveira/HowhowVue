<template>
  <br>
  <v-card>
  <v-row>

  <v-col cols="12" sm="6">
<v-card
    class="mx-auto"
    max-width="650"
> Atividades
  <Bar
      id="my-chart-id"
      :options="chartOptions"
      :data="chartData"
  />

<v-card-subtitle class="pt-4">
  Number 10
</v-card-subtitle>

<v-card-text>
  <div>Whitehaven Beach</div>

  <div>Whitsunday Island, Whitsunday Islands</div>
</v-card-text>

<v-card-actions>
  <v-btn color="orange">
    Share
  </v-btn>

  <v-btn color="orange">
    Explore
  </v-btn>
</v-card-actions>
</v-card>
  </v-col>

  <v-col cols="12" sm="6">
    <v-card
        class="mx-auto"
        max-width="400"
    >
      <v-img
          class="align-end text-white"
          height="200"
          src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
          cover
      >
        <v-card-title>Top 10 Australian beaches</v-card-title>
      </v-img>

      <v-card-subtitle class="pt-4">
        Number 10
      </v-card-subtitle>

      <v-card-text>
        <div>Whitehaven Beach</div>

        <div>Whitsunday Island, Whitsunday Islands</div>
      </v-card-text>

      <v-card-actions>
        <v-btn color="orange">
          Share
        </v-btn>

        <v-btn color="orange">
          Explore
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-col>
<g-chart type =" ColumnChart "
         :data =" chartData "
         :options =" chartOptions ">

</g-chart>
  </v-row>
  </v-card>
</template>
<script>
import { defineComponent, h } from 'vue';

import { GChart } from 'vue-google-charts';

export const type = 'ColumnChart';

export const data = [
  ['Year', 'Sales', 'Expenses', 'Profit'],
  ['2014', 1000, 400, 200],
  ['2015', 1170, 460, 250],
  ['2016', 660, 1120, 300],
  ['2017', 1030, 540, 350],
];

export const options = {
  chart: {
    title: 'Company Performance',
    subtitle: 'Sales, Expenses, and Profit: 2014-2017',
  },
  width: 800,
  height: 600,
};

export default defineComponent({
  name: 'GoogleChart',
  components: {
    GChart,
  },
  setup() {
    return () =>
        h(GChart, {
          data,
          options,
          type,
        });
  },
});

</script>