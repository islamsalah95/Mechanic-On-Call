<template>
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-12">
                    <div class="card" style="text-align: center">
                        <div class="card-body">
                            <form class="forms-sample" @submit.prevent="serch">
                                <h1>Show Micanic</h1>
                                <select
                                    v-model="select"
                                    class="form-control form-control-sm"
                                    id="exampleFormControlSelect3"
                                >
                                    <option value="">select City</option>
                                    <option
                                        v-for="item in items"
                                        :key="item.id"
                                        :value="item.id"
                                    >
                                        {{ item.city }}
                                    </option>
                                </select>

                                <button
                                    type="submit"
                                    class="btn btn-primary mr-2"
                                    @click="serch"
                                >
                                    Submit
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Micanics</h4>

        <div class="table-responsive">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>
                  User
                </th>
                <th>
                  First name
                </th>
                <th>
                  Progress
                </th>
                <th>
                  Rate
                </th>
                <th>
                  Order
                </th>
              </tr>
            </thead>
            <tbody>
             
             
              <tr
              v-for="micanic in micanics"
              :key="micanic.id"
              :value="micanic.id"

              
              >
                <td class="py-1">
                  <img src="http://127.0.0.1:8000/frontend/images/faces/face1.jpg" alt="image">
                </td>
                <td>
                  {{micanic.name}}
                </td>
                <td>
                  <div class="progress">
                    <div :class="[micanic.rate <= 2 ? 'progress-bar bg-danger' : 'progress-bar bg-success']" role="progressbar"  :style="{ 'width': (micanic.rate/5)*100 + '%'}" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </td>
                <td>
                  {{micanic.rate}}
                </td>
                <td>

                 <router-link v-if="micanic.status=='Avilable'"  class="btn btn-primary" :to="'/SecondChild/' + micanic.id">Order</router-link>
                  <div style="color: red;" v-if="micanic.status=='Busy'">Busy</div>
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
    data() {
        return {
            select: "",
            items: [],
            micanics:[],
            results:[]
        };
    },
    created() {
        axios
            .get("http://127.0.0.1:8000/api/allCities")
            .then((response) => {
                console.log(response.data.data.results);
                this.items = response.data.data.results;
            })
            .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });

            this.$store.state.ress=this.results;

    },computed: {
  myValue() { return this.$store.state.ress }
}, methods: {
        serch() {
            const id = Number(this.select);
            axios
                .get(`http://127.0.0.1:8000/api/allMicanicsRatingByCity/${id}`)
                .then((response) => {
                    console.log(response.data.data.results);
                    this.micanics = response.data.data.results;

                })
                .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });
            console.log(this.select);
        },
    },
};
</script>
