
  <!-- info section -->
  <section class="info_section layout_padding2">
    <div class="container">
      <div class="info_logo">
        <h2>
          veer associates
        </h2>
      </div>
      <div class="row">

        <div class="col-md-3">
          <div class="info_contact">
            <h5>
              About Shop
            </h5>
            <div>
              <div class="img-box">
                <img src="images/location-white.png" width="18px" alt="">
              </div>
              <p>
                123 Parkland Crescent, Sault Ste Marie, Ontario, P6A 4M6
              </p>
            </div>
            <div>
              <div class="img-box">
                <img src="images/telephone-white.png" width="12px" alt="">
              </div>
              <p>
                +1 2493263822
              </p>
            </div>
            <div>
              <div class="img-box">
                <img src="images/envelope-white.png" width="18px" alt="">
              </div>
              <p>
                veerassociates@gmail.com
              </p>
            </div>
          </div>
        </div>
        
        <div class="col-md-3">
          <div class="info_pro">
            <h5>
              Products
            </h5>
            <h6>
                       <a class="t-name " href="chair1.jsp" style="color: white;"> Chairs</a>
                    </h6>
            <h6>
                       <a class="t-name mt-2" href="table1.jsp" style="text-transform: capitalize; text-align: center; color: white;"> Tables</a>
                    </h6>
            <h6>
                       <a class="t-name mt-2" href="sofa.jsp" style="color: white; text-transform: capitalize; text-align: center; "> Sofas</a>
                    </h6>
           <h6>
                       <a class="t-name mt-2" href="Storage.jsp" style="text-transform: capitalize; text-align: center; color: white;"> Storage</a>
                    </h6>
            <h6>
                       <a class="t-name" href="chair1.jsp" style="text-transform: capitalize; text-align: center; color: white;"> Beds</a>
                    </h6>
           
          </div>
        </div>
        
        <div class="col-md-3">
          <div class="info_info">
            <h5>
              Informations
            </h5>
            <p>
              At Veer Associates, we take great pride in design and  hand-craftsmanship of our products. 
              Our in-house designers create time honed designs. </p>
          </div>
        </div>
        
        

      </div>
    </div>
  </section>

  <!-- footer section -->
  <section class="container-fluid footer_section ">
    <div class="container">
      <p>
        &copy; 2024 Veer Associates
        <a href="https://html.design/"></a>
      </p>
    </div>
  </section>
  <!-- end  footer section -->


  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js">
  </script>
  <script type="text/javascript">
    $(".owl-carousel").owlCarousel({
      loop: true,
      margin: 10,
      nav: true,
      navText: [],
      autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 1
        },
        420: {
          items: 2
        },
        1000: {
          items: 5
        }
      }

    });
  </script>
  <script>
    var nav = $("#navbarSupportedContent");
    var btn = $(".custom_menu-btn");
    btn.click
    btn.click(function (e) {

      e.preventDefault();
      nav.toggleClass("lg_nav-toggle");
      document.querySelector(".custom_menu-btn").classList.toggle("menu_btn-style")
    });
  </script>
  <script>
    $('.carousel').on('slid.bs.carousel', function () {
      $(".indicator-2 li").removeClass("active");
      indicators = $(".carousel-indicators li.active").data("slide-to");
      a = $(".indicator-2").find("[data-slide-to='" + indicators + "']").addClass("active");
      console.log(indicators);

    })
  </script>

</body>
</body>

</html>