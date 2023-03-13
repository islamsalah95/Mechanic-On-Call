<template>
        <div class="container" style="margin-top: 94px;">
            <div class="row">
                <div class="col-12">                   
                    <div class="card" style="text-align: center">
                        <div class="card-body">
                            
                            <form @submit.prevent="Rateme()" class="contact-form">


                              <div class="form-group">
                                <label for="exampleTextarea1">rate</label>
                                <select 
                                v-model.number="rate"
                                class="form-control form-control-sm"
                                id="exampleFormControlSelect3" >
                                <option value="" selected disabled>chose rate</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                              </div>
              

            

                              <div class="form-group">
                                <label for="exampleTextarea1">comment</label>
                                <textarea 
                                v-model.trim="comment"
                                class="form-control" id="exampleTextarea1" rows="4"></textarea>
                              </div>
            



                              <button 
                              @click="Rateme()" 
                              type="submit" class="btn btn-primary mr-2">Submit</button>

                              </form>
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
      rate: this.rate,
      comment: this.comment,
    };
  },
  methods: {
    async Rateme() {
      const headers = { Authorization: localStorage.getItem("token") };

console.log(typeof(this.rate));
console.log(typeof(this.comment));
if(typeof this.comment !== 'string' ||this.comment == null||!isNaN(this.comment) ){
  Notification.error("inputs comment is required ");
}
else if(this.rate == ''||isNaN(this.rate)){
  Notification.error("inputs rate is required");
}else{
  await axios.post(
          `http://127.0.0.1:8000/api/ratingStore`,
          {
            rate: this.rate,
            comment: this.comment,
          },
          { headers }

        )
        .then((response) => {
             this.rate=''
            this.comment=''
          console.log(response.data.data.rate);
      return this.$router.push("/UserDashboard");
        })
        .catch((error) => {
          if (error) {
            console.log(error.response.request.status) ;
            Notification.error(error.response.data.message)
                      }
        });
        Notification.success("rate success");

}
    },
  },
};
</script>



