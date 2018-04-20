# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all

Location.create([
	{
		photo: 'http://www.hotel-r.net/im/hotel/it/venice-garden-apartments-8.jpg',
		country: 'Italy',
		city: 'Venice',
		text: 'About'
	}, 
	{
		photo: 'https://mandelan.eu/images/products/14866289896065.jpg',
		country: 'France',
		city: 'Paris',
		text: 'About'
	}, 
	{
		photo: 'https://livingnomads.com/wp-content/uploads/2018/02/23/cherry-blossom-japan-2018-forecast.jpg',
		country: 'Japan',
		city: 'Tokyo',
		text: 'About'
	}, 
	{
		photo: 'http://www.livelihoods.eu/wp-content/uploads/2018/02/Rio_de_Janeiro_Tingua_AdobeStock.gif',
		country: 'Brazil',
		city: 'Rio De Janeiro',
		text: 'About'
	}
])