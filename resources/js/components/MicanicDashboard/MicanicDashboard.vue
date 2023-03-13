<template>
  <!-- partial -->
  <div class="container-fluid page-body-wrapper">

    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar" >
    <ul class="nav">


      <li class="nav-item">
        <router-link to="/MicanicDashboard" class="nav-link">
          Open Orders
        </router-link>
    </li>

    
      <li class="nav-item">
          <router-link to="/CloseOrders" class="nav-link">
            Close Orders
          </router-link>
      </li>





    </ul>
  </nav>
  
  <router-view></router-view>
  <!-- render component here havw contents -->




  </div>
  <!-- page-body-wrapper ends -->
</template>


<script>
import FirstChild from "./FirstChild.vue";

export default {
components:{
    FirstChild
}
}
</script>

<style scoped>
.sidebar {
  position:relative;
  width: 20%;
}
@media(max-width:990px)
{
  .sidebar {
    position: absolute;
    width: 20%;
  }
}

</style>