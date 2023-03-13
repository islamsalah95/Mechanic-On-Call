<template>
    <div>
      <!-- Page Header End -->
      <Banner title="Services"></Banner>
      <!-- Contact Start -->
        <div class="service">
            <div class="container">
                <div class="section-header text-center">
                    <p>What We Do?</p>
                    <h2>Our Services</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6" v-for="service in services" :key="service.id">
                        <div class="service-item">
                            <h3>{{service.name}}</h3>
                            <h4>Price: {{service.price}}</h4>
                        </div>
                    </div>

                </div>
            </div>
        </div>
       
        <Footer></Footer>
    </div>
</template>
<script>
  import Banner from "./Banner.vue"
  import Footer from "./Footer.vue"

export default {
    data(){
        return{
            services:[]
        }
    },
    components:{
        Footer,Banner
    },
    mounted(){
        axios.get("http://127.0.0.1:8000/api/allServices").then((res) => {
            this.services = res.data.data.results
        });
    }
}
</script>
