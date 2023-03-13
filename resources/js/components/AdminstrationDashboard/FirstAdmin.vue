<template>
<div  class="main-panel">
    <div class="content-wrapper">
      <div class="row">
     



      <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;">
        <div class="card-header">services</div>
        <div class="card-body">
          <h5 class="card-title">{{servicescount}}</h5>
        </div>
      </div>


      <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
        <div class="card-header">Total Orders</div>
        <div class="card-body">
          <h5 class="card-title">{{ orderscount }}</h5>
        </div>
      </div>




      <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
        <div class="card-header">Total Users</div>
        <div class="card-body">
          <h5 class="card-title">{{userscount}}</h5>
        </div>
      </div>


      <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;">
        <div class="card-header">Total micanic</div>
        <div class="card-body">
          <h5 class="card-title">{{micaniccount}}</h5>
        </div>
      </div>


      <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
        <div class="card-header">Total Payments</div>
        <div class="card-body">
          <h5 class="card-title">{{getTotalPayments}} EGP</h5>
        </div>
      </div>




      <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
        <div class="card-header">Total Messages</div>
        <div class="card-body">
          <h5 class="card-title">{{countAllMessages}}</h5>
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
      servicescount:'',
      orderscount:'',
      userscount:'',
      micaniccount:'',
      micanics:'',
      getTotalPayments:'',
      countAllMessages:'',

    };
  },
  methods: {},
  created() {

    axios.get("http://127.0.0.1:8000/api/allServicesCount").then((res) => {
      this.servicescount = res.data.data.result;
      return this.servicescount
    });
    axios.get("http://127.0.0.1:8000/api/allordersCount").then((res) => {
      this.orderscount = res.data.data.result;
    });
    axios.get("http://127.0.0.1:8000/api/allusersCount").then((res) => {
      this.userscount = res.data.data.result;
    });
    axios.get("http://127.0.0.1:8000/api/allMicanicCount").then((res) => {
      this.micaniccount = res.data.data.result;
    });

    axios.get("http://127.0.0.1:8000/api/getTotalPayments").then((res) => {
      this.getTotalPayments = res.data.data.totalPrice;
    });

    axios.get("http://127.0.0.1:8000/api/countAllMessages").then((res) => {
      this.countAllMessages = res.data.data.result;
    });



  },
};
</script>




<style scoped>
.card{
  margin: 20px;
}
</style>