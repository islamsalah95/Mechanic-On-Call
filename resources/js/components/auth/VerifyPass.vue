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
                <form class="forms-sample" @submit.prevent="UpdatePass">
                    <div class="form-group">
                        <label for="exampleInputcode1"
                            >code</label
                        >
                        <input
                            type="text"
                            class="form-control"
                            id="exampleInputcode1"
                            v-model.number="code"
                        />
                        <div
                            v-if="codeVal"
                            class="alert alert-danger"
                        >
                            code is required
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
export default {
    data() {
        return {
            code: "",
            codeVal: false,
        };
    },
    mounted() {},
    methods: {
        UpdatePass() {
            this.codeVal = false;
            if (this.code == "") {
                this.codeVal = true;
            } else {
                axios
                    .post("http://127.0.0.1:8000/api/VerifyAlluser", {
                        code: this.code,
                    })
                    .then(async (response) => {

                        console.log(response);
                        if(response.status==200){
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
                      
                        await this.$root.$emit("isLogin", true);
 if(response.data.data.user.type == 'user'){ this.$router.replace("/UserDashboard");} 
 else if(response.data.data.user.type == 'micanic'){ this.$router.replace("/MicanicDashboard");}
 else{this.$router.replace("/AdminstrationDashboard");}   

                        }

                    })
                    .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });            }
                    this.code=""
        },
    },
};
</script>
