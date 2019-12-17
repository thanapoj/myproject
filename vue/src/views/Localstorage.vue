<template>
  <div id="localstorage">
<button v-on:click="deletelocal">ลบค่า Local Storage</button><br><br>
แสดงค่าของ Local Storage ของหน้า Find, Restaurant<br><br>
<div v-html="localfind">ยังไม่มีการเก็บค่าของหน้า Find โปรดไปยังหน้า Find เพื่อเก็บ Local Storage</div>
<br>
<div v-html="localrestaurant">ยังไม่มีการเก็บค่าของหน้า Restaurant โปรดไปยังหน้า Restaurant เพื่อเก็บ Local Storage</div>

</div>
</template>

<script>
export default{
name: 'localstorage',
data: function ()  {
  return {
  localfind:'',
  localrestaurant:''
}
},

methods:{
loadpage:function(){
if(localStorage.getItem('localfind')!=null)
this.localfind=localStorage.getItem('localfind');
else
this.localfind='ยังไม่มีการเก็บค่าของหน้า Find โปรดไปยังหน้า Find เพื่อเก็บ Local Storage';
if(localStorage.getItem('localrestaurant')!=null)
this.localrestaurant=localStorage.getItem('localrestaurant');
else
this.localrestaurant='ยังไม่มีการเก็บค่าของหน้า Restaurant โปรดไปยังหน้า Restaurant เพื่อเก็บ Local Storage';
},

deletelocal:function(){
this.localfind='ยังไม่มีการเก็บค่าของหน้า Find โปรดไปยังหน้า Find เพื่อเก็บ Local Storage';
this.localrestaurant='ยังไม่มีการเก็บค่าของหน้า Restaurant โปรดไปยังหน้า Restaurant เพื่อเก็บ Local Storage';
alert('ดำเนินการลบค่า Local Storage เรียบร้อย');

localStorage.removeItem('localfind');
localStorage.removeItem('localrestaurant');
}
},

beforeMount(){
        this.loadpage();

    }


            


 

    

}
</script>
