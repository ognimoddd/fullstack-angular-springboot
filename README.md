# fullstack-angular-springboot

## Table of Contents: 
<li><b> Introduction </b></li>
<li><b>Technologies Used</b></li>
<li><b> Installation Guide </b> </li>
<li><b> Features </b></li>
<li><b> Contributions </b></li>

## Introduction

The Michael Emma online store is a fullstack e-commerce website where users can purchase a wide variety of products. It was developed to provide a complete shopping experience for my client's customers and to provide more exposure for his products and personal brand.

<img width="800" alt="home_page" src="https://github.com/ognimoddd/fullstack-angular-springboot/assets/77591203/4450758b-2a4a-4f9a-bdb5-4c9313ba229a">

## Technologies Used

### Frontend
<li>Angular</li>
<li>TypeScript</li>
<li>Bootstrap</li>
<li>HTML</li>
<li>CSS</li>

### Backend
<li>Spring Boot</li>
<li>mySQL</li>
<li>Java</li>
<li>IntelliJ</li>
<li>Postman</li>

### Security
<li>JWT</li>
<li>OAUTH2</li>
<li>OpenID Connect</li>
<li>SSL/TLS</li>

### Payments
<li>Stripe</li>

## Installation Guide

1. Install the following tools: Visual Studio Code, Angular, nvm, node, npm, tsc, IntelliJ IDEA (or Eclipse IDE), MySQL Workbench
2. Start up MySQLWorkBench
3. Go to File -> Open SQL Script -> navigate to the "db-scripts" folder, then open 01-create-user.sql and run the script. This will create the user for the database
4. Go to File -> Open SQL Script -> navigate to the "db-scripts" folder, then open refresh-database-with-100-products.sql and run the script. This will add all products to the database
5. Open the project in your preferred IDE
6. Open the "SpringBootEcommerceApplication" class and press "Run" to start the backend
7. Open the project on Visual Studio Code
8. Type "cd angular-ecommerce" in the terminal then press enter. This will change the directory to the folder containing the frontend
9. Type "npm start" then enter, and wait for the code to compile. Now the front end is running!
10. On your preferred browser, navigate to the following link: https://localhost:4200/products
11. Enjoy the website and have a great online shopping experience!

## Features

1. Browsing the Product Catalog:
    * Users can view all products without having to sign in. Simply visit the website to view all the available products.
2. Login:
    * To sign in, use the following login info:
        * Email:
        * Password: 
3. Additional features for users who are logged in:
    * Logging in provides access to more sections of the website, such as:
      * Members: Exclusive content available only for members.
      * Orders: View your order history.
4. Add Items to Your Cart:
    * When you find a product you want to purchase, click the "Add to Cart" button.
    * You can review and modify the contents of your shopping cart at any time.
5. Checkout Form:
    * Once all desired items are added to the shopping cart, users can check out.
    * Fill out all required fields.
    * Review order to ensure accuracy.
6. Make Payments using Stripe: <br><br>
For testing purposes, users can complete their purchase using the following test card details provided by Stripe: <br><br>
    * Card Number: 4242 4242 4242 4242
    * Expiration Date: Any future date (e.g., 12/25)
    * CVC: Any three-digit number (e.g., 123)
    * These test card details simulate a successful payment and allow users to test the payment functionality without making actual charges to a credit card.
7. Order Confirmation and Tracking:
    * After successfully placing an order, a confirmation popup will appear.
    * Additionally, users can access the "Orders" section in their account to view all orders.

## Contributions

I am committed to a fully transparent development process and would greatly appreciate any contributions. Whether you are helping to fix bugs, proposing new features, or improving documentation - I would love to have your contribution and/or feedback. Thank you for checking out my repository!



    
  


