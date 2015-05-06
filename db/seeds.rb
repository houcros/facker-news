# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
	user_list = [
		["Mafalda", 10, "Como siempre: lo urgente no deja tiempo para lo Importante."],
		["Felipe", 7, "¿Por qué justo a mi tenía que tocarme ser yo?"],
		["Susanita", 6, "Y digo yo, ¿al hombre de tu prójima se lo puede desear?"],
		["Manolito", 9, "Nadie pueda amasar una fortuna sin hacer harina a los demás."],
		["Miguelito", 9, "Yo, lo que quiero que me salga bien es la vida."],
		["Libertad", 8, "Comienza tu día con una sonrisa, verás lo divertido que es ir por ahí desentonando con todo el mundo."]
	]

	user_list.each do |name, karma, about|
		User.create(name: name, karma: karma, about: about)
	end

	submit_list = [
		["¡No te mueras nunca Quino!", 10, "http://www.quino.com.ar", "new", 1],
		["Issues por resolver", 1, "https://github.com/houcros/facker-news/issues", "new", 3],
		["MVC explained", 1, "http://www.tomdalling.com/blog/software-design/model-view-controller-explained/", "new", 4],
		["Documentación muy útil sobre seed.rb", 9, "http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html", "new", 6],
		["Donald Knuth, my advice to young people", 8, "https://www.youtube.com/watch?v=75Ju0eM5T2c", "new", 5],
		["¿Alguien sabe qué quiere decir esto?", 5, "http://api.rubyonrails.org/classes/ActiveRecord/FixtureSet.html", "question", 2],
		["¿Por qué no nos vamos de vacaciones acá?", 7, "http://www.tripadvisor.es/Tourism-g294226-Bali-Vacations.html", "question", 1],
		["No puede faltar", 9, "https://github.com/houcros/facker-news/issues", "new", 1]
	]

	submit_list.each do |title, score, url, submit_type, user_id|
		Submit.create(title: title, score: score, url: url, submit_type: submit_type, user_id: user_id)
	end

	comment_list = [
		["¡Amén!", 2, 1, 9],
		["Algunos ya los resolví.", 5, 2, 5],
		["¡Yo también eh!", 3, 2, 2],
		["Me parece muy bien.", 6, 4, 4],
		["Muy interesante y educativo.", 4, 3, 5],
		["Ni idea :S", 2, 6, 0],
		["Siempre tan sabio...", 5, 5, 0],
		["Me encanta :)", 4, 8, 9],
		["¿Cuándo?", 2, 6, 6],
		["Demasiada arena...", 6, 6, 1]
	]

	comment_list.each do |content, user_id, submit_id, score|
		Comment.create(content: content, user_id: user_id, submit_id: submit_id, score: score)
	end

	reply_list = [
		["+1", 5, 1, 1, 9],
		["Empollón.", 2, 3, 5, 3],
		["¿Quién te preguntó?", 4, 6, 10, 3],
		["Para eso no digas nada.", 4, 6, 6, 2],
		["Me encantaS ;)", 3, 8, 8, 0],
		["¡Bien dicho!", 6, 1, 1, 6]
	]

	reply_list.each do |content, user_id, submit_id, parent_id, score|
		Comment.create(content: content, user_id: user_id, submit_id: submit_id, parent_id: parent_id, score: score)
	end
