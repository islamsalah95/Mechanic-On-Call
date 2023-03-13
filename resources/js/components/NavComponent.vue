
<template>
<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <!-- <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background: #202C45 !important;">
      <a class="navbar-brand brand-logo" href="index.html"><img src="http://127.0.0.1:8000/frontend/images/logo.svg" alt="logo"/></a>
     
      <a class="navbar-brand brand-logo-mini" href="index.html"><img src="http://127.0.0.1:8000/frontend/images/logo-mini.svg" alt="logo"/></a>
    
    
      <button @click="change()" class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
        <span class="typcn typcn-th-menu"></span>
      </button>
    </div> -->
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background: #202C45 !important;">
      <a id="" href="index.html"><img src="http://127.0.0.1:8000/frontend/images/24220.svg" alt="logo"/></a>
     
      <span>Mechanic On Call</span>
      <!-- <button  v-if="isLogin"  class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
        <span class="typcn typcn-th-menu"></span>
      </button> -->
    </div>


    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end" style="background: #202C45 !important;">
      <ul class="navbar-nav mr-lg-2">


        <li  v-if="isLogin && type =='user'" class="nav-item  d-none d-lg-flex">
          <router-link to="/UserDashboard" class="nav-link">
            User Dashboard
          </router-link>
        </li>

        <li v-if="isLogin && type =='micanic'" class="nav-item  d-none d-lg-flex">
          <router-link to="/MicanicDashboard" class="nav-link">
            Micanic Dashboard
          </router-link>
        </li>


        <li v-if="isLogin && type =='admin'" class="nav-item  d-none d-lg-flex">
          <router-link to="/AdminstrationDashboard" class="nav-link">
            Adminstration Dashboard
          </router-link>
        </li>


        <li class="nav-item  d-none d-lg-flex">
          <router-link to="/Home" class="nav-link">
            Home
          </router-link>
        </li>


        <li class="nav-item d-none d-lg-flex">
          <router-link to="/services" class="nav-link">
            Services
          </router-link>
        </li>
        <li class="nav-item d-none d-lg-flex">
          <router-link to="/micanics" class="nav-link">
            Mecanics
          </router-link>
        </li>


        <li class="nav-item  d-none d-lg-flex">
          <router-link to="/Contact" class="nav-link">
            Contact Us
          </router-link>
        </li>

      <!-- stack orders -->
        <li v-if="stackOrder && isLogin && type =='user'" class="nav-item dropdown d-flex" @click="setCounter">
          <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
            <i class="typcn typcn-mail"></i>
            <span class="count bg-success">{{ counter }}</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
            <a class="dropdown-item preview-item">
              <div class="preview-item-content flex-grow">
                <p class="font-weight-light small-text mb-0">There is stack order you dont pay for it,you have to pay before create new order or cancel
                </p>
                <p class="font-weight-light small-text mb-0">
                  <button type="button" class="btn btn-inverse-danger btn-fw" @click="cancel">cancel</button>
                  <button type="button" class="btn btn-inverse-success btn-fw" @click="pay">pay</button>
                </p>
              </div>
            </a>
          </div>
        </li>

        <!-- <li class="nav-item dropdown d-flex">
          <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
            <i class="typcn typcn-message-typing"></i>
            <span class="count bg-success">2</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
            <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
            <a class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <img src="http://127.0.0.1:8000/frontend/images/faces/face4.jpg" alt="image" class="profile-pic">
              </div>
              <div class="preview-item-content flex-grow">
                <h6 class="preview-subject ellipsis font-weight-normal">David Grey
                </h6>
                <p class="font-weight-light small-text mb-0">
                  The meeting is cancelled
                </p>
              </div>
            </a>
            <a class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <img src="http://127.0.0.1:8000/frontend/images/faces/face2.jpg" alt="image" class="profile-pic">
              </div>
              <div class="preview-item-content flex-grow">
                <h6 class="preview-subject ellipsis font-weight-normal">Tim Cook
                </h6>
                <p class="font-weight-light small-text mb-0">
                  New product launch
                </p>
              </div>
            </a>
            <a class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <img src="http://127.0.0.1:8000/frontend/images/faces/face3.jpg" alt="image" class="profile-pic">
              </div>
              <div class="preview-item-content flex-grow">
                <h6 class="preview-subject ellipsis font-weight-normal"> Johnson
                </h6>
                <p class="font-weight-light small-text mb-0">
                  Upcoming board meeting
                </p>
              </div>
            </a>
          </div>
        </li> -->
        <li v-if="isLogin && type =='micanic'" class="nav-item dropdown  d-flex">
          <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
            <i class="typcn typcn-bell mr-0"></i>
            <span class="count bg-danger">{{ countNotifications }}</span>
          </a>
          <div v-if="isLogin && type =='micanic'" class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
            <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
           <!-- ////////////////////// v-if="notifies.length !==0 " -->
            <a v-for="result in results" :key="result.id"  class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <div class="preview-icon bg-success">
                  <i class="typcn typcn-info-large mx-0"></i>
                </div>
              </div>
              <div class="preview-item-content">
                <h5 class="preview-subject font-weight-normal">New Order</h5>
                <h6 class="preview-subject font-weight-normal">{{result.status}}</h6>
                <p class="font-weight-light small-text mb-0">
                  {{result.created_at}}
                </p>
              </div>
            </a>
<!-- //////////////////////////////////// -->
          </div>
        </li>
        <li class="nav-item nav-profile dropdown">
          <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
            <i class="typcn typcn-user-outline mr-0"></i>
            <span class="nav-profile-name"  v-if="isLogin">{{userName}}</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
            <!-- <a class="dropdown-item">
            <i class="typcn typcn-cog text-primary"></i>
            Settings
            </a> -->

            <LogoutComponent v-on:logout="logout" v-if="isLogin"></LogoutComponent>

            <router-link v-if="!isLogin" to="/LoginComponent" class="dropdown-item">
                Login
              </router-link>

              <router-link v-if="!isLogin" to="/RegisterUsersComponent" class="dropdown-item">
                Register Users
              </router-link>

              <router-link v-if="!isLogin" to="/RegisterMicancsComponent" class="dropdown-item">
                Register Micancs
              </router-link>

          </div>
        </li>
      </ul>
      <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
        <span class="typcn typcn-th-menu"></span>
      </button>
    </div>
  </nav>
</template>
<script>
import LogoutComponent from "./auth/LogoutComponent.vue";

export default {
  name: "NavComponent",
  components:{
    LogoutComponent
  },
  data() {
    return {
        logout:true,
        isLogin:false,
        userName:localStorage.getItem("name"),
        type:localStorage.getItem("type"),
        Notifications:[],
        countNotifications:0,
        results:[],
        isLoading:false,
        stackOrder:'',
        counter:''

    };
  }, created() {
        const token = localStorage.getItem("token");
        console.log(token);
        if (token) {
            this.isLogin = true;
        }else{
            this.isLogin = false;
        }

        this.$root.$on("isLogin", (islogin) => {
            this.isLogin = islogin;
            this.type= localStorage.getItem("type");
            this.userName= localStorage.getItem("name");

        });

const headers = { Authorization: localStorage.getItem("token") };
axios.get(
      `http://127.0.0.1:8000/api/StackOrders`,
      { headers }

    )
    .then((response) => {
      console.log(response.data);
      console.log(response.data.data.result);
      this.stackOrder=response.data.data.result;
      if(response.data.data.result){
      this.counter=1;
      }

    })
    .catch((error) => {
      console.log(error);
    });

    } ,
  methods: {
    logout(){
        this.isLogin = false;
    },
     playSound () {
	let ding = new Audio('http://127.0.0.1:8000/frontend/NotificationsSound/mixkit-arabian-mystery-harp-notification-2489.wav');
	ding.play();
},
cancel(){
const headers = { Authorization: localStorage.getItem("token") };
axios.delete(
      `http://127.0.0.1:8000/api/CloseStackOrders`,
      { headers }
    )
    .then((response) => {
      console.log(response);
      if(response.status==200){
        this.stackOrder='';

      }
    })
    .catch((error) => {
      console.log(error);
    });
  }
,pay(){
  return this.$router.push("/chickOutComponent");
}
,setCounter(){
  return this.counter=0;
},change(){
 var m = document.getElmenetById("tog");
  m.classList.toggle("a");

  }
  },

  computed: {
    // a computed getter
    reversedMessage: function () {
      // `this` points to the vm instance
      return this.Notifications;
    }
  },mounted(){
    var MicanicId=localStorage.getItem("id");
    Echo.channel(`NewOrd.${MicanicId}`)
        .listen('NewOrd', (e) => {
      this.countNotifications=this.countNotifications+1;
      this.results.push(e.order);
      return this.playSound();
 });



  }

};
</script>
<style scoped>
a img {
  width: calc(160px - 133px);
  max-width: 100%;
  height: 34;
  margin: auto;
  vertical-align: middle;
}

span {
  color: #E81C2E;
}

@media(max-width:990px)
{
  .navbar .navbar-menu-wrapper .navbar-nav .nav-item .nav-link {
    color: aliceblue;
    font-size: 0.875rem;
    font-style: normal;
    /* padding: 1.2rem 1.2rem; */
    font-weight: 300;
    width: 86px;
}
}
</style>


