<template>
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-12">

                    <div class="card" style="text-align: center">
                        <div class="card-body">
                            
                            <form @submit.prevent="addCity()" class="contact-form">
                                <div style="text-align: center" class="mb-3 mt-3">
                                  <label for="city" class="form-label">Add City</label>
                                  <input
                                    v-model.number="city"
                                    type="text"
                                    id="city"
                                    class="form-control"
                                  />
                                </div>
            
              
                                <div style="text-align: center" class="mb-3">
                                  <input
                                    @click="addCity()"
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


<br>

            <div class="row">
              <div class="col-12">

                  <div class="card" style="text-align: center">
                      <div class="card-body">
                          
                          <form @submit.prevent="addService()" class="contact-form">
                              
                            
                            <div style="text-align: center" class="mb-3 mt-3">
                                <label for="name" class="form-label">Name</label>
                                <input
                                  v-model.trim="name"
                                  type="text"
                                  id="name"
                                  class="form-control"
                                />
                              </div>
          
            
                              <div style="text-align: center" class="mb-3 mt-3">
                                <label for="price" class="form-label">Pric</label>
                                <input
                                  v-model.number="price"
                                  type="number"
                                  id="price"
                                  class="form-control"
                                />
                              </div>


                              <div style="text-align: center" class="mb-3">
                                <input
                                  @click="addService()"
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
export default {
  name: "VisaCardComponent",
  components:{
  },
  data() {
    return {
      city: '',
      name: '',
      price: '',
    };
  },
  methods: {
    async addCity() {
      console.log(typeof(this.city));

      if(typeof this.city !== 'string' ||this.city == null||!isNaN(this.city)){
        Notification.error("input city is require,must be a string");

      }else{
        const headers = { Authorization: localStorage.getItem("token") };

        await axios.post(
          `http://127.0.0.1:8000/api/addCity`,
          {
            city:this.city,
          },
          { headers }

        )
        .then((response) => {
          this.city=''
          console.log(response.data.data.results);
          Notification.success("addCityment success");
        })
        .catch((error) => {
          console.log(error);
          Notification.error(error.response.data.errors.city)

        });
      }

    },
    async addService() {
      console.log(typeof(this.city));

      if(typeof this.name !== 'string' ||this.name == null||!isNaN(this.name)){
        Notification.error("input name is require,must be a string");

      }     else if(this.price == '' || isNaN(this.price)){
        Notification.error("input price is require,must be a number");

      }
      
      else{
        const headers = { Authorization: localStorage.getItem("token") };
        await axios.post(
          `http://127.0.0.1:8000/api/addService`,
          {
            name:this.name,
             price:this.price,
          },
          { headers }
        )
        .then((response) => {
            this.name=''
            this.price=''
          console.log(response.data.data.results);
          Notification.success("add service success");
        })
        .catch((error) => {
          console.log(error);
          Notification.error(error.response.data.errors.name)
                });
      }
    },
  },
};
</script>
