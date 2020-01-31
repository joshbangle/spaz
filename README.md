# Spaz

[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com)

![test](/readme_images/spaz.png = 600x320)

  ## Focuses
  * AWS video and image storage
  * User authentication with Devise
  * Secure payments using Stripe
  * Simple splash page design with bootstrap

Live demo [can be found here](https://spaz-josh-bangle.herokuapp.com/) on Heroku.

* Username: test1@test.<span></span>com
* Password: password
* Info for testing Stripe payment [can be found here](https://stripe.com/docs/testing).

## Getting Started

### Prerequisites

This setup expects [Git](https://git-scm.com/downloads), [Ruby v 2.5.3](https://www.ruby-lang.org/en/documentation/installation/), and [Rails](https://gorails.com/setup/) to be installed. [PostgreSQL](https://www.postgresql.org/download/) is used for the database.

If you prefer not to worry about the Ruby version, you can navigate to spaz/Gemfile and on line 4 comment out `ruby '2.5.3'` to look like `# ruby '2.5.3` once you have cloned the repository.

### Installing the code

To view this code on your local machine, clone the repository, install the included gems, and migrate the database:
```
git clone git@github.com:joshbangle/spaz.git
cd spaz
bundle install
rails db:setup
```

## Built With

* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) on the [Rails](https://gorails.com/setup/) framework
* [Bootstrap](https://getbootstrap.com/) css framework for styling
* [Devise](https://github.com/heartcombo/devise) user authentication
* [AWS](https://aws.amazon.com/) for cloud storage
* [Stripe](https://stripe.com/) for secure online payments

## Usage
Please feel free to use this code without permission or need to contact me.   
