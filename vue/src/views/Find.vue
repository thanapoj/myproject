<template>
  <div id="find">
<div v-html="bText"></div>
<img src="image/zend.jpg" class="responsive">

</div>
</template>

<script>
import axios from 'axios'
export default{
name: 'find',
data: function ()  {
  return {
     bText:'',
  }
},
    methods: {    

        showMyDiv() {
        var vm = this;
        axios.get('http://108dog.com:8080/find')
        .then(function (response) {
            //handle success
            console.log(response)
            var showtext = response.data.showtext;
            vm.bText = showtext;
localStorage.setItem('localfind', showtext);

        })
        .catch(function (response) {
            //handle error
            console.log(response)

        });
}
            
    },

 beforeMount(){
    this.showMyDiv()
 }
 

    

}
</script>

<style>
.responsive {
  width: 100%;
  height: auto;
}
</style>