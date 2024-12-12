<%@include file="otherHeader.jsp"%>

<section class="trending_section layout_padding">
    <div id="accordion">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="detail-box">
              <div class="heading_container">
                <h2>
                  Sub Categories
                </h2>
              </div>
              
                      <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                            <a href="./furniture.jsp">Trending Furniture></a>
                             
                            <span>Chairs</span>
                            
                        </div>
              <div class="tab_container">
                <div class="t-link-box" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
                  aria-controls="collapseOne">
                  <div class="number">
                    <h5>
                      01
                    </h5>
                  </div>
                  <hr>
                  <div class="t-name">
                    <h5>
                       <a class="t-name" href="chair_fancy.jsp"> Fancy Chair</a>
                    </h5>
                  </div>
                </div>
                <div class="t-link-box collapsed" data-toggle="collapse" data-target="#collapseTwo"
                  aria-expanded="false" aria-controls="collapseTwo">
                  <div class="number">
                    <h5>
                      02
                    </h5>
                  </div>
                  <hr>
                  <div class="t-name">
                    <h5>
                       <a class="t-name" href="chair_desk.jsp">Desk Chair</a>
                    </h5>
                  </div>
                </div>
                <div class="t-link-box collapsed" data-toggle="collapse" data-target="#collapseThree"
                  aria-expanded="false" aria-controls="collapseThree">
                  <div class="number">
                    <h5>
                      03
                    </h5>
                  </div>
                  <hr>
                  <div class="t-name">
                    <h5>
                       <a class="t-name" href="chair_wheel.jsp">Wheel Chair</a>
                    </h5>
                  </div>
                </div>
                <div class="t-link-box collapsed" data-toggle="collapse" data-target="#collapseFour"
                  aria-expanded="false" aria-controls="collapseFour">
                  <div class="number">
                    <h5>
                      04
                    </h5>
                  </div>
                  <hr>
                  <div class="t-name">
                    <h5>
                       <a class="t-name" href="chair_folding.jsp">Folding Chair</a>
                    </h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
            
           <div class="col-md-6">
            <div class="collapse show" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="img_container ">
                <div class="box b-1">
                 
                  <div class="img-box">
                    <img src="images/fancy77.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/folding22.jpg" style="height:130%;" alt="">
                  </div>
                </div>
                <div class="box b-2">
                  <div class="img-box">
                    <img src="images/fancy66.jpg" alt="">
                  </div>
                  <div class="img-box">
                    <img src="images/desk88.jpg" style="height:130%;"alt="">
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>

  </section>
 <%@include file="footer.jsp"%>