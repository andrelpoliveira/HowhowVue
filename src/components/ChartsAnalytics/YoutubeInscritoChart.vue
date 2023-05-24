<template>

    <div id="youtubeChart">
        <apexchart type="line" class="ma-2" width="380" height="260" :options="chartOptions" :series="series">
        </apexchart>
    </div>
</template>

<script>
export default {

    data: () => ({          
          series: [
            {
              name: "Visualização",
              data: [28, 29, 33, 60, 32, 32, 80]
            },
            {
              name: "Seguidores",
              data: [12, 11, 14, 18, 17, 13, 13]
            }
          ],
          chartOptions: {
            chart: {
              height: 280,
              type: 'line',
              dropShadow: {
                enabled: true,
                color: '#000',
                top: 18,
                left: 7,
                blur: 10,
                opacity: 0.2
              },
              toolbar: {
                show: false
              }
            },
            colors: ['#FF0000', '#282828'],
            dataLabels: {
              enabled: true,
            },
            stroke: {
              curve: 'smooth'
            },
            title: {
              text: 'Youtube',
              align: 'left'
            },
            grid: {
              borderColor: '#e7e7e7',
              row: {
                colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                opacity: 0.5
              },
            },
            markers: {
              size: 1
            },
            xaxis: {
              categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
              title: {
                text: 'Month'
              }
            },
            yaxis: {
              title: {
                text: 'Inscritos'
              },
              min: 5,
              max: 100
            },
            legend: {
              position: 'top',
              horizontalAlign: 'right',
              floating: true,
              offsetY: -25,
              offsetX: -5
            }
          },
          
          
        })
    }
</script>