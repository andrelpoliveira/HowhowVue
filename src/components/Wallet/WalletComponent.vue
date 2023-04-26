<template>
  
  <div id="app" style="width:200;">
    <h1 style="padding-left:80px;">Vue Js Google Column Charts Example - nicesnippets.com</h1>
    
      <v-row>
    <v-card >
    <GChart
      type="ColumnChart"
      :data="chartData"
      :options="chartOptions"
    />  
  </v-card>
  <v-card>
    <GChart
      type="ColumnChart"
      :data="chartData"
      :options="chartOptions"
    />  
  </v-card>
</v-row>

  </div>

</template>

<script>
import { GChart } from "vue-google-charts";
export default {
  name: "App",
  components: {
    GChart
  },
  data() {
    return {
      // Array will be automatically processed with visualization.arrayToDataTable function
      chartData: [
        ["Year", "Sales", "Expenses", "Profit"],
        ["2017", 1030, 540, 350],
        ["2018", 1000, 400, 200],
        ["2019", 1170, 460, 250],
        ["2020", 660, 1120, 300],
        ["2017", 1030, 540, 350],
        ["2018", 1000, 400, 200],
        ["2019", 1170, 460, 250],
        ["2020", 660, 1120, 300],
        ["2017", 1030, 540, 350],
        ["2018", 1000, 400, 200],
        ["2019", 1170, 460, 250],
        ["2020", 660, 1120, 300],
      ],
      chartOptions: {
        chart: {
          title: "Company Performance",
          subtitle: "Sales, Expenses, and Profit: 2017-2020"
        }
      }
    };
  }
};
</script>