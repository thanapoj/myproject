<template>
  <div id="app" class="home">
<div class="site-wrap" >
      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>

      <Header/>

    <div class="ftco-blocks-cover-1">
      <div class="site-section-cover overlay"  style="background-image: url('image/head.jpg');">

      </div>
    </div>





    <div class="site-section bg-white">

<div class="container">

<div class="bgbody">
<div class="textformat">
<br>
           <router-view/>
<br>
</div>
</div>
</div>
</div>
    <Footer/>
</div>
  </div>  
</div>

</template>

<script>
import Header from "@/components/Header";
import Footer from "@/components/Footer";
export default {
  name: "App",
 
  components: {
    Header,
    Footer
  }
};
</script>

<style>
.bgbody{
background-color:white;
max-width:100%;
}
.textformat{
margin-left:6%;
margin-right:6%;
word-wrap:break-word;
}


</style>