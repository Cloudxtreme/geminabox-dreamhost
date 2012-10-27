# Gem In A Box on [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting

This repo has the basic code for you to run Gem In A Box on [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting.

## Installation

1) Create a new domain/subdomain in [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting control panel for the gem server make sure that you checked the Passenger (Ruby/Python apps only) option. You must also specify the location of the 'public' subdirectory of the Ruby on Rails (or other Rack-compliant) application at the same time which is just public.

2) SSH to your server and cd to the folder of the domain/subdomain.

3) Clone this repo locally or directly to your [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting domain/subdomain you wish to have the gem server.

	git clone https://github.com/shukydvir/geminabox-dreamhost.git
	
4) Update the config.ru file with your username and password for the basic authentication or comment these lines if you don't wise no authentication at all.

	use Rack::Auth::Basic do |username, password|
	  username = 'username'
	  password = 'password'
	end
	
5) if you have cloned localy you need to upload the files to the server (choose which method you want rsync, scp, etc….)

6) run bundle install on the server.

	bundle install
	
if that don't work you need to export the path of the gems on your server should be like this:

	export PATH=~/.gems/bin:/usr/lib/ruby/gems/1.8/bin:$PATH
	
and then run bundle install.

7) you need to restart the passenger in order for the settings to take place.

	touch tmp/restart.txt
	
will get the job done.

## Usage

if you did other changes in the code you need to restart the passenger by doing

	touch tmp/restart.txt
	
	
in order to use this just add this to your Gemfile

	source "http://your.servers.host"
	
or if you setup the basic auth use this

	source "http://username:password@your.servers.host"
	
and you can access your private gems hosted on your own private gem server on [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting.
## Resources

1. [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting Passenger - <http://wiki.dreamhost.com/Passenger>
2. Gem In A Box - <https://github.com/cwninja/geminabox>
3. Gem In A Box - Http Basic Auth - <https://github.com/cwninja/geminabox/wiki/Http-Basic-Auth>

## Additionl Informaion

You can create a mirror of rubygems.org with this setup just point your data folder to your mirror folder.

you can user the [rubygems-mirror gem](https://github.com/rubygems/rubygems-mirror) to do this easily.

## Signup for [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting account.

if you don't have a [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting account you can create one using the Promo Code below:

1. $30 discount if you pay for 1 year.
2. $50 discount if you pay for 2 years.

**Enjoy**


### Promo Code: "SHUKYDVIR"

## Alternatives

if you don't have a [Dreamhost](http://www.dreamhost.com/r.cgi?239314) shared hosting account (you should totaly get one, their are cheap and very good) you can use the same code on openshift for example.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

##License

Check LICENSE, MIT.