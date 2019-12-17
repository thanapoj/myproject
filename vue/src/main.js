import Vue from 'vue'
import App from './App.vue'
import router from './SCGrouter'
import axios from 'axios'

Vue.prototype.$http = axios
Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')


export const loadedGoogleMapsAPI = new Promise( (resolve,reject) => {

      window['GoogleMapsInit'] = resolve;

      let GMap = document.createElement('script');

      GMap.setAttribute('src',
     'https://maps.googleapis.com/maps/api/js?key=AIzaSyDrK9Z86-WUgNH7TXZzmlouw-5fCAXk770&libraries=places');

      document.body.appendChild(GMap); 
});
