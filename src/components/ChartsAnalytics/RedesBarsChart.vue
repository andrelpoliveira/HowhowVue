<template>
  <div class="RedesBarsChart">
    <div id="chart">
      <apexchart type="bar" width="400" height="300" :options="chartOptions" :series="series"></apexchart>
    </div>
  </div>
  <div class="actions">
      <v-card-text class="dashboard-card-text mx-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab dolores
        doloremque nihil tenetur itaque libero unde repudiandae nisi eligendi id quia, accusamus aperiam architecto
        dolorum a ut magni neque vero.</v-card-text>
        <div class="ativar-bars-chart my-2">
          <v-btn  @click="ativar" color="rgba(255,255,255,0)" flat>ATIVAR</v-btn>
        </div>
    </div>
</template>

<style>
.RedesBarsChart {
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
    series: [
      {
        name: 'Actual',
        data: [
          {
            x: 'Youtube',
            y: 12,
            goals: [
              {
                name: 'Expected',
                value: 14,
                strokeWidth: 2,
                strokeDashArray: 2,
                strokeColor: '#775DD0'
              }
            ]
          },
          {
            x: 'Instagram',
            y: 44,
            goals: [
              {
                name: 'Expected',
                value: 54,
                strokeWidth: 5,
                strokeHeight: 10,
                strokeColor: '#775DD0'
              }
            ]
          },
          {
            x: 'Facebook',
            y: 54,
            goals: [
              {
                name: 'Expected',
                value: 52,
                strokeWidth: 10,
                strokeHeight: 0,
                strokeLineCap: 'round',
                strokeColor: '#775DD0'
              }
            ]
          },
          {
            x: 'Twitter',
            y: 66,
            goals: [
              {
                name: 'Expected',
                value: 61,
                strokeWidth: 10,
                strokeHeight: 0,
                strokeLineCap: 'round',
                strokeColor: '#775DD0'
              }
            ]
          },
          {
            x: 'TikTok',
            y: 81,
            goals: [
              {
                name: 'Expected',
                value: 66,
                strokeWidth: 10,
                strokeHeight: 0,
                strokeLineCap: 'round',
                strokeColor: '#775DD0'
              }
            ]
          },
          {
            x: 'Kwai',
            y: 67,
            goals: [
              {
                name: 'Expected',
                value: 70,
                strokeWidth: 5,
                strokeHeight: 10,
                strokeColor: '#775DD0'
              }
            ]
          }
        ]
      }
    ],
    chartOptions: {
      chart: {
        height: 350,
        type: 'bar'
      },
      plotOptions: {
        bar: {
          horizontal: true,
        }
      },
      colors: ['#00E396'],
      dataLabels: {
        formatter: function (val, opt) {
          const goals =
            opt.w.config.series[opt.seriesIndex].data[opt.dataPointIndex]
              .goals

          if (goals && goals.length) {
            return `${val} / ${goals[0].value}`
          }
          return val
        }
      },
      legend: {
        show: true,
        showForSingleSeries: true,
        customLegendItems: ['Actual', 'Expected'],
        markers: {
          fillColors: ['#00E396', '#775DD0']
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