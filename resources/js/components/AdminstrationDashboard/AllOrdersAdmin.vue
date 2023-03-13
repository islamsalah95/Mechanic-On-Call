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
                            <th>
                             ID 
                            </th>
                            <th>
                              Order
                            </th>
                            <th>
                              Status
                            </th>
                            <th>
                              created at
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for="result in results" :key="result.id">
                            <td>
                              {{result.id}}
                            </td>
                            <td>
                              {{result.status}}
                            </td>                            
     <td><label :class="[result.status== 'open' ? 'badge badge-warning' : 'badge badge-success']">{{result.status== 'open' ? 'In progress' : 'Completed'}}</label></td>
  
     <td>
      {{result.created_at}}
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
  components:{
  },
  data() {
    return {
      results: [],
  
    };
  },created(){
    const headers = { Authorization: localStorage.getItem("token") };

    axios.get(
          `http://127.0.0.1:8000/api/allOrders`,
          { headers }

        )
        .then((response) => {
          console.log(response.data.data.results);
          this.results=response.data.data.results;
        })
        .catch((error) => {
          console.log(error);
        });
  },
  methods: {
  
  },
  };
  </script>