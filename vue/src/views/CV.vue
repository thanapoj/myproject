<template>
  <div id="line">
<br>
<form v-on:submit.prevent="submit">
  Password: <input type="password" name="password" v-model="password"><br><br>
  <button>Submit for show CV</button>
</form>
<br>
<div v-html="showcv">โปรดกรอกรหัสผ่านด้านบนเพื่อแสดงผล CV</div>


</div>
</template>

<script>
export default{
name: 'CV',
props: ['password'],
data: function ()  {
  return {
  showcv:''
}
},
methods:{
submit:function(){
//alert(this.password);
if(this.password=='mycv279prd')
this.showcv='<img src="/image/cv/rtcvhgdtg0001.jpg" class="responsive"><img src="/image/cv/rtcvhgdtg0002.jpg" class="responsive"><br><img src="/image/cv/rtcvhgdtg0003.jpg" class="responsive"><br><img src="/image/cv/rtcvhgdtg0004.jpg" class="responsive"><br><img src="/image/cv/rtcvhgdtg0005.jpg" class="responsive"><br>';
else{
alert("ท่านใส่รหัสผ่านผิดโปรดใส่ใหม่อีกครั้งครับ");
this.showcv='';
}

}
}

}

</script>

<style>
.responsive {
  width: 100%;
  height: auto;
}
</style>
