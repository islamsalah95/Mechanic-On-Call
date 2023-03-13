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
        <div class="card" style="margin-top:170px; text-align: center;">
            <div class="card-body">
                <form class="forms-sample" @submit.prevent="login">
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
                            complecated
                        </div>
                    </div>

                    <button
                        type="submit"
                        class="btn btn-primary mr-2"
                    >
                        Submit
                    </button>
                        <router-link to='/ResetPass' class="btn btn-light">
                            Forger Passowrd
                    </router-link>

                    
                </form>
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
            email: "",
            password: "",
            emailVal: false,
            passwordVal: false,
        };
    },

    methods: {
       async login() {
      var VerifyPass= this.$router.replace("/VerifyPass");
            this.emailVal = false;
            this.passwordVa = false;
            var mailformatemail =
                /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var mailformatpassword =
                /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/;
            if (!this.email.match(mailformatemail) || this.email == "") {
                this.emailVal = true;
            } else if (
                !this.password.match(mailformatpassword) ||
                this.password == ""
            ) {
                this.passwordVal = true;
            } else {
                axios
                    .post("http://127.0.0.1:8000/api/LoginAlluser", {
                        email: this.email,
                        password: this.password,
                    })
                    .then(async (response) => {
                        this.email= ""
                        this.password=""
                        
                        console.log(response.data.data.user);
                        await localStorage.setItem(
                            "token",
                            response.data.data.user.token
                        );
                        localStorage.setItem(
                            "type",
                            response.data.data.user.type
                        );

                        localStorage.setItem(
                            "name",
                            response.data.data.user.name
                        );

                        localStorage.setItem(
                            "id",
                            response.data.data.user.id
                        );
                        // this.$store.dispatch("user", response.data.data.user);
                      
                               if(response.data.data.user.email_verified_at==null){
                               return this.$router.replace("/VerifyPass");

                               }


                        await this.$root.$emit("isLogin", true);
                        // Notification.success("login success");

 if(response.data.data.user.type == 'user'){ this.$router.replace("/UserDashboard");} 
 else if(response.data.data.user.type == 'micanic'){ this.$router.replace("/MicanicDashboard");}
 else{this.$router.replace("/AdminstrationDashboard");}    

                    })
                    .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                        console.log(error.response.data.data.user.email_verified_at)

                        if(error.response.data.data.user.email_verified_at===null){
                               return VerifyPass;

                               }
                    });
            }

        },
    },
};
</script>
