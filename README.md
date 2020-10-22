# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Stretch
An auto-mailing receipt was implemented (though not made live due to being a development server) and can be viewed when the server is running at http://localhost:3000/rails/mailers/user_mailer/receipt_email_preview

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>


## Preview
!["Admin Products Dashboard"](https://github.com/Ibirn/jungle/blob/master/docs/adminproducts.png)
!["Cart"](https://github.com/Ibirn/jungle/blob/master/docs/cart.png)
!["Confirmed Order"](https://github.com/Ibirn/jungle/blob/master/docs/orderscreen.png)
!["Splash Page"](https://github.com/Ibirn/jungle/blob/master/docs/productsplash.png)


## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
