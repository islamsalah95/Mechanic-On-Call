<template>
<div class="container">
<div class="row" 
style="display: flex;
flex-wrap: wrap;
margin-right: -15px;
margin-left: -15px;
align-items: center;
justify-content: center;">
    <div class="col-8">
        <div v-if="isLoading">
            <BaseSpinner></BaseSpinner>
        </div>
      
        <div class="card" style="margin-top:170px; text-align: center;">
            <div class="card-body">
                <form class="forms-sample" @submit.prevent="register" multiple="true">

                            
                                
                    <div class="form-group">
                        <label for="exampleInputName"
                            >Name</label
                        >
                        <input
                            type="text"
                            class="form-control"
                            id="exampleInputName"
                            v-model.trim="name"
                        />
                        <div
                            v-if="nameVal"
                            class="alert alert-danger"
                        >
                        Name is required
                        </div>
                    </div>

                    
                    
                    <div class="form-group">
                        <label for="exampleInputEmail"
                            >Email address</label
                        >
                        <input
                            type="email"
                            class="form-control"
                            id="exampleInputEmail"
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

                    <div class="form-group">
                        <label for="exampleInputPassword2"
                            >Password Confirmation</label
                        >
                        <input
                            type="password"
                            class="form-control"
                            id="exampleInputPassword2"
                            v-model.trim="password_confirmation"
                        />
                        <div
                            v-if="password_confirmationVal"
                            class="alert alert-danger"
                        >
                        Password Confirmation is required , must be
                            match
                        </div>
                    </div>


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

                <div
                v-if="city_idVal"
                class="alert alert-danger"
            >
            city is required
            </div>

                    <label>National Id Img</label>
                        <div class="form-group">
                        <input
                        class="file-upload-browse btn btn-primary"
                            type="file"
                            id="nid_img"
                            @change="uploadFile1"
                            ref="nid_img"

                        />
                      </div>
                     
                      <div
                      v-if="nid_imgVal"
                      class="alert alert-danger"
                  >
                  National Id Img required
                  </div>



                      <label>certefication IMG</label>
                      <div class="form-group">
                      <input
                      class="file-upload-browse btn btn-primary"
                          type="file"
                          id="cert_img"
                          @change="uploadFile1"
                          ref="cert_img"
                      />
                    </div> 

                    <div
                    v-if="cert_imgVal"
                    class="alert alert-danger"
                >
                cert  Img required
                </div>

                



                            <label>personal IMG</label>
                            <div class="form-group">
                            <input
                            class="file-upload-browse btn btn-primary"
                                type="file"
                                id="personal_img"
                                @change="uploadFile1"
                                ref="personal_img"
                            />
                        </div> 

                        <div
                        v-if="personal_imgVal"
                        class="alert alert-danger"
                    >
                    cert  personal img required
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
            name:"",
            email: "",
            password: "",
            password_confirmation:"",
            nid_img:"",
            cert_img:"",
            personal_img:"",
            city_id:"",
            select: "",
            items: [],
            nameVal: false,
            emailVal: false,
            passwordVal: false,
            password_confirmationVal: false,
            nid_imgVal: false,
            cert_imgVal: false,
            personal_imgVal: false,
            city_idVal: false,
            isLoading:false,

        };
    },
    mounted() {
        axios.get("http://127.0.0.1:8000/api/allCities").then((response) => {
                   this.items=response.data.data.results;
                }).catch((error) => console.log(error)); 
},
    methods: {
        uploadFile1() {
            this.nid_img = this.$refs.nid_img.files[0];
            this.cert_img = this.$refs.cert_img.files[0];
            this.personal_img = this.$refs.personal_img.files[0];
        },
      async  register() {
        // this.isLoading=true
            this.nameVal = false;
            this.emailVal = false;
            this.passwordVa = false;
            this.password_confirmationVal = false;
            this.nid_imgVal=false
            this.cert_imgVal= false
            this.cert_imgVal= false
            this.personal_imgVal=false
           
    var inputElement = document.getElementById('nid_img');
    var files = inputElement.files;// const  file = this.files[0];


    var inputElementPersonal_img = document.getElementById('personal_img');
    var filesPersonal_img = inputElementPersonal_img.files;// const  file = this.files[0];
// const  fileType = file['type'];
// const  validImageTypes = ['image/gif', 'image/jpeg', 'image/png'];

            var mailformatemail =
                /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var mailformatpassword =
                /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$/;
               
                if (typeof this.name !== 'string' ||this.name == null||!isNaN(this.name)) {
                this.nameVal = true;
            } else if (!this.email.match(mailformatemail) || this.email == "") {
                this.emailVal = true;
            } else if (
                !this.password.match(mailformatpassword) ||
                this.password == ""
            ) {
                this.passwordVal = true;
            }
            
            else if (this.password_confirmation !== this.password || this.password_confirmation == ''  ) {
                this.password_confirmationVal = true;
            }


// //////////////////
else if (files.length==0) {
    if(files.length==0){
       this.nid_imgVal = true;

        return false;
    }else{
 
        /* iterating over the files array */
        for(var i=0;i<files.length;i++){
            var filename = files[i].name;
 
            /* getting file extenstion eg- .jpg,.png, etc */
            var extension = filename.substr(filename.lastIndexOf("."));
 
            /* define allowed file types */
            var allowedExtensionsRegx = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
 
            /* testing extension with regular expression */
            var isAllowed = allowedExtensionsRegx.test(extension);
 
            if(isAllowed){
                alert("File type is valid for the upload");
                /* file upload logic goes here... */
            }else{
                alert("Invalid File Type.");
            }
        }       
    }
            }



    else if (filesPersonal_img.length==0) {
    if(filesPersonal_img.length==0){
       this.personal_imgVal = true;

        return false;
    }else{
 
        /* iterating over the files array */
        for(var i=0;i<filesPersonal_img.length;i++){
            var filename = filesPersonal_img[i].name;
 
            /* getting file extenstion eg- .jpg,.png, etc */
            var extension = filename.substr(filename.lastIndexOf("."));
 
            /* define allowed file types */
            var allowedExtensionsRegx = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
 
            /* testing extension with regular expression */
            var isAllowed = allowedExtensionsRegx.test(extension);
 
            if(isAllowed){
                alert("File type is valid for the upload");
                /* file upload logic goes here... */
            }else{
                alert("Invalid File Type.");
            }
        }       
    }
            }

///////////////////////////
 else {                 
               this.isLoading=true


                 const formData = new FormData();
                formData.append("name", this.name);
                formData.append("email", this.email);
                formData.append("password", this.password);
                formData.append("password_confirmation", this.password_confirmation);
                formData.append("nid_img", this.nid_img);
                formData.append("cert_img", this.cert_img);
                formData.append("personal_img", this.personal_img);
                formData.append("city_id", this.select);
                console.log(formData);


                await  axios.post(
                        "http://127.0.0.1:8000/api/registerMicanic",
                        formData
                    )
                    .then((res) => {
                        console.log(res);
                        this.emailVal = false;

                 if(res.status==200){
                       res.data.files;
                        res.status; // HTTP status
                        console.log(res.data.data);
                        Notification.success();
                        this.name='';
                        this.email='';
                        this.password='';
                        this.password_confirmation='';
                        this.nid_img='';
                        this.cert_img='';
                        this.personal_img='';
                        this.city_id='';
                        this.select='';
                        this.items='';
                        this.$router.replace("/VerifyPass")
                        }

                    }).catch(function(error){
                        console.log(error)
                        Notification.error("The city id field is required.")
                        Notification.error(error.response.data.errors.email)
                    });

                    this.isLoading=false

            }

            this.isLoading=false

        },




    },
};
</script>
