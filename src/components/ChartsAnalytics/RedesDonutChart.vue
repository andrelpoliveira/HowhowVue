<template>
    <div>
        <div class="RedesDonutChart">
            <div>
                <apexchart  id="chart"  type="donut" width="280" :options="chartOptions"
                    :series="series">
                </apexchart>
            </div>
        </div>

        <div class="actions">
            <div class="edit-icons mb-2">
                <div class="influencer-card-btns">
                    <v-img class="card-youtube-icon " src="./../../assets/images/redes/redes-icons/youtube.svg">
                        <v-btn @click="youtube" color="rgba(255,255,255,0)"></v-btn>
                    </v-img>
                </div>

                <div class="influencer-card-btns">
                    <v-img class="card-instagram-icon " src="./../../assets/images/redes/redes-icons/instagram.svg">
                        <v-btn @click="instagram" color="rgba(255,255,255,0)"></v-btn>
                    </v-img>
                </div>

                <div class="influencer-card-btns">
                    <v-img class="card-twitter-icon " src="./../../assets/images/redes/redes-icons/twitter.svg">
                        <v-btn @click="twitter" color="rgba(255,255,255,0)"></v-btn>
                    </v-img>
                </div>
                <div class="influencer-card-btns">
                    <v-img class="card-facebook-icon " src="./../../assets/images/redes/redes-icons/facebook.svg">
                        <v-btn @click="facebook" color="rgba(255,255,255,0)"></v-btn>
                    </v-img>
                </div>
                <div class="influencer-card-btns">
                    <v-img class="card-tiktok-icon " src="./../../assets/images/redes/redes-icons/tik_tok.svg">
                        <v-btn @click="tiktok" color="rgba(255,255,255,0)"></v-btn>
                    </v-img>
                </div>
                <div class="influencer-card-btns">
                    <v-img class="card-kwai-icon " src="./../../assets/images/redes/redes-icons/kwai.svg">
                        <v-btn @click="kwai" color="rgba(255,255,255,0)"></v-btn>
                    </v-img>
                </div>
            </div>
        </div>
        <v-card-title class="dashboard-card-title my-2">alguma coisa</v-card-title>
        <v-card-text class="dashboard-card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur numquam assumenda rerum beatae, eligendi dicta aut nemo! Quibusdam excepturi esse quis id sunt illum, natus voluptatem vel alias mollitia veniam?</v-card-text>
    </div>
</template>

<style>
.RedesDonutChart {
    display: flex !important;
    justify-content: center !important;
}

.actions {
    display: flex !important;
    justify-content: center !important;
}
</style>

<script setup>
// import VueApexCharts from 'vue3-apexcharts';


</script>

<script>
export default {
    
    // chart: new VueApexCharts("renderChart", {
    data: () => ({

        series: [44, 25, 13, 80],
        values: {

            youtubeSeries: [44, 25, 13, 80],
            instagramSeries: [70, 20, 33],
            facebookSeries: [44, 55, 13, 33],
            twitterSeries: [44, 55],
            tiktokSeries: [44, 15, 13, 60],
            kwaiSeries: [44, 55, 33],
        },

        chartOptions: {

            labels: ["Views", "Likes", "Follows", "Compartilhados"],
            chart: {
                redrawOnWindowResize: true,
                id: 'chart',
                width: 380,
                height: 200,
                type: 'donut',
                offsetY: 10,

            },
            dataLabels: {
                enabled: false
            },
            responsive: [{
                breakpoint: 200,
                options: {
                    chart: {
                        width: '100%',

                    },
                    legend: {
                        show: true
                    }
                }
            }],
            legend: {
                position: 'top',
                offsetY: 0,
                height: 30,
                width: 300,
                itemMargin: {
                    horizontal: 5,
                    vertical: 0
                },
            }
        },

    }),
    // }),



    methods: {

        youtube: function () {
            this.series = this.values.youtubeSeries
        },

        instagram: function () {
            this.series = this.values.instagramSeries
        },

        facebook: function () {
            this.series = this.values.facebookSeries
        },

        twitter: function () {
            this.series = this.values.twitterSeries
        },

        tiktok: function () {
            this.series = this.values.tiktokSeries
        },

        kwai: function () {
            this.series = this.values.kwaiSeries
        },
    },
}
</script>