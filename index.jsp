<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Food Delivery Website</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
    <!-- Hover CSS -->
    <link rel="stylesheet" href="css/hover-min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Navigation Section Start -->
    <header class="navbar">
        <nav id="site-top-nav" class="navbar-menu navbar-fixed-top">
            <div class="container">
                <!-- logo -->
                 
                <span class="logo">
                    <a href="index.jsp" title="Logo">
                        <img src="img/logo.png" alt="Logo" class="img-responsive">
                    </a>
                </span>
                 <span>
                    <h2>Hossaina Food Delivery</h2>
                 </span>
                <!-- Main Menu -->
                <div class="menu text-right">
                    <ul>
                        <li><a class="hvr-underline-from-center" href="index.jsp">Home</a></li>
                        <li><a class="hvr-underline-from-center" href="categories.jsp">Categories</a></li>
                        <li><a class="hvr-underline-from-center" href="foods.jsp">Foods</a></li>
                        <li><a class="hvr-underline-from-center" href="order.jsp">Order</a></li>
                        <li><a class="hvr-underline-from-center" href="contact.jsp">Contact</a></li>
                        <li><a class="hvr-underline-from-center" href="login.jsp">Login</a></li>
                        <li>
                            <a id="shopping-cart" class="shopping-cart">
                                <i class="fa fa-cart-arrow-down"></i>
                                <span class="badge">4</span>
                            </a>
                            <div id="cart-content" class="cart-content">
                                <h3 class="text-center">Shopping Cart</h3>
                                <table class="cart-table" border="0">
                                    <tr>
                                        <th>Food</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Qty</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                    <tr>
                                        <td><img src="img/food/p1.jpg" alt="Food"></td>
                                        <td>Pizza</td>
                                        <td> 80.00</td>
                                        <td>1</td>
                                        <td> 80.00</td>
                                        <td><a href="#" class="btn-delete">&times;</a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="img/food/s1.jpg" alt="Food"></td>
                                        <td>Sandwich</td>
                                        <td> 80.00</td>
                                        <td>1</td>
                                        <td> 80.00</td>
                                        <td><a href="#" class="btn-delete">&times;</a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="img/food/b1.jpg" alt="Food"></td>
                                        <td>Burder</td>
                                        <td> 80.00</td>
                                        <td>1</td>
                                        <td> 80.00</td>
                                        <td><a href="#" class="btn-delete">&times;</a></td>
                                    </tr>
                                    <tr>
                                        <th colspan="4">Total</th>
                                        <th>480.00$</th>
                                        <th></th>
                                    </tr>
                                </table>
                                <a href="order.jsp" class="btn-primary">Confirm Order</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- Navigation Section End -->

    <!-- Food Search Section Start -->
    <section class="food-search text-center" >
        <div class="container">
            <form action="food-search.jsp">
                <input type="search" placeholder="Search for food..." required>
                <input type="submit" value="Search" class="btn-primary">
            </form>
        </div>
    </section>
    <!-- Food Search Section End -->

    <!-- Category Section Start -->
    <section class="categories">
        <div class="container">
            <h2 class="text-center">Explore Foods</h2>
            <div class="heading-border"></div>

            <div class="grid-3">
                <a href="category-foods.jsp">
                    <div class="float-container">
                        <img src="img/category/pizza.jpg" class="img-responsive" alt="">
                        <h3 class="float-text text-white">Pizza</h3>
                    </div>
                </a>
                <a href="category-foods.jsp">
                    <div class="float-container">
                        <img src="img/category/sandwich.jpg" class="img-responsive" alt="">
                        <h3 class="float-text text-white">Sandwich</h3>
                    </div>
                </a>
                <a href="category-foods.jsp">
                    <div class="float-container">
                        <img src="img/category/burger.jpg" class="img-responsive" alt="">
                        <h3 class="float-text text-white">Burger</h3>
                    </div>
                </a>
            </div>
        </div>
    </section>
    <!-- Category Section End -->

    <!-- Foods Section Start -->
    <section class="food-menu">
        <div class="container">
            <h2 class="text-center">Food Menu</h2>
            <div class="heading-border"></div>
            <div class="grid-2">
                <div class="food-menu-box">
                    <form action="">
                        <div class="food-menu-img">
                            <img src="img/food/p1.jpg" alt="" class="img-responsive img-curve">
                        </div>
                        <div class="food-menu-desc">
                            <h4>Pizza</h4>
                            <p class="food-price">80.00</p>
                            <p class="food-details">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus excepturi porro.</p>
                            <input type="number" value="1" min="1">
                            <input type="submit" class="btn-primary" value="Add To Cart">
                        </div>
                    </form>
                </div>
                <div class="food-menu-box">
                    <form action="">
                        <div class="food-menu-img">
                            <img src="img/food/s1.jpg" alt="" class="img-responsive img-curve">
                        </div>
                        <div class="food-menu-desc">
                            <h4>Sandwich</h4>
                            <p class="food-price">120.00</p>
                            <p class="food-details">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus excepturi porro.</p>
                            <input type="number" value="1" min="1">
                            <input type="submit" class="btn-primary" value="Add To Cart">
                        </div>
                    </form>
                </div>
                <div class="food-menu-box">
                    <form action="">
                        <div class="food-menu-img">
                            <img src="img/food/b1.jpg" alt="" class="img-responsive img-curve">
                        </div>
                        <div class="food-menu-desc">
                            <h4>Burger</h4>
                            <p class="food-price">280.00</p>
                            <p class="food-details">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus excepturi porro.</p>
                            <input type="number" value="1" min="1">
                            <input type="submit" class="btn-primary" value="Add To Cart">
                        </div>
                    </form>
                </div>
                <div class="food-menu-box">
                    <form action="">
                        <div class="food-menu-img">
                            <img src="img/food/p1.jpg" alt="" class="img-responsive img-curve">
                        </div>
                        <div class="food-menu-desc">
                            <h4>Pizza</h4>
                            <p class="food-price">80.00</p>
                            <p class="food-details">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus excepturi porro.</p>
                            <input type="number" value="1" min="1">
                            <input type="submit" class="btn-primary" value="Add To Cart">
                        </div>
                    </form>
                </div>
                <div class="food-menu-box">
                    <form action="">
                        <div class="food-menu-img">
                            <img src="img/food/s1.jpg" alt="" class="img-responsive img-curve">
                        </div>
                        <div class="food-menu-desc">
                            <h4>Sandwich</h4>
                            <p class="food-price">120.00</p>
                            <p class="food-details">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus excepturi porro.</p>
                            <input type="number" value="1" min="1">
                            <input type="submit" class="btn-primary" value="Add To Cart">
                        </div>
                    </form>
                </div>
                <div class="food-menu-box">
                    <form action="">
                        <div class="food-menu-img">
                            <img src="img/food/b1.jpg" alt="" class="img-responsive img-curve">
                        </div>
                        <div class="food-menu-desc">
                            <h4>Burger</h4>
                            <p class="food-price">280.00</p>
                            <p class="food-details">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus excepturi porro.</p>
                            <input type="number" value="1" min="1">
                            <input type="submit" class="btn-primary" value="Add To Cart">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <p class="text-center">
            <a href="foods.html" class="btn-primary">See All Foods</a>
        </p>
    </section>
    <!-- Foods Section End -->

    <!-- Footer Section Start -->
    <section class="footer">
        <div class="container">
            <div class="grid-3">
                <div class="text-center">
                    <h3>About Us</h3><br>
                    <p>Hossaina, a city located in the Southern Nations, Nationalities, and Peoples' Region (SNNPR) of Ethiopia, has emerged as a developing urban center in recent years. While traditionally a town focused on agriculture and local trade, Hossaina, like many other cities in Ethiopia, is experiencing a transformation in the way people access services, particularly in the food industry. One of the most notable changes is the growth of food delivery services, which are catering to the demands of an increasingly urbanized population with changing lifestyles and tastes.</p>
                           </div>
                <div class="texr-center">
                    <h3>Site Map</h3><br>
                    <div class="site-links">
                        <a href="categories.jsp">Categories</a>
                        <a href="foods.jsp">Foods</a>
                        <a href="order.jsp">Order</a>
                        <a href="contact.jsp">Contact</a>
                        <a href="login.jsp">Login</a>
                    </div>
                </div>
                <div class="social-links">
                    <h3>Social Links</h3><br>
                    <div class="social">
                        <ul>
                            <li><a href=""><img src="https://img.icons8.com/color/48/null/facebook-new.png"/></a></li>
                            <li><a href=""><img src="https://img.icons8.com/fluency/48/null/instagram-new.png"/></a></li>
                            <li><a href=""><img src="https://img.icons8.com/color/48/null/twitter--v1.png"/></a></li>
                            <li><a href=""><img src="https://img.icons8.com/color/48/null/linkedin-circled--v1.png"/></a></li>
                            <li><a href=""><img src="https://img.icons8.com/color/48/null/youtube-play.png"/></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer Section End -->

    <!-- Copyright Section start -->
    <section class="copyright">
        <div class="container text-center">
            <p>All rights reserved. <a href="#">Hossaina food delivery</a></p>
        </div>
        <a id="back-to-top" class="btn-primary">
            <i class="fa fa-angle-double-up"></i>
        </a>
    </section>
    <!-- Copyright Section End -->

    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- Jquery UI -->
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <!-- Custom JS -->
    <script src="js/custom.js"></script>
</body>
</html>