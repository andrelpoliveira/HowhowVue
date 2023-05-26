<template>
    <div id="FacebookChart">
        <apexchart type="line" class="ma-2" width="700" height="300" :options="chartOptions" :series="series">
        </apexchart>
    </div>
</template>

<script>
export default {

    data: () => ({          
          series: [
          {
              name: "Visualização",
              data: [28, 29, 33, 60, 32, 32, 80, 40, 97, 76, 39, 20]
            },
            {
              name: "Contratados",
              data: [12, 11, 14, 18, 17, 13, 13, 33, 60, 32, 32, 80]
            },
            {
              name: "Campanhas",
              data: [5, 16, 7, 8, 11, 12, 6,12, 11, 14, 18, 17]
            },
          ],
          chartOptions: {
            chart: {
              height: 250,
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
            colors: ['#4267B2', '#898F9C', '#808080'],
            dataLabels: {
              enabled: true,
            },
            stroke: {
              curve: 'smooth'
            },
            title: {
              text: 'Facebook',
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
              categories: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
              title: {
                text: 'Month'
              }
            },
            yaxis: {
              title: {
                text: 'Seguidores'
              },
              min: 0,
              max: 200
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