<template>
  <div class="redesColumnChart">
    <div id="chart">
      <apexchart type="bar" height="280" :options="chartOptions" :series="series"></apexchart>
    </div>
  </div>
  <div class="actions">
    <v-card-title class="dashboard-card-title my-2">alguma coisa</v-card-title>
    <v-card-text class="dashboard-card-text mx-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab dolores
      doloremque nihil tenetur itaque libero unde repudiandae nisi eligendi id quia, accusamus aperiam architecto
      dolorum a ut magni neque vero.</v-card-text>
    <div class="ativar-bars-chart my-2">
      <v-btn @click="ativar" color="rgba(255,255,255,0)" flat>ATIVAR</v-btn>
    </div>
  </div>
</template>

<style>
.RedesColumnChart {
  display: flex !important;
  justify-content: center !important;
  align-items: center !important;
  flex-direction: column;
}

.actions {
  display: flex !important;
  justify-content: center !important;
  flex-direction: column;
  text-align: center;
  align-items: center !important;

}

.ativar-bars-chart {
  width: 100px !important;
  border-radius: 12px !important;
  color: #fff;
  background-color: var(--primary-color-lighter);
}
</style>

<script>
export default {
  data: () => ({
    value: '',
    series: [{
      name: 'Views',
      data: [44, 55, 57, 56, 61, 58, 63, 60, 66, 66, 66, 66]
    }, {
      name: 'Likes',
      data: [76, 85, 101, 98, 87, 105, 91, 114, 94, 91, 114, 94]
    }, {
      name: 'Follows',
      data: [35, 41, 36, 26, 45, 48, 52, 53, 41, 91, 114, 94]
    }, {
      name: 'Compartilhados',
      data: [76, 85, 101, 98, 87, 105, 91, 114, 94, 91, 114, 94]
    }],
    chartOptions: {
      chart: {
        type: 'bar',
        height: 280
      },
      plotOptions: {
        bar: {
          horizontal: false,
          columnWidth: '55%',
          endingShape: 'rounded'
        },
      },
      dataLabels: {
        enabled: false
      },
      stroke: {
        show: true,
        width: 2,
        colors: ['transparent']
      },
      xaxis: {
        categories: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Des'],
      },
      yaxis: {
        title: {
          text: '$ (thousands)'
        }
      },
      fill: {
        opacity: 1
      },
      tooltip: {
        y: {
          formatter: function (val) {
            return "$ " + val + " thousands"
          }
        }
      }
    },


  }),
  methods: {
    ativar: function () {
      this.value = this.series
    },
  }
}
</script>