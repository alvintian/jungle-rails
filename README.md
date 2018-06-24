# Jungle
my Jungle rails project made with ruby rails for school. this project allows shoppers to order items and checkout.

##Usage 
Install the dependencies and start the server.

	git clone git@github.com:alvintian/jungle-rails.git
	cd jungle-rails
	gem install 
	bundle exec rails s -b 0.0.0.0
	bundle exec rake db:reset  
the .env file was not included in the github so create your own
in there replace the ?? with yours
`STRIPE_PUBLISHABLE_KEY=??
STRIPE_SECRET_KEY= ??
GMAIL_USERNAME= ??
GMAIL_PASSWORD= ??
AUTH_NAME=??
AUTH_PASS=??`
## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* bcrypt