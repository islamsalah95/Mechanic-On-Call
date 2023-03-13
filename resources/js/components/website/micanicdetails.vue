<template>

    <div>
        <Banner title="Micanic Details"></Banner>

        <div class="row px-xl-5">
                <div class="col-lg-5 pb-5">
                    <div id="product-carousel" class="carousel slide" data-interval="false">
                        <div class="carousel-inner border">
                            <!-- personal_img -->
                            <div class="carousel-item active">
                                <img class="w-100 h-100" :src="results.personal_img" alt="Image">
                            </div>

                            <!-- <div v-if="isAdmin=='admin'" class="carousel-item">
                                <img class="w-100 h-100" :src="results.cert_img" alt="Image">
                            </div>
                            <div v-if="isAdmin=='admin'" class="carousel-item">
                                <img class="w-100 h-100" :src="results.nid_img" alt="Image">
                            </div> -->

                        </div>
                        <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                            <i class="fa fa-2x fa-angle-left text-dark"></i>
                        </a>
                        <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                            <i class="fa fa-2x fa-angle-right text-dark"></i>
                        </a>
                    </div>




                </div>

                <div class="col-lg-7 pb-5">
                    <h3 class="font-weight-semi-bold">{{ results.name }}</h3>
                    <div class="d-flex mb-3">
                        <div class="text-primary mb-2">
                            <i v-for="i in chick(results.avgRate)" :key="i.id" class="fas fa-star"></i>
                        </div>
                        <small class="pt-1 px-2">Rate: {{ results.avgRate }}</small>
                    </div>


                </div>
            </div>


<div style="display: flex;">
                              <!-- cert_img -->
                              <div v-if="isAdmin=='admin'&& results.cert_img" >
                                <img style="width: 319px;" :src="results.cert_img" alt="Image">
                            </div>
                            <!-- nid_img -->
                            <div v-if="isAdmin=='admin'&& results.nid_img">
                                <img style="width: 319px;" :src="results.nid_img" alt="Image">
                            </div>
</div>



            <div class="row px-xl-5">
                <div class="col">
                    <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                        <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews</a>
                    </div>
                    <div class="tab-content">


                        <div class="tab-pane fade" id="tab-pane-3">
                            <div class="row">
                                <div v-if="resultsrate.length==0"  class="col-md-6">
                                  <h1>No Rating yet</h1>
                                </div>

                                <div v-for="rate in resultsrate" :key="rate.id" class="col-md-6">
                                    <h4 class="mb-4">{{rate.user_name}}</h4>
                                    <div class="media mb-4">
                                        <div class="media-body">
                                            <h6>rate: {{rate.rate}}</h6>
                                            <h6><i>{{rate.created_at}}</i></h6>
                                            <div class="text-primary mb-2">
                                                <i v-for="i in chick(rate.rate)" :key="i.id" class="fas fa-star"></i>
                                            </div>
                                            <p>{{rate.comment}}</p>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
     </div>
        <!-- Shop Detail End -->

</template>
<script>
import Banner from "./Banner.vue"

export default {
props: ["micanicid"],
  data() {
    return {

      results: [],
      resultsrate:[],
      isAdmin:localStorage.getItem("type")

    };
  },
  mounted() {
    axios.get(`http://127.0.0.1:8000/api/spacifyMicanicRating/${this.micanicid}`).then((res) => {
        this.results = res.data.data.results
        this.resultsrate = this.results.rate
        console.log(this.resultsrate)
        console.log(this.resultsrate.length)

    });
    },
    methods:{
        chick(rate){
            return parseInt(rate);
        }

    },
    components:{
    Banner
    },
};
</script>
