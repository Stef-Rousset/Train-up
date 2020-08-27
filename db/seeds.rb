# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Delete skills"
Skill.destroy_all

puts "Delete experiences"
Experience.destroy_all

puts "Delete Users"
User.destroy_all

puts "Delete sports"
Sport.destroy_all


puts "creating users"
user = User.create!(first_name: "Julie", last_name: "Grison", email: "jgrisond@gmail.com", password: "coucou123", sex: "femme", address: "25 boulevard Voltaire 75011 Paris", birth_date: Date.parse("04/11/1990"))
user_one = User.create!(first_name: "Charles", last_name: "Martin", email: "cmartin@gmail.com", password: "escrime", sex: "homme", address: "50 rue Saint Martin 75004 Paris", birth_date: Date.parse("12/07/1992"))
user_two = User.create!(first_name: "Catherine", last_name: "Durand", email: "cdurand@gmail.com", password: "123456", sex: "femme", address: "1 rue de Lille 75007 Paris", birth_date: Date.parse("10/01/1995"))
user_three = User.create!(first_name: "Julien", last_name: "Blondet", email: "jblondet@gmail.com", password: "123hello", sex: "homme", address:"35 rue Beauregard 75002 Paris", birth_date: Date.parse("25/05/1983"))
puts "users done"

puts "creating skills"
skill_first = Skill.create!(name: "Entraîneur", location: "gymase Rosa Parks, 2 rue du Moulin des Lapins 75014 Paris", description: "J'enseigne aux enfants et aux adultes", user: user_one)
skill_first.save!
skill_second = Skill.create!(name: "Préparateur physique", location: "99 Boulevard Kellermann, 75013 Paris", description: "Je m'adapte à votre niveau et à vos besoins", user: user_two)
skill_second.save!

skill_third = Skill.create!(name: "Préparateur mental", location: "15 Boulevard Voltaire 75011 Paris", description: "Grâce à la sophrologie, vous améliorez vos performances", user: user_three)
skill_third.save!
puts "skills done"


puts "creating sports"

sports = %w[Aikido Athlétisme Aviron Badminton Boxe Danse Escalade Equitation
   Judo Kendo Karaté Kitesurf Natation Pilates Plongée Squash Ski Surf
Tennis de table Voile Yoga]

sports.each do |sport|
  sport = Sport.create!(name: sport)
end

sport_one = Sport.create!(name: "Escrime")
sport_one.save!

sport_two = Sport.create!(name: "Tennis")
sport_two.save!

sport_three = Sport.create!(name: "Golf")
sport_three.save!


puts "sports done"


puts "creating experiences"
experience_one = Experience.create(years: 3, specialty: "Sabre", price: 40)
experience_one.skill = skill_first
experience_one.sport = sport_one
experience_one.save!

experience_two = Experience.create(years: 5, price: 50)
experience_two.skill = skill_second
experience_two.sport = sport_two
experience_two.save!

experience_three = Experience.create(years: 10, price: 45)
experience_three.skill = skill_third
experience_three.sport = sport_three
experience_three.save!

puts "experiences done"




