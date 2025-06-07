<%-- 
    Document   : index
    Created on : 23 Apr, 2025, 11:53:00 AM
    Author     : leina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <link rel="shortcut icon" href="image/icon.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/d2c6717683.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <title>Food Website | Home</title>
    
</head>

               <!---------------------------------header sedtion starts--------------->
<header>
    

    <a href="#" class="logo" ><i class="fas fa-utensils"></i>resto.</a>

    <nav class="navbar">
        <a class="active" href="#home">Home</a>
        <a href="#dishes">Dishes</a>
        <a href="#about">About</a>
        <a href="#menu">Menu</a>
        <a href="#review">Review</a>
        <a href="Cart.jsp">Order</a>
    </nav>

    <div class="icons">
        <i class="fas fa-bars"  id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="favorites.jsp" class="fas fa-heart"></a>
        <a href="Cart.jsp" class="fas fa-shopping-cart"></a>
        
    </div>
</header>
         
                 <!---------------------------------header sedtion ends--------------->


                   <!---------------------------------search form--------------->

<form action=""  id="search-form">
    <input type="search" placeholder="search here...." id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>

                              <!---------------------------------home section starts--------------->

<section class="home" id="home">

    <div class="swiper-container home-slider">

        <div class="swiper-wrapper wrapper">

            <div class="swiper-slide slide">

                <div class="content">

                     <span>our special dish</span>
                     <h3>spicy noodles</h3>
                     <p>Ready in minutes, they’re perfect for busy lifestyles.</p>
                    <div class="price-button">
    <span class="price">₹299</span>
          <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="spicy noodles">
                       <input type="hidden" name="price" value="299">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
           </form>
</div>


                </div>

                <div class="image">
                    <img src="image/home-img-1.jpg" alt="">
                </div>

            </div>

            <div class="swiper-slide slide">

                <div class="content">

                     <span>our special dish</span>
                     <h3>fried chicken</h3>
                     <p> Order now and experience the joy of fried chicken at your fingertips!</p>
                   <div class="price-button">
    <span class="price">₹699</span>
          <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="fried chicken">
                       <input type="hidden" name="price" value="699">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
           </form>
</div>


                </div>

                <div class="image">
                    <img src="image/home-img-2.jpg" alt="">
                </div>

            </div>

            <div class="swiper-slide slide">

                <div class="content">

                     <span>our special dish</span>
                     <h3>Hot Pizza</h3>
                     <p>Dive into the world of pizza with us and discover the perfect blend of taste and convenience.</p>
                    <div class="price-button">
    <span class="price">₹399</span>
      <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Hot Pizza">
                       <input type="hidden" name="price" value="399">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
      </form>
</div>


                </div>

                <div class="image">
                    <img src="image/home-img-3.jpg" alt="">
                </div>

            </div>

        </div>
        <div class="swiper-pagination"></div>

    </div>

 </section>

                 <!---------------------------------home section ends--------------->


                 <!---------------------------------dishes section starts--------------->

<section class="dishes" id="dishes">

    <h3 class="sub-heading"> our dishes</h3>
    <h1 class="heading"> popular dishes</h1>

    <div class="box-container">
        <div class="box">
            <a href="#" class="fas fa-eye"></a>
                        <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Burger"
   data-price="249"
   data-img="image/dish-1.jpg"></a>
            <img src="image/dish-1.jpg" alt="">
            <h3>Burger</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>Rs.249</span>
           <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Burger">
                       <input type="hidden" name="price" value="249">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
            

        </div>

        <div class="box">
           <a href="#" class="fas fa-eye"></a>
            <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Pizza"
   data-price="199"
   data-img="image/dish-2.jpg"></a>

            <img src="image/dish-2.jpg" alt="">
            <h3>Pizza</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>Rs.199</span>
                <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Pizza">
                       <input type="hidden" name="price" value="199">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>             
        </div>

        <div class="box">
              <a href="#" class="fas fa-eye"></a>
                       <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Chicken"
   data-price="399"
   data-img="image/dish-3.jpg"></a>
            <img src="image/dish-3.jpg" alt="">
            <h3>Chicken</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>Rs.399</span>
          <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Chicken">
                       <input type="hidden" name="price" value="399">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
        </div>

        <div class="box">
            <a href="#" class="fas fa-eye"></a>
           <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Coffee"
   data-price="60"
   data-img="image/dish-4.jpg"></a>
            <img src="image/dish-4.jpg" alt="">
            <h3>Coffee</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>Rs.60</span>
             <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Coffee">
                       <input type="hidden" name="price" value="60">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
        </div>

        <div class="box">
              <a href="#" class="fas fa-eye"></a>
         <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Snacks"
   data-price="99"
   data-img="image/dish-5.jpg"></a>
            <img src="image/dish-5.jpg" alt="">
            <h3>Snacks</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>Rs.99</span>
           <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Snacks">
                       <input type="hidden" name="price" value="99">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>              
        </div>

        <div class="box">
             <a href="#" class="fas fa-eye"></a>
         <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Noodles"
   data-price="120"
   data-img="image/dish-6.jpg"></a>
            <img src="image/dish-6.jpg" alt="">
            <h3>Noodles</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>Rs.120</span>
          <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Noodles">
                       <input type="hidden" name="price" value="120">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
        </div>


    </div>


</section>


                                          <!---------------------------------dishes section ends--------------->



                                      <!---------------------------------about section starts--------------->

<section class="about" id="about">


    <h3 class="sub-heading">about us</h3>
    <h1 class="heading"> why choose us?</h1>

    <div class="row">

        <div class="image">
            <img src="image/about-img.png" alt="">
        </div>

        <div class="content">
            <h3>best food in the country</h3>
            <p>Nestled in the heart of Paramathivelur, our restaurant is a culinary oasis. With a menu that celebrates local flavors, each dish is a tribute to Tamil Nadu’s rich gastronomy. The ambiance, a blend of tradition and modernity, invites diners to a unique experience. Our chefs, artisans of taste, craft meals that are not just food, but stories on a plate. Sustainability is our mantra, with ingredients sourced from local farms. Every visit promises a warm welcome, as if you’re family. Here, every meal is a festivity, every bite a memory in the making. Welcome to our haven of taste, where heritage meets the plate.</p>
            
            <div class="icons-container">
                <div class="icons">
                    <i class="fas fa-shipping-fast"></i>
                    <span>free delivery</span>
                </div>
                <div class="icons">
                    <i class="fas fa-rupee-sign"></i>
                    <span>easy payments</span>
                </div>
                <div class="icons">
                    <i class="fas fa-headset"></i>
                    <span>24/7 service</span>
                </div>
            </div>
            <a href="#" class="btn">learn more</a>
        </div>


    </div>






</section>

                                           <!---------------------------------about section ends--------------->


                                           <!---------------------------------menu section starts--------------->

<section class="menu" id="menu">

    <h3 class="sub-heading"> our menu </h3>
    <h1 class="heading"> today's speciality</h1>

    <div class="box-container">

        <div class="box">

            <div class="image">
                <img src="image/menu-1.jpg" alt="">
                    <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Special Pizza"
   data-price="249"
   data-img="image/menu-1.jpg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Special Pizza</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
                   <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Pizza">
                       <input type="hidden" name="price" value="249">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.249</span>
            </div>


        </div>


        <div class="box">

            <div class="image">
                <img src="image/menu-2.jpeg" alt="">
                <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Special Burger"
   data-price="199"
   data-img="image/menu-2.jpeg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Special Burger</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
               <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Burger">
                       <input type="hidden" name="price" value="199">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.199</span>
            </div>


        </div>

        <div class="box">

            <div class="image">
                <img src="image/menu-3.jpg" alt="">
               <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Chapathi"
   data-price="40"
   data-img="image/menu-3.jpg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Chapathi</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
                 <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Chapathi">
                       <input type="hidden" name="price" value="40">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.40</span>
            </div>


        </div>

        <div class="box">

            <div class="image">
                <img src="image/menu-4.jpg" alt="">
           <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="dessert"
   data-price="80"
   data-img="image/menu-4.jpg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>dessert</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
             <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="dessert">
                       <input type="hidden" name="price" value="80">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.80</span>
            </div>


        </div>

        <div class="box">

            <div class="image">
                <img src="image/menu-5.jpg" alt="">
               <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Cakes"
   data-price="149"
   data-img="image/menu-5.jpg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Cakes</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
           <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Cakes">
                       <input type="hidden" name="price" value="149">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.149</span>
            </div>


        </div>
        
        <div class="box">

            <div class="image">
                <img src="image/menu-6.jpeg" alt="">
           <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Parotta"
   data-price="30"
   data-img="image/menu-6.jpeg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Parotta</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
             <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Parotta">
                       <input type="hidden" name="price" value="30">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.30</span>
            </div>


        </div>

        <div class="box">

            <div class="image">
                <img src="image/menu-7.png" alt="">
             <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Cool drinks"
   data-price="299"
   data-img="image/menu-7.png"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Cool drinks</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
                  <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Cool drinks">
                       <input type="hidden" name="price" value="299">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.299</span>
            </div>


        </div>


        <div class="box">

            <div class="image">
                <img src="image/menu-8.jpeg" alt="">
             <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Noodles"
   data-price="75"
   data-img="image/menu-8.jpeg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Noodles</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
               <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Noodles">
                       <input type="hidden" name="price" value="75">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.75</span>
            </div>


        </div>




        <div class="box">

            <div class="image">
                <img src="image/menu-9.jpg" alt="">
               <a href="javascript:void(0);" class="fas fa-heart heart-icon"
   data-name="Chilli chicken"
   data-price="99"
   data-img="image/menu-9.jpg"></a>
            </div>
            <div class="content">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    
                </div>
                <h3>Chilli chicken</h3>
                <p>Order now and experience the joy of delicious at your fingertips!</p>
        <form action="addtocart.jsp" method="post" style="margin-top: 10px;">
                       <input type="hidden" name="name" value="Chilli chicken">
                       <input type="hidden" name="price" value="99">
                       <input type="hidden" name="quantity" value="1">
        <button type="submit" class="btn">Add to Cart</button>
         </form>
                <span class="price">Rs.99</span>
            </div>


        </div>








    </div>


</section>

                                 <!---------------------------------menu section ends--------------->


                                 <!---------------------------------review section starts--------------->



<section class="review" id="review">

    <h3 class="sub-heading"> customer's review </h3>
    <h1 class="heading"> what they say </h1>


    <div class="swiper-container review-slider">

        <div class="swiper-wrapper">


            <div class="swiper-slide slide">
                <i class="fas fa-quote-right"></i>

                <div class="user">
                    <img src="image/pic-1.jpeg"  alt="">
                    <div class="user-info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            
                        </div>
                    </div>
                </div>
                <p>“As a regular at Resto, I can vouch for its consistency. Whether it’s a lazy Sunday brunch or a celebratory dinner, this place never disappoints. The wood-paneled walls create an intimate setting.
                </p>


            </div>


            <div class="swiper-slide slide">
                <i class="fas fa-quote-right"></i>

                <div class="user">
                    <img src="image/pic-2.jpeg"  alt="">
                    <div class="user-info">
                        <h3>Lena</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            
                        </div>
                    </div>
                </div>
                <p>“From the moment I stepped into Resto, I felt like I was in a culinary wonderland. The warm ambiance, attentive staff, and tantalizing aromas set the stage for an unforgettable evening.
                </p>


            </div>

            <div class="swiper-slide slide">
                <i class="fas fa-quote-right"></i>

                <div class="user">
                    <img src="image/pic-3.jpeg"  alt="">
                    <div class="user-info">
                        <h3>Sophie</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            
                        </div>
                    </div>
                </div>
                <p>“I’m a food explorer, and Resto took me on a delightful journey. The menu reads like a love letter to local ingredients, and the chef’s creativity shines through. </p>


            </div>


            <div class="swiper-slide slide">
                <i class="fas fa-quote-right"></i>

                <div class="user">
                    <img src="image/pic-4.jpg"  alt="">
                    <div class="user-info">
                        <h3>Raj</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            
                        </div>
                    </div>
                </div>
                <p>“For our anniversary, my wife and I chose Resto, and it was a decision we’ll cherish forever. The candlelit table, attentive service, and live piano music set the mood. 
                </p>


            </div>



        </div>





    </div>







</section>

                                <!---------------------------------review section ends--------------->


                        <!---------------------------------footer section starts--------------->


<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>locations</h3>
            <a href="#">india</a>
            <a href="#">japan</a>
            <a href="#">russia</a>
            <a href="#">usa</a>
            <a href="#">france</a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">dishes</a>
            <a href="#">about</a>
            <a href="#">menu</a>
            <a href="#">review</a>
            <a href="#">order</a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#">+123-456-7890</a>
            <a href="#">+111-222-3333</a>
            <a href="#">aamishekdaniel@gmail.com</a>
            <a href="#">flowserials@gmail.com</a>
            <a href="#">mumbai, india - 400104</a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">twitter</a>
            <a href="#">instagram</a>
            <a href="#">linkedin</a>
        </div>

    </div>

    <div class="credit"> copyright @ 2024 by <span> A.Amishek Daniel </span> </div>

</section>





                        <!---------------------------------footer section ends--------------->

                 
                




<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
                  <!-------------------------------js------------------>
  <script src="js/index.js"></script>  
  
  <script>
    // Function to read URL parameter
    function getQueryParam(param) {
        const urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(param);
    }

    // Show popup if item was added
    const addedItem = getQueryParam('added');
    if (addedItem) {
        alert(addedItem + " has been added to your cart!");
        // Remove the parameter from the URL without reloading
        const url = new URL(window.location);
        url.searchParams.delete('added');
        window.history.replaceState({}, document.title, url);
    }
    

document.getElementById("search-form").addEventListener("submit", function(e) {
    e.preventDefault();
    const query = document.getElementById("search-box").value.trim().toLowerCase();

    const items = {
        "hot pizza": "#home",
        "fried chicken": "#home",
        "spicy noodles": "#home",
        "special pizza": "#menu",
        "special burger": "#menu",
        "chapathi": "#menu",
        "dessert": "#menu",
        "cakes": "#menu",
        "parotta": "#menu",
        "cool drinks": "#menu",
        "noodles": "#menu",
        "burger": "#dishes",
        "pizza": "#dishes",
        "coffee": "#dishes",
        "chicken": "#dishes",
        "snacks": "#dishes",
        "chilli chicken": "#menu"
    };

    function closeSearch() {
        document.getElementById("search-form").classList.remove("active");
        document.getElementById("search-box").value = "";
    }

    if (items[query]) {
        closeSearch();
        window.location.href = items[query];
    } else {
        alert("❌ Sorry, item not available.");
        closeSearch();
    }
});


document.querySelectorAll('.heart-icon').forEach(function(heart) {
    heart.addEventListener('click', function () {
        const name = this.dataset.name;
        const price = this.dataset.price;
        const img = this.dataset.img;

        if (!name || !price || !img) {
            alert("⚠ Missing item info");
            return;
        }

        let favorites = JSON.parse(sessionStorage.getItem('favorites') || '[]');
        const exists = favorites.find(item => item.name === name);

        if (!exists) {
            favorites.push({ name, price, img });
            sessionStorage.setItem('favorites', JSON.stringify(favorites));
            alert(name + " added to favorites!");
        } else {
            alert(name + " is already in favorites.");
        }
    });
});
    
</script>



