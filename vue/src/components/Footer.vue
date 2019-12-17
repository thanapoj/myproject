<template>
  <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2 class="footer-heading mb-3">About Us</h2>
                <p class="mb-5">About Us</p>       
          </div>
          <div class="col-lg-8 ml-auto">
            <div class="row">
              <div class="col-lg-4 ml-auto">
                <h2 class="footer-heading mb-4">Navigation</h2>
                <ul class="list-unstyled">
                  <li><router-link to="/">Home</router-link></li>
                  <li><router-link to="/find">Find</router-link></li>
                  <li><router-link to="/restaurant">Restaurant</router-link></li>
                  <li><router-link to="/localstorage">Local Storage</router-link></li>
                  <li><router-link to="/line">Line</router-link></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Navigation</h2>
                <ul class="list-unstyled">
                  <li><router-link to="/cv">CV</router-link></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Terms of Service</a></li>
                  <li><a href="#">Privacy</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
                
              </div>

              
              
            </div>
          </div>

        </div>

      </div>
            <center>Copyright &copy; All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a></center>

    </footer>

</template>

<script>
export default {
  name: "Footer"
};
</script>

