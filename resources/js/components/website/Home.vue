<template>
  <div>
    <!-- Carousel Start -->
    <div class="carousel">
      <div class="container-fluid">
        <div class="row">
          <div class="carousel-item">
            <div class="carousel-img">
              <img
                src="http://127.0.0.1:8000/frontend/website/img/carousel-1.jpg"
                alt="Image"
              />
            </div>
            <div class="carousel-text">
              <h3>Repairing & Detailing</h3>
              <h1>Keep your Car Newer</h1>

              <router-link to="/services" class="btn btn-custom">
                Explore More
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- About Start -->
    <!-- <div class="about">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="about-img">
              <img
                src="http://127.0.0.1:8000/frontend/website/img/about.jpg"
                alt="Image"
                width="250"
                height="500"
              />
            </div>
          </div>
          <div class="col-lg-6">
            <div class="section-header text-left">
              <p>About Us</p>
              <h2>Car Repairing</h2>
            </div>
            <div class="about-content">
              <p>
                Lorem ipsum dolor sit amet elit. In vitae turpis. Donec in
                hendre dui, vel blandit massa. Ut vestibu suscipi cursus. Cras
                quis porta nulla, ut placerat risus. Aliquam nec magna eget
                velit luctus dictum
              </p>
              <ul>
                <li v-for="service in services" :key="service.id">
                  <i class="far fa-check-circle"></i>{{service.name}}
                </li>
              </ul>
              <a class="btn btn-custom" href="">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- About End -->

    <!-- Service-->
    <div class="service">
      <div class="container">
        <div class="section-header text-center">
          <p>What We Do?</p>
          <h2>Our Services</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 " v-for="service in services" :key="service.id">
            <div class="service-item ">
              <h3>{{service.name}}</h3>
              <h4>Price: {{service.price}}</h4>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- facts -->
    <div
      class="facts"
      data-parallax="scroll"
      data-image-src="http://127.0.0.1:8000/frontend/website/img/facts.jpg"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="facts-item">
              <i class="fa-sharp fa-solid fa-toolbox"></i>
              <div class="facts-text">
                <h3 data-toggle="counter-up" v-text="servicescount"></h3>
                <p>Services Count</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="facts-item">
              <i class="fa-solid fa-check"></i>
              <div class="facts-text">
                <h3 data-toggle="counter-up" v-text="orderscount"></h3>
                <p>Orders Count</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="facts-item">
              <i class="fa fa-users"></i>
              <div class="facts-text">
                <h3 data-toggle="counter-up" v-text="userscount"></h3>
                <p>Clients</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="facts-item">
              <i class="fa-solid fa-wrench"></i>
              <div class="facts-text">
                <h3 data-toggle="counter-up" v-text="micaniccount"></h3>
                <p>Mehanican</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team Start -->
    <div class="team">
      <div class="container">
        <div class="section-header text-center">
          <p>Meet Our Team</p>
          <h2>Our Engineers & Workers</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6" v-for="micanic in micanics" :key="micanic.id">
            <div class="team-item">
                <router-link :to="'/micanics/'+micanic.id">
                    <div class="team-img">
                        <img
                        :src="micanic.personal_img"
                        alt="Team Image"
                        />
                    </div>
                </router-link>
              <div class="team-text">
                <h2>{{micanic.name}}</h2>
                <div class="team-social">
                  <a href=""><i class="fab fa-twitter"></i></a>
                  <a href=""><i class="fab fa-facebook-f"></i></a>
                  <a href=""><i class="fab fa-linkedin-in"></i></a>
                  <a href=""><i class="fab fa-instagram"></i></a>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team End -->
    <!-- Blog Start -->
    <div class="blog">
      <div class="container">
        <div class="section-header text-center">
          <p>Our Blog</p>
          <h2>Latest news & articles</h2>
        </div>
        <div class="row">
          <div class="col-lg-4">
            <div class="blog-item">
              <div class="blog-img">
                <img
                  src="http://127.0.0.1:8000/frontend/website/img/blog-1.jpg"
                  alt="Image"
                />
                <div class="meta-date">
                  <span>01</span>
                  <strong>Jan</strong>
                  <span>2045</span>
                </div>
              </div>
              <div class="blog-text">
                <h3><a href="#">Lorem ipsum dolor sit amet</a></h3>
                <p>
                  Lorem ipsum dolor sit amet elit. Pellent iaculis blandit
                  lorem, quis convall diam eleife. Nam in arcu sit amet massa
                  ferment quis enim. Nunc augue velit metus congue eget semper
                </p>
              </div>
              <div class="blog-meta">
                <p><i class="fa fa-user"></i><a href="">Admin</a></p>
                <p><i class="fa fa-folder"></i><a href="">Web Design</a></p>
                <p><i class="fa fa-comments"></i><a href="">15 Comments</a></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="blog-item">
              <div class="blog-img">
                <img
                  src="http://127.0.0.1:8000/frontend/website/img/blog-2.jpg"
                  alt="Image"
                />
                <div class="meta-date">
                  <span>01</span>
                  <strong>Jan</strong>
                  <span>2045</span>
                </div>
              </div>
              <div class="blog-text">
                <h3><a href="#">Lorem ipsum dolor sit amet</a></h3>
                <p>
                  Lorem ipsum dolor sit amet elit. Pellent iaculis blandit
                  lorem, quis convall diam eleife. Nam in arcu sit amet massa
                  ferment quis enim. Nunc augue velit metus congue eget semper
                </p>
              </div>
              <div class="blog-meta">
                <p><i class="fa fa-user"></i><a href="">Admin</a></p>
                <p><i class="fa fa-folder"></i><a href="">Web Design</a></p>
                <p><i class="fa fa-comments"></i><a href="">15 Comments</a></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="blog-item">
              <div class="blog-img">
                <img
                  src="http://127.0.0.1:8000/frontend/website/img/blog-3.jpg"
                  alt="Image"
                />
                <div class="meta-date">
                  <span>01</span>
                  <strong>Jan</strong>
                  <span>2045</span>
                </div>
              </div>
              <div class="blog-text">
                <h3><a href="#">Lorem ipsum dolor sit amet</a></h3>
                <p>
                  Lorem ipsum dolor sit amet elit. Pellent iaculis blandit
                  lorem, quis convall diam eleife. Nam in arcu sit amet massa
                  ferment quis enim. Nunc augue velit metus congue eget semper
                </p>
              </div>
              <div class="blog-meta">
                <p><i class="fa fa-user"></i><a href="">Admin</a></p>
                <p><i class="fa fa-folder"></i><a href="">Web Design</a></p>
                <p><i class="fa fa-comments"></i><a href="">15 Comments</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Blog End -->
      <!-- Footer Start -->
      <Footer></Footer>
      <!-- Footer End -->

  </div>
</template>

<script>
  import Footer from "./Footer.vue"
export default {
  data() {
    return {
      services: [],
      servicescount:0,
      orderscount:0,
      userscount:0,
      micaniccount:0,
      micanics:[],
      micanicrate:[]
    };
    },components:{
      Footer
    },
    methods:{
        chick(rate){
            return parseInt(rate);
        }
    },
    mounted() {
    axios.get("http://127.0.0.1:8000/api/allServices").then((res) => {
        for(let i=0; i<4; i++)
        {
            this.services.push(res.data.data.results[i])
        }
    });
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
    axios.get("http://127.0.0.1:8000/api/allMicanicRating").then((res) => {
        for(let i=0; i<4; i++)
        {
            this.micanics.push(res.data.data.results[i])
        }

    });

  },
};
</script>

<!-- <style scoped>
.btn{
  background:yellow;
}
</style> -->