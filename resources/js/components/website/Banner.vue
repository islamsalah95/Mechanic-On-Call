<template>
        <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>{{title}}</h2>
                    </div>
                    <div class="col-12">
                    

                       <!-- <router-link to="/Home">
                            Home
                          </router-link>


                        <a href="">{{title}}</a> -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
  </template>
  
  <script>
  export default {
    props: ['title']
  }
</script>