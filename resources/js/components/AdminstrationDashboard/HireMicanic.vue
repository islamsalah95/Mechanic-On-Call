<template>
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Close Orders</h4>

                            <div class="table-responsive pt-3">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Image</th>

                                            <th>ID</th>

                                            <th>Name</th>

                                            <th>Email</th>
                                            
                                            <th>Rate</th>

                                            <th>ststus</th>

                                            <th>action</th>

                                        </tr>
                                    </thead>
                                    <tbody>




                                        <tr
                                            v-for="result in results"
                                            :key="result.id"
                                        >
                                        <td>
                                            <router-link :to="'/micanics/'+result.id">
                                                <div class="team-img">
                                                    <img
                                                    :src="result.personal_img"
                                                    alt="Team Image"
                                                    />
                                                </div>
                                            </router-link>                               
                                         </td>


                                            <td>
                                                {{ result.id }}
                                            </td>

                                            <td>
                                                {{ result.name }}
                                            </td>

                                            <td>{{ result.email }}</td>

                                            <td>

                                                <button :class="[ result.rate <= 2 ? 'btn btn-danger btn-rounded btn-fw' : 'btn btn-info btn-rounded btn-fw']" type="button">{{ result.rate }}</button>

                                            </td>


                                            <td :class="[result.status_working== 'accept' ? 'accept' : 'block']">{{ result.status_working }}</td>
                                              
                                <td style="display: flex; justify-content: space-between;">
                                              <form @submit.prevent="switchStatus()" class="contact-form">

                                <div class="form-check">
                                  <input type="radio" class="form-check-input" id="radio1" v-model.trim="status_working" name="optradio" value="accept" checked>accept
                                  <label class="form-check-label" for="radio1"></label>
                                </div>
                                

                                
                                <div class="form-check">
                                  <input type="radio" class="form-check-input" id="radio3" v-model.trim="status_working" name="optradio" value="block" checked>block
                                  <label class="form-check-label" for="radio1"></label>
                                </div>

                                 <div class="form-check">
                                  <input
                                  @click="switchStatus(result.id)"
                                  type="button"
                                  class="btn btn-primary"
                                  value="submit"
                                />
                                </div>
                              </form>
                                 </td>

                                            </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "OrderComponent",
    components: {},
    data() {
        return {
            results: [],
            status_working:''

        };
    },
    created() {
        axios
            .get(`http://127.0.0.1:8000/api/allMicanicsRating`, {
                Authorization: localStorage.getItem("token"),
                Accept: "application/json",
            })
            .then((response) => {
                console.log(response.data.data.results);
                this.results = response.data.data.results;
            })
            .catch((error) => {
                console.log(error);
            });
    },
    methods: {
switchStatus(micanicId){
if(this.status_working == 'accept'  || this.status_working == 'block'  ){
    const headers = { Authorization: localStorage.getItem("token") };
  axios.post(
    `http://127.0.0.1:8000/api/changeMicanicStatus/${micanicId}`,
    {
      status_working:this.status_working,
    },
    { headers }

  )
  .then((response) => {
    console.log(response.data.data.results);

var m = this.results.filter(val => val.id == micanicId);
m[0].status_working=this.status_working;
console.log(m);
var edit=[];
for (let index = 0; index < this.results.length; index++) {
          if(this.results[index].id==micanicId){
            continue;
            edit.push(m) ;
          }
   edit.push(this.results[index])}
    Notification.success("status working change success");    
  })
  .catch((error) => {
    console.log(error);
  });






}else{
  Notification.error("input is require success");

}





}
    },
};
</script>
<style scoped>
.accept{
  color: green;
  font-size: larger;
  font-weight: bold;}

  .block{
    color: black;
    font-size: larger;
    font-weight: bold;}



    .bad{
        color: red;
        font-size: larger;
        font-weight: bold;}
      
        .good{
          color: blue;
          font-size: larger;
          font-weight: bold;}
</style>