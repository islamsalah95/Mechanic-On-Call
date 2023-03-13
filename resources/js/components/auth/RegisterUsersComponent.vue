<template>
<div class="container">
<div class="row" 
style="
display: flex;
flex-wrap: wrap;
margin-right: -15px;
margin-left: -15px;
align-items: center;
justify-content: center;
"
>
    <div class="col-8">
        <div v-if="isLoading">
            <BaseSpinner></BaseSpinner>
        </div>
       
        <div class="card" style="margin-top:170px; text-align: center;">
          
          
            <div class="card-body">
                <form class="forms-sample" @submit.prevent="register">
                   
                    <div class="form-group">
                        <label for="exampleInputEmail1"
                            >Name</label
                        >
                        <input
                            type="text"
                            class="form-control"
                            id="exampleInputEmail1"
                            v-model.trim="name"
                        />
                        <div
                            v-if="nameVal"
                            class="alert alert-danger"
                        >
                        name is required
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1"
                            >Email address</label
                        >
                        <input
                            type="email"
                            class="form-control"
                            id="exampleInputEmail1"
                            v-model.trim="email"
                        />
                        <div
                            v-if="emailVal"
                            class="alert alert-danger"
                        >
                            email is required
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1"
                            >Password</label
                        >
                        <input
                            type="password"
                            class="form-control"
                            id="exampleInputPassword1"
                            v-model.trim="password"
                        />
                        <div
                            v-if="passwordVal"
                            class="alert alert-danger"
                        >
                            passwordVald is required , must be
                            complecated match password confirmation
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="exampleInputPassword1"
                            >password confirmation</label
                        >
                        <input
                            type="password"
                            class="form-control"
                            id="exampleInputPassword1"
                            v-model.trim="password_confirmation"
                        />
                        <div
                            v-if="password_confirmationVal"
                            class="alert alert-danger"
                        >
                        password confirmation is required , and match must be complecated
                        </div>
                    </div>


                    <button
                        type="submit"
                        class="btn btn-primary mr-2"
                    >
                        Submit
                    </button>


                    
                </form>
            </div>
        </div>
    </div>
</div>
</div>

</template>

<script>
import BaseSpinner from '../BaseSpinner.vue'

export default {
    components:{
    BaseSpinner
  },
    data() {
        return {
            name: "",
            email: "",
            password: "",
            password_confirmation: "",
            password_confirmation: "",
            isLoading:false,

            nameVal: false,
            emailVal: false,
            passwordVal: false,
            password_confirmationVal: false,

            
        };
    },
    mounted() {},
    methods: {
      async  register() {
        this.isLoading=true
         
            this.nameVal = false;
            this.emailVal = false;
            this.passwordVa = false;
            this.password_confirmationVal = false;

            var mailformatemail =
                /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var mailformatpassword =
                /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/;
          
                 if (typeof this.name !== 'string' ||this.name == null||!isNaN(this.name)) {
                this.nameVal = true;
            }
            else if (!this.email.match(mailformatemail) || this.email == "") {
                this.emailVal = true;
            } else if (
                !this.password.match(mailformatpassword) ||
                this.password == ""
            ) {
                this.passwordVal = true;
            } 
            else if (
               this.password_confirmation == "" || this.password_confirmation !==this.password
            ) {
                this.password_confirmationVal = true;
            }
            else {
                this.isLoading=true
                await  axios
                    .post("http://127.0.0.1:8000/api/register", {
                        name: this.name,
                        email: this.email,
                        password: this.password,
                        password_confirmation:this.password_confirmation,

                    })
                    .then(async (res) => {
                        console.log(res);
                        if(res.status==200){
                       res.data.files;
                        res.status; // HTTP status
                        console.log(res.data.data);
                        Notification.success();
                        this.name=""
                        this.email=""
                        this.password=""
                       this.password_confirmation=""
                        this.$router.replace("/VerifyPass")
                        }
                    })
                    .catch(function(error){
                        console.log(error)
                       if(error.response.data.errors.email){
                        Notification.error(error.response.data.errors.message)
                        Notification.error(error.response.data.errors.email)

                       }

                    });
                    this.isLoading=false
            }

            this.isLoading=false

        },
    },
};
</script>
