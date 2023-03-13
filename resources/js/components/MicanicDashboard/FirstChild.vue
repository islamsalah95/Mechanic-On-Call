<template>
  <div class="main-panel">
      <div class="content-wrapper">
        <div class="row" v-if="isLoading">
          <BaseSpinner></BaseSpinner>
      </div>
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">open Order</h4>

                  <div class="table">
                    <table class="table">
                      <thead>
                        <tr>
                         
                          <th>Order</th>
                          <th>Status</th>
                          <th>services</th>
                          <th>close</th>
                          <th>Location</th>


                        </tr>
                      </thead>
                      <tbody>
                        <tr v-if="items">

<td>{{items.status}}</td>

<td>
  <label :class="[items.status== 'open' ? 'badge badge-warning' : 'badge badge-success']">{{items.status== 'open' ? 'In progress' : 'Completed'}}</label>
</td>

<th>
<h6 v-for="result in items.service" :key="result.id">{{result.name}}</h6>
</th>


<td>
  <button @click="close" type="submit" class="btn btn-primary mr-2" style="background-color: brown;">close</button>
</td> 

 <td>
  <button @click="link" type="submit" class="btn btn-primary mr-2" style="background-color: brown;">Location</button>
 </td> 
                          </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <h1 class="row">{{src}}</h1>

            <!-- <a  class="row" href="https://www.google.com/maps/@29.321854,31.2052319,15.25z">{{src}}</a> -->

            <button v-if="src" type="button" class="btn btn-info btn-rounded btn-fw">
              <a v-bind:href="'https://www.google.com/maps/@'+ Latitude + ',' + longitude">
                Go
              </a>
            </button>

      </div>
  </div>
</template>

<script>
import BaseSpinner from '../BaseSpinner.vue'
export default {
name: "OrderComponent",
components:{
    BaseSpinner
  },
data() {
  return {
    items: '',
    src:"",
    isLoading:false

  };
},created(){
  const headers = { Authorization: localStorage.getItem("token") };
  axios.get(
        `http://127.0.0.1:8000/api/showOpenOrderMicanic`,
        { headers }

      )
      .then((response) => {
        console.log(response.data.data.results);
        this.items=response.data.data.results;
      })
      .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });
},
methods: {
  link(){

       var Latitude=this.items.Latitude;
       var longitude=this.items.longitude;
       var  location= `${Latitude},${longitude}`;
       console.log(location);

  const options = {
  method: 'GET',
  url: 'https://trueway-geocoding.p.rapidapi.com/ReverseGeocode',
  params: {location: `${Latitude},${longitude}`, language: 'en'},
  headers: {
    'X-RapidAPI-Key': '2135a8002fmsh8b8a665f7121ea8p1f7fecjsne548afc779cb',
    'X-RapidAPI-Host': 'trueway-geocoding.p.rapidapi.com'
  }
};


axios.request(options).then(
  (response)=>{this.src=`${response.data.results[2].address} ,street ${response.data.results[2].street}`;}
  )
  .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });


  },async close() {
    this.isLoading=true;
    var orderId=this.items.id;
    const headers = { Authorization: localStorage.getItem("token") };

     await axios.post(`http://127.0.0.1:8000/api/closeOrder/${orderId}`, { headers } )
        .then((response) => {
          console.log(response.data.data.results);
          Notification.success("close order success");
          this.items=null
        })
        .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });

        this.isLoading=false;

    //   return this.$router.push("/PayingsView");
    },

},mounted(){

  var MicanicId=localStorage.getItem("id");
    Echo.channel(`NewOrd.${MicanicId}`)
        .listen('NewOrd', (e) => {
      this.items=e.order;
 });
},
};
</script>

