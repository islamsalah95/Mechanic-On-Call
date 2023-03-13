<template>
  <div>

        <!-- Page Header Start -->

      <!-- Page Header End -->
      <Banner title="Contact Us"></Banner>
      <!-- Contact Start -->
      <div class="contact">
          <div class="container">
              <div class="section-header text-center">
                  <p>Get In Touch</p>
                  <h2>Contact for any query</h2>
              </div>
              <div class="row">
                  <div class="col-md-4">
                      <div class="contact-info">
                          <h2>Quick Contact Info</h2>
                          <div class="contact-info-item">
                              <div class="contact-info-icon">
                                  <i class="far fa-clock"></i>
                              </div>
                              <div class="contact-info-text">
                                  <h3>Opening Hour</h3>
                                  <p>Mon - Fri, 8:00 - 9:00</p>
                              </div>
                          </div>
                          <div class="contact-info-item">
                              <div class="contact-info-icon">
                                  <i class="fa fa-phone-alt"></i>
                              </div>
                              <div class="contact-info-text">
                                  <h3>Call Us</h3>
                                  <p>+012 345 6789</p>
                              </div>
                          </div>
                          <div class="contact-info-item">
                              <div class="contact-info-icon">
                                  <i class="far fa-envelope"></i>
                              </div>
                              <div class="contact-info-text">
                                  <h3>Email Us</h3>
                                  <p>info@example.com</p>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-7">
                      <div class="contact-form">
                          <div id="success"></div>
                          <form @submit.prevent="contact" name="sentMessage" id="contactForm" novalidate="novalidate">
                              <div class="control-group">
                                  <input type="text" class="form-control"  v-model.trim="name" id="name" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name" />
                                  <p  v-if="Valname" class="help-block text-danger">This Input is required,must be type of string</p>
                              </div>
                              <div class="control-group">
                                  <input type="email" class="form-control" v-model.trim="mobile"  id="mobile" placeholder="Your mobile" required="required" data-validation-required-message="Please enter your mobile" />
                                  <p v-if="Valmobile" class="help-block text-danger">This input is required,must be valid Egyption number</p>
                              </div>
                              <div class="control-group">
                                  <textarea class="form-control" v-model.trim="message" id="message" placeholder="message" required="required" data-validation-required-message="Please enter your message"></textarea>
                                  <p v-if="Valmessage" class="help-block text-danger">This input is required,must be type of string</p>
                              </div>
                              <div>
                                  <button 
                                  class="btn btn-custom" type="submit" id="sendMessageButton">Send Message</button>
                              </div>
                          </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <!-- Contact End -->
      <Footer></Footer>
    </div>

</template>
  
  <script>
  import Footer from "./Footer.vue"
  import Banner from "./Banner.vue"

export default {
    data() {
        return {
          name: null,
          mobile: "",
          message: "",

            Valname: false,
            Valmobile: false,
            Valmessage: false,

        };
    },components:{
      Footer,Banner
    },
    methods: {
        contact() {
            this.Valname = false;
            this.Valmobile = false;
            this.Valmessage = false;
            const _ = require('lodash');        // or underscore
            console.log(_.isString(this.name))
            console.log(isNaN(this.name))

            if (typeof this.name !== 'string' ||this.name == null||!isNaN(this.name)) {
                this.Valname = true;
            }
            else  if (this.mobile === "") {
                this.Valmobile = true;
            }

            else  if (typeof this.message !== 'string' ||this.message == null||!isNaN(this.message)) {
                this.Valmessage = true;
            } else {
              
                axios.post("http://127.0.0.1:8000/api/storeMessage", {
                      name: this.name,
                      mobile: this.mobile,
                      message: this.message,

                    })
                    .then(async (response) => {
                     this.name=''
                     this.mobile=''
                      this.message=''
                      console.log(response);
                        if(response.status==200){
                          Notification.success("yor answer send success");
                        }
                    })
                    .catch(function(error){
                        console.log(error)
                        
                        Notification.error(error.response.data.errors.mobile)
                       

                    });                      
                      this.Valname= false;
                      this.Valmobile= false;
                      this.Valmessage= false;
            }
        },
    },
};
</script>
