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
            password: "",
            codeVal: false,
            passwordVal: false,
        };
    },
    mounted() {},
    methods: {
        UpdatePass() {
            this.codeVal = false;
            this.passwordVa = false;
            var mailformatpassword =
                /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/;
            if (this.code == "") {
                this.codeVal = true;
            } else if (
                !this.password.match(mailformatpassword) ||
                this.password == ""
            ) {
                this.passwordVal = true;
            } else {
                axios
                    .post("http://127.0.0.1:8000/api/UpdatePassAlluser", {
                        code: this.code,
                        password: this.password,
                    })
                    .then(async (response) => {
                        Notification.success("update  passowrd success");
                        this.$router.replace("/UserDashboard");
                    })
                    .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });            }

                   this.code=""
                   this.password=""
        },
    },
};
</script>
