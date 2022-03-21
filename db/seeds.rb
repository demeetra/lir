# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts "Destroyed all users"
admin = User.create!({
	username: "Надежда Романова",
	email: "nad.vas.2000@yandex.ru",
	password: '1qaz1qaz',
	password_confirmation: '1qaz1qaz'
})
user1 = User.create!({
		username: "Александр Петров",
		email: "avpetrov@ya.ru",
		password: '111111',
		password_confirmation: '111111'
})
puts "Created users: admin: #{admin.id} user1: #{user1.id}"

Topic.destroy_all
puts "Destroyed all topics"
topics = [
	{
		name: "Водные пути",
		display_in_sidebar: true,
	},
	{
		name: "СМИ",
		display_in_sidebar: true,
	},
	{
		name: "Погодные условия",
		display_in_sidebar: true,
	},
	{
		name: "Covid-19",
		display_in_sidebar: true,
	}
]
topics.each do |topic|
	Topic.create!(topic)
end
stopics = Topic.all.collect{|t| t.id}

Post.destroy_all
puts "Destroyed everything you touch"
posts = [
	{
		name: "New Album",
		title: "The Bad Seeds",
		author: "Nick Cave",
		content: "Tracklist",
		image: URI.open("https://in-sound.ru/upload/iblock/d85/d859aa8387fd5fcd7a933be2af91066b.jpg"),
	  created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		user_id: user1.id,
	},
	{
		name: "Old Album",
		title: "The Bad Seeds Old",
		author: "Nick Cave Old Too",
		content: "Some Old Tracklist",
		image: URI.open("https://in-sound.ru/upload/iblock/d85/d859aa8387fd5fcd7a933be2af91066b.jpg"),
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		user_id: user1.id,
	}
]

posts.each do |post|
	postik = Post.create!(post)
	if postik.id
		puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
  else
		puts "faild to create post from #{post}"
	end
end
