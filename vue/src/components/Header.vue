<template>


      <header class="site-navbar site-navbar-target" role="banner">

        <div class="container mb-3">
          <div class="d-flex align-items-center">
            <div class="site-logo mr-auto">
              <router-link to="/">TS<span class="text-primary">.</span>CV</router-link>
            </div>
            <div class="site-quick-contact d-none d-lg-flex ml-auto ">
              <div class="d-flex site-info align-items-center mr-5">
                <span class="block-icon mr-3"><span class="icon-map-marker"></span></span>
                <span><b>Lat Phrao Road, Bangkok City,</b> <br> Thailand</span>
              </div>
              <div class="d-flex site-info align-items-center">
                <span class="block-icon mr-3"><span class="icon-clock-o"></span></span>
                <span>Monday - Friday 8:00AM - 5:00PM <br> Saturday - Sunday CLOSED</span>
              </div>
              
            </div>
          </div>
        </div>


        <div class="container">
          <div class="menu-wrap d-flex align-items-center">
            <span class="d-inline-block d-lg-none"><a href="#" class="text-black site-menu-toggle js-menu-toggle py-5"><span class="icon-menu h3 text-black"></span></a></span>

              

              <nav class="site-navigation text-left mr-auto d-none d-lg-block" role="navigation">
                <ul class="site-menu main-menu js-clone-nav mr-auto ">
                  <li><router-link to="/">HOME</router-link></li>
                  <li><router-link to="/find">FIND</router-link></li>
                  <li><router-link to="/restaurant">RESTAURANT</router-link></li>
                  <li><router-link to="/localstorage">LOCAL-STORAGE</router-link></li>
                  <li><router-link to="/line">LINE</router-link></li>
                  <li><router-link to="/cv">CV</router-link></li>
                </ul>
              </nav>

              <div class="top-social ml-auto">
                <a href="#"><span class="icon-facebook"></span></a>
                <a href="#"><span class="icon-twitter"></span></a>
                <a href="#"><span class="icon-linkedin"></span></a>
              </div>
          </div>
        </div>

       

       

      </header>
      </div> 



</template>

<script>
export default {
  name: "Header",
 
};
</script>