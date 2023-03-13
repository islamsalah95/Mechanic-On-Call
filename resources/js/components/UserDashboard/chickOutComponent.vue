<template>
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-12">
                    <div v-if="isLoading">
                        <BaseSpinner></BaseSpinner>
                    </div>
                   
                    <div class="card" style="text-align: center">
                        <div class="card-body">
                            
                            <form @submit.prevent="pay()" class="contact-form">
                                <div style="text-align: center" class="mb-3 mt-3">
                                  <label for="number" class="form-label">Card Number:</label>
                                  <input
                                    v-model.trim="number"
                                    type="number"
                                    class="form-control"
                                    id="number"
                                    name="number"
                                  />
                                  <div
                                  v-if="vaLnumber"
                                  class="alert alert-danger"
                              >
                              number is required
                              </div>
                                </div>
                               
                                <div></div>
              
                                <div class="date">
                                  <div id="date" style="text-align: center" class="mb-3">
                                    <label for="exp_month" class="form-label"
                                      >Exp Month:</label
                                    >
                                    <input
                                      v-model.trim="exp_month"
                                      type="exp_month"
                                      class="form-control"
                                      id="exp_month"
                                      name="exp_month"
                                    />

                                    <div
                                    v-if="vaLexp_month"
                                    class="alert alert-danger"
                                >
                                exp_month is required
                                </div>
                                  </div>
              
                                  <div id="date" style="text-align: center" class="mb-3">
                                    <label for="exp_year" class="form-label">Exp Year:</label>
                                    <input
                                      v-model.trim="exp_year"
                                      type="exp_year"
                                      class="form-control"
                                      id="exp_year"
                                      name="exp_year"
                                    />

                                    <div
                                    v-if="vaLexp_year"
                                    class="alert alert-danger"
                                >
                                exp_year is required
                                </div>
                                  </div>
                                </div>
              
                                <div id="cvccvc" style="text-align: center" class="mb-3">
                                  <label for="cvc" class="cvc">cvc:</label>
                                  <input
                                    v-model.trim="cvc"
                                    type="number"
                                    class="cvc"
                                    id="cvc"
                                    name="cvc"
                                  />
                                  <div
                                  v-if="vaLcvc"
                                  class="alert alert-danger"
                              >
                              cvc is required
                              </div>
                                </div>
              
                                <div style="text-align: center" class="mb-3">
                                  <input
                                    @click="pay()"
                                    type="button"
                                    class="btn btn-primary"
                                    value="submit"
                                  />
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
import BaseSpinner from '../BaseSpinner.vue'
export default {
  name: "VisaCardComponent",
  components:{
    BaseSpinner
  },
  data() {
    return {
      number: 4242424242424242,
      exp_month: 10,
      exp_year: 2024,
      cvc: 123,
      isLoading:false,

      vaLnumber: false,
      vaLexp_month: false,
      vaLexp_year:false,
      vaLcvc: false,
    };
  },
  methods: {
    async pay() {
      this.isLoading=true
     
      this.vaLnumber=false
      this.vaLexp_month=false
      this.vaLexp_year=false
      this.vaLcvc=false    
       const headers = { Authorization: localStorage.getItem("token") };
      
      if (isNaN(this.number) || this.number =='' || this.number.toString().length !==16){ this.vaLnumber=true}
      else if (isNaN(this.exp_month) || this.exp_month ==''|| this.exp_month.toString().length > 2){ this.vaLexp_month=true}
      else if (isNaN(this.exp_year) || this.exp_year =='' || this.exp_year.toString().length !==4){ this.vaLexp_year=true}
      else if (isNaN(this.cvc) || this.cvc =='' || this.cvc.toString().length !==3){ this.vaLcvc=true}
      else{
        await axios.post(
          `http://127.0.0.1:8000/api/paymentStore`,
          {
            number: this.number,
            exp_month: this.exp_month,
            exp_year: this.exp_year,
            cvc: this.cvc,
          },
          { headers }

        )
        .then((response) => {
           this.number=''
           this.exp_month=''
           this.exp_year=''
           this.cvc=''
          console.log(response.data);
            Notification.success("payment success");
            this.isLoading=false
            this.$router.replace("/OrderComponent");
        })
        .catch((error) => {
          if (error) {
            console.log(error.response.request.status) ;
            Notification.error(error.response.data.message)
            this.isLoading=false
                      }
        });

        this.isLoading=false

      }
      this.isLoading=false



    },
  },
};
</script>
