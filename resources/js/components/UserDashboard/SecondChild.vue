<template>
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-12">
                    <div class="card" style="text-align: center">
                        <div class="card-body">
                            <form @submit.prevent="chickout" class="forms-sample">
                                <h1>choese services</h1>
                                <div class="col-md-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                Checkbox Controls
                                            </h4>
                                            <div class="row" style="justify-content: center;">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <div
                                                            class="form-check"
                                                            v-for="product in products"
                                                            :key="product.id"
                                                        >
                                                            <label
                                                                class="form-check-label"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    v-model="
                                                                        select
                                                                    "
                                                                    class="form-check-input"
                                                                    :value="
                                                                        product.id
                                                                    " />
                                                                {{
                                                                    product.name
                                                                }}
                                                                <i
                                                                    class="input-helper"
                                                                ></i
                                                            ></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <button
                                                type="submit"
                                                class="btn btn-primary mr-2"
                                            >
                                                Chickout
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            products: [],
            select: [],
        };
    },
    components: {},
    created() {
        axios
            .get("http://127.0.0.1:8000/api/allServices")
            .then((response) => {
                console.log(response.data.data.results);
                this.products = response.data.data.results;
            })
            .catch((error) => console.log(error));
    }
    
    
    
    
    ,methods: {
        chickout(){
            const headers = { Authorization: localStorage.getItem("token") };

       const MicaniId=this.$route.params.micanicId;
       const selectme=this.select;
        var OrderComponent=this.$router.replace("/OrderComponent");
       var chickOutComponent=this.$router.replace("/chickOutComponent");

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition, showError);
        } else { 
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
        function showPosition(position) {
        axios.post("http://127.0.0.1:8000/api/orderStore",
                  {
                        micanic_id:MicaniId,
                        Latitude:position.coords.latitude,
                        longitude:position.coords.longitude,
                        service_id:selectme,
                    },
                    { headers }

                    )
                    .then(async (res) => {
                        // console.log(response.data.data.order);
                    //     if (res.response.request.status==200) {
                    //     Notification.success("add success");
                    //     return chickOutComponent;
                    //   }


                    })
                    .catch(function(error){ 
                     console.log(error.response.request.status) ;  
                      Notification.error(error.response.data.message)
                         if (error.response.request.status==500) {

                              this.$router.replace("/OrderComponent");       
                                           }
                      else{
                        this.$router.replace("/chickOutComponent");       
                      }
                    
                    });
        }
        function showError(error) {
        switch(error.code) {
            case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
            case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
            case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
            case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
        }
        }



        }


    },
};
</script>
