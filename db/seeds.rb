# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
	name: "New Album",
	title: "The Bad Seeds",
	author: "Nick Cave",
	content: "Tracklist",
	image: URI.open("https://in-sound.ru/upload/iblock/d85/d859aa8387fd5fcd7a933be2af91066b.jpg")
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author: "Nick Cave Old Too",
	content: "Some Old Tracklist",
	image: URI.open("https://in-sound.ru/upload/iblock/d85/d859aa8387fd5fcd7a933be2af91066b.jpg")
}
]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
