<template>
<div class="container">
<div class="row" 
style="
display: flex;
flex-wrap: wrap;
margin-right: -15px;
margin-left: -15px;
align-items: center;
justify-content: center;"
>
    <div class="col-8">
        <div class="card" style="margin-top:170px; text-align: center;">
            <div class="card-body">
                <form class="forms-sample" @submit.prevent="reset">
                    <div class="form-group">
                        <label for="exampleInputEmail1"
                            >Reset Pass</label
                        >
                        <input
                            type="code"
                            class="form-control"
                            id="exampleInputEmail1"
                            v-model.trim="email"
                            placeholder="email"
                        />
                        <div
                            v-if="emailVal"
                            class="alert alert-danger"
                        >
                        Email is required
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
            email: "",
            emailVal: false,
        };
    },
    mounted() {},
    methods: {
        reset() {
            this.emailVal = false;
            if (this.email == "") {
                this.emailVal = true;
            } else {
                axios.post("http://127.0.0.1:8000/api/ResetPassAlluser",{
                    email: this.email,
                    })
                    .then(async (response) => {
                        console.log(response.data.data.user);


                        Notification.success("send mail success");

                        this.$router.replace("/UpdatePass");
                    })
                    .catch(function(error){
                        console.log(error)
                        Notification.error(error.response.data.message)
                    });           
                 }
            this.email=""

        },
    },
};
</script>
