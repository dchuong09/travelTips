# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
User.destroy_all

Location.create([
	{
		photo: 'http://www.hotel-r.net/im/hotel/it/venice-garden-apartments-8.jpg',
		country: 'Italy',
		city: 'Venice',
		text: 'Venice, the capital of the Veneto region, has a population of more than 270,000, according to the latest census (2004). It is located in the north-east of Italy on numerous small islands in the Venetian Lagoon. The "City of Bridges", as it is usually called, stretches along the mouths of the Po and the Piave rivers.'
	}, 
	{
		photo: 'https://mandelan.eu/images/products/14866289896065.jpg',
		country: 'France',
		city: 'Paris',
		text: 'Paris occupies a central position in the rich agricultural region known as the Paris Basin, and it constitutes one of eight départements of the Île-de-France administrative region. It is by far the country’s most important centre of commerce and culture.'
	}, 
	{
		photo: 'https://livingnomads.com/wp-content/uploads/2018/02/23/cherry-blossom-japan-2018-forecast.jpg',
		country: 'Japan',
		city: 'Tokyo',
		text: "Tokyo (東京, Tōkyō) is Japan's capital and the world's most populous metropolis. It is also one of Japan's 47 prefectures, consisting of 23 central city wards and multiple cities, towns and villages west of the city center. The Izu and Ogasawara Islands are also part of Tokyo."
	}, 
	{
		photo: 'http://www.livelihoods.eu/wp-content/uploads/2018/02/Rio_de_Janeiro_Tingua_AdobeStock.gif',
		country: 'Brazil',
		city: 'Rio De Janeiro',
		text: 'Rio de Janeiro is one of the most visited cities in the Southern Hemisphere and is known for its natural settings, Carnival, samba, bossa nova, and balneario beaches such as Barra da Tijuca, Copacabana, Ipanema, and Leblon.'
	}
])


User.create([
	{
		
	}
])