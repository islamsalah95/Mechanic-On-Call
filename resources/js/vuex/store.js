import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
	state: {
	  user: '',
      id:null  ,
	  name:null,
      token:null  ,
	  res:[]

	},
	getters: {
		user: (state)=>{
			return state.user;
		},
		id: (state)=>{
			return state.id;
		},
		name: (state)=>{
			return state.name;
		},
		token: (state)=>{
			return state.token;
		},
		isLogin: (state)=>{
			if (state.token) {
				return true ;
			} else {
				return false ;
			}
		},
		res: (state)=>{
			return state.res;
		},
	},
	mutations: {

		user: (state,user)=>{
			 state.id=user.id;
			 state.name=user.name;
			 state.token=user.token;
		},
		res: (state,res)=>{
			state.res=res;

	   }


	},
	actions: {
		user: (context,user)=>{
			context.commit("user",user)
		},
		res: (context,res)=>{
			context.commit("res",res)
		}


	}
})
