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
	password_confirmation: '1qaz1qaz',
	isadmin: true,
})
users = [
	{
			username: "Demeetra",
			email: "navasilenko@edu.hse.ru",
			password: '111111',
			password_confirmation: '111111'
	},
	{
			username: "Александр Петров",
			email: "avpetrov@ya.ru",
			password: '111111',
			password_confirmation: '111111'
	},
	{
			username: "Мария Злыднева",
			email: "zlydneva@ya.ru",
			password: '111111',
			password_confirmation: '111111'
	},
	{
			username: "Евгений Романов",
			email: "romanov@ya.ru",
			password: '111111',
			password_confirmation: '111111'
	},
	{
			username: "Валерия Свиридова",
			email: "sviridova@ya.ru",
			password: '111111',
			password_confirmation: '111111'
	},
	{
			username: "Семён Израилич",
			email: "izrailivich@ya.ru",
			password: '111111',
			password_confirmation: '111111'
	}
]
users.each do |user|
	User.create!(user)
end


puts "Created users: admin: #{admin.id}"

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

Category.destroy_all
puts "Destroyed all categories"
categories = [
	{
		name: "Порт",
		display_in_sidebar: true,
	},
	{
		name: "Вопросы",
		display_in_sidebar: true,
	},
	{
		name: "ЧП",
		display_in_sidebar: true,
	},
	{
		name: "Новость",
		display_in_sidebar: true,
	}
]
categories.each do |category|
	Category.create!(category)
end
scategorys = Category.all.collect{|c| c.id}

Port.destroy_all
puts "Destroyed all categories"
ports = [
	{
		name: "CARTAGENA",
		address: "Картахена",
		tel: "968 12 12 13",
		coordinates: "37.58017° / -0.9679291°",
		rating: "8/10",
		cost: "5/10",
		electric: false,
		wather: true,
		workload:	"8/10",

	},
	{
		name: "AGUILAS",
		address: "Агилас",
		tel: "34 968 411074",
		coordinates: "37.40491° / -1.572461°",
		rating: "7/10",
		cost: "3/10",
		electric: false,
		wather: true,
		workload:	"2/10",

	},
	{
		name: "GARRUCHA",
		address: "Гарруча",
		tel: "34 950 460004",
		coordinates: "37.20565° / -1.779184°",
		rating: "8/10",
		cost: "5/10",
		electric: true,
		wather: true,
		workload:	"1/10",

	},
	{
		name: "CARBONERAS",
		address: "Карбонерас",
		tel: "950236033",
		coordinates: "36.97713° / -1.897202°",
		rating: "7/10",
		cost: "6/10",
		electric: true,
		wather: true,
		workload:	"3/10",

	},
	{
		name: "ALMERIA",
		address: "Алмерия",
		tel: "нет",
		coordinates: "36.82997° / -2.473452°",
		rating: "7/10",
		cost: "5/10",
		electric: true,
		wather: true,
		workload:	"5/10",

	},
	{
		name: "BERMEO",
		address: "Бермео",
		tel: "34 94 688 3801",
		coordinates: "43.41963° / -2.718019°",
		rating: "6/10",
		cost: "6/10",
		electric: false,
		wather: true,
		workload:	"2/10",

	},
]
ports.each do |port|
	Port.create!(port)
end


Comment.destroy_all
Post.destroy_all
puts "Destroyed everything you touch"
posts = [
	{
		title: "Таллин и Хельсинки начинают совместный проект модернизации столичных портов",
		content: "Таллин (Эстония) и Хельсинки (Финляндия) запускают совместный проект модернизации столичных портов «TWIN PORT4». Общий объем инвестиций составит 33 млн евро, в том числе 10 млн евро выделит Евросоюз. По словам председателя правления Таллиннского порта Валдо Калма, инвестиции в проект TWIN PORT4 направлены на развитие морских перевозок между Таллинном и Хельсинки и Мууга и Вуосаари.",
		image: URI.open("https://www.syl.ru/misc/i/ai/379301/2453940.jpg"),
	  created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
		comments: ["Прекрасные новости! Очень ждали с командой ремонта портов в Таллинне и Хельсинках.", "Да, давно пора было начать реставрацию. Рад слышать."],
	},
	{
		title: "Греция планирует отдать в&nbsp;частные руки свои три порта",
		content: "В Греции агентство по приватизации HRADF объявило три международных тендера на выбор инвесторов и операторов для портов Александруполис, Игуменица и Кавала. Сообщается, что они планируют продать контрольный пакет акций не менее 67% в администрациях портов Александруполиса и Игуменица,
							а в порту Кавала собираются передать в субконцессию сроком на 40 лет многоцелевой терминал Philip II.",
		image: URI.open("https://cdnn1.img.sputnik-ossetia.ru/img/07e5/07/01/12447590_0:212:2885:1835_2072x0_60_0_0_8655a8fa62eeb56296c9f38c4e697793.jpg"),
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
	},
	{
		title: "В Италии задержали два&nbsp;судна компании Palmali",
		content: "В Италии арестовали два судна компании Palmali Group – танкер Gobustan и грузовое судно Sultan Bey.
							Сообщается, на борту танкера находятся российские и азербайджанские моряки.Из-за сложившейся ситуации они не могут сойти на берег и репатриироваться на родину. Экипажу помогают благотворительные организации.Так, проблемы компании связаны с тем, что ее основатель и бизнесмен азербайджанского происхождения Мубариз Мансимов, сам находится под арестом в Турции. Он был задержан Управлением финансовых преступлений Стамбула в рамках следствия по делу террористической организации FETO, проводимого Генпрокуратурой города.",
		image: URI.open("https://static.tildacdn.com/tild3935-6339-4834-b034-353032353133/1.jpg"),
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
	},
	{
		title: "Евросоюз опубликовал руководство по&nbsp;работе круизных судов в&nbsp;условиях пандемии COVID-19 🦠",
		content: "Европейский центр по предотвращению и контролю за распространением болезней (агентство Евросоюза) опубликовал руководство о работе круизных судов в условиях пандемии COVID-19.
							В документе перечислены меры, которые рекомендовано предпринять операторам круизных судов в ЕС для минимизации риска заражений коронавирусом.
							Данные рекомендации предназначены для судов под флагами государств Евросоюза и для всех круизных судов, которые заходят в порты ЕС.",
		image: URI.open("https://www.syl.ru/misc/i/ai/379301/2453940.jpg"),
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
	},
	{
		title: "Турецкая верфь Tersan Shipyard готовит к&nbsp;спуску на&nbsp;воду круизное судно на&nbsp;электротяге для&nbsp;норвежской компании Havila shipping",
		content: "Верфь Tersan Shipyard (Ялова, Турция) готовит к спуску на воду первое в серии круизное судно для Havila shipping (Осло, Норвегия).
							На предприятии завершены работы по формированию корпуса судна и ведутся внутренние работы.
							Первое из четырех судов проекта Havyard 923 по контракту с Havila shipping и министерством транспорта Норвегии названо Havila Capella, его передача заказчику планируется до конца 2020 года.",
		image: nil,
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
	},
	{
		title: "Кранец у Ля Рошеля",
		content: "Ребята, неподалёку от порта Ля Рошель замечен чёрный кранец, чей? Отдадим хозяину. Мы стоим в этом порту до пятницы.",
		image: File.open(Rails.root.join('public', 'images', 'cranec.JPG')),
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
	},
	{
		title: "Плыли, плыли и приплыли в Новороссийск",
		content: "Под Новороссийском сухогруз РИО сел на мель, власти решили не снимать корабль с места, а оставить как новую достопримечательность.",
		image: File.open(Rails.root.join('public', 'images', 'tancer.jpg')),
		created_at: 0,
		updated_at: 0,
		topic_id: stopics.sample,
		category_id: scategorys.sample,
	}
]
posts.each do |post|
	user = User.all.sample
	post["user_id"] = user.id
	post["author"] = user.username
	post["created_at"] = (rand*10).days.ago
	post["updated_at"] = post["created_at"]
	comments = []
	if post.key?(:comments)
		comments = post[:comments]
		post.delete(:comments)
  end
	postik = Post.create!(post)
	puts "Some magic just create a #{ postik.title } with id #{ postik.id }!"
  comments.each do |body|
		user = User.all.reject{|value| value.id == postik.user_id}.sample
		comment = {
			body: body,
			post_id: postik.id,
			user_id: user.id,
			commenter: user.username,
			created_at: 0,
			updated_at: 0,
		}
		comment["created_at"] = (rand*10).days.ago
		comment["updated_at"] = comment["created_at"]
		Comment.create!(comment)
	end
end
