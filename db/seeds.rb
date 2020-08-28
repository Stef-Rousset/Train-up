# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Delete Reviews"
Review.destroy_all

puts "Delete experiences"
Experience.destroy_all

puts "Delete Bookings"
Booking.destroy_all

puts "Delete skills"
Skill.destroy_all

puts "Delete Users"
User.destroy_all

puts "Delete sports"
Sport.destroy_all


puts "creating users"
user = User.create!(first_name: "Julie", last_name: "Grison", email: "jgrisond@gmail.com", password: "coucou123", sex: "femme", address: "25 boulevard Voltaire 75011 Paris", birth_date: Date.parse("04/11/1990"))
user_one = User.create!(first_name: "Charles", last_name: "Martin", email: "cmartin@gmail.com", password: "escrime", sex: "homme", address: "50 rue Saint Martin 75004 Paris", birth_date: Date.parse("12/07/1992"))
user_two = User.create!(first_name: "Catherine", last_name: "Durand", email: "cdurand@gmail.com", password: "123456", sex: "femme", address: "1 rue de Lille 75007 Paris", birth_date: Date.parse("10/01/1995"))
user_three = User.create!(first_name: "Julien", last_name: "Blondet", email: "jblondet@gmail.com", password: "123hello", sex: "homme", address:"35 rue Beauregard 75002 Paris", birth_date: Date.parse("25/05/1983"))
user_four = User.create!(first_name: "Jeanne", last_name: "Dupond", email: "jdupond@gmail.com", password: "123hello", sex: "femme", address:"69 bd Gorbella, 06100 Nice", birth_date: Date.parse("02/10/1988"))
user_five = User.create!(first_name: "Elodie", last_name: "Truc", email: "etruc@gmail.com", password: "123hello", sex: "femme", address:"34 Rue des Bouchers, 59800 Lille", birth_date: Date.parse("12/09/1973"))
user_six = User.create!(first_name: "Oliva", last_name: "Ibanez", email: "Olivia.ibanez@gmail.com", password: "123hello", sex: "femme", address:"3 avenue de la Préfecture 35000 Rennes", birth_date: Date.parse("10/06/1980"))
user_seven = User.create!(first_name: "Cécile", last_name: "Klein", email: "klein.cécile@gmail.com", password: "123hello", sex: "femme", address:"41 Quai de Pierre-Scize, 69009 Lyon", birth_date: Date.parse("28/07/1990"))
puts "users done"

puts "creating skills"
skill_first = Skill.create!(name: "Entraîneur", location: "2 rue du Moulin des Lapins, 75014 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_one)
skill_first.save!
skill_second = Skill.create!(name: "Préparateur physique", location: "99 Boulevard Kellermann, 75013 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_two)
skill_second.save!
skill_third = Skill.create!(name: "Préparateur mental", location: "15 Boulevard Voltaire, 75011 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_three)
skill_third.save!
skill_fourth = Skill.create!(name: "Entraîneur", location: "2 rue du Moulin des Lapins, 75014 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_one)
skill_fourth.save!
skill_fifth = Skill.create!(name: "Préparateur physique", location: "2 Rue du Bosphore, 35200 Rennes", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_six)
skill_fifth.save!
skill_six = Skill.create!(name: "Entraîneur", location: "99 Boulevard Kellermann, 75013 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_two)
skill_six.save!
skill_seven= Skill.create!(name: "Préparateur mental", location: "15 Boulevard Voltaire, 75011 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_three)
skill_seven.save!
skill_eight = Skill.create!(name: "Entraîneur", location: "2 rue du Moulin des Lapins, 75014 Paris", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_one)
skill_eight.save!
skill_nine = Skill.create!(name: "Préparateur physique", location: "124 Rue Roger Salengro, 59260 Lille", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_five)
skill_nine.save!
skill_ten = Skill.create!(name: "Préparateur mental", location: "19 Bd Jean Luciano, 06201 Nice", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_four)
skill_ten.save!
skill_eleven = Skill.create!(name: "Préparateur physique", location: "2 Rue du Bosphore, 35200 Rennes", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_six)
skill_eleven.save!
skill_twelve = Skill.create!(name: "Entraîneur", location: "19 Bd Jean Luciano, 06201 Nice", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_four)
skill_twelve.save!
skill_thirteen = Skill.create!(name: "Entraîneur", location: "13 Rue du Bélier, 69002 Lyon", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sodales faucibus nibh, sodales placerat leo fermentum eget. Quisque ultricies diam quam, a maximus metus ultrices eu. Vestibulum auctor sit amet lacus eu ullamcorper.", user: user_seven)
skill_thirteen.save!
puts "skills done"


puts "creating sports"

sports = %w[Tous Aikido Athlétisme Aviron Badminton Boxe Danse Equitation Escalade Escrime Golf
   Judo Kendo Karaté Kitesurf Natation Pilates Plongée Ski Squash Surf Tennis Voile Yoga]

sports.each do |sport|
  sport = Sport.create!(name: sport)
end

sport_one = Sport.create!(name: "Escrime")
sport_one.save!

sport_two = Sport.create!(name: "Tennis")
sport_two.save!

sport_three = Sport.create!(name: "Tous")
sport_three.save!

sport_four = Sport.create!(name: "Equitation ")
sport_four.save!
sport_five = Sport.create!(name: "Karaté")
sport_five.save!
sport_six = Sport.create!(name: "Tennis")
sport_six.save!
sport_seven = Sport.create!(name: "Athlétisme")
sport_seven.save!
sport_eight = Sport.create!(name: "Athlétisme")
sport_eight.save!
sport_nine = Sport.create!(name: "Equitation")
sport_nine.save!
sport_ten = Sport.create!(name: "Golf")
sport_ten.save!
sport_eleven = Sport.create!(name: "Yoga")
sport_eleven.save!
sport_twelve = Sport.create!(name: "Escrime")
sport_twelve.save!
sport_thirteen = Sport.create!(name: "Escrime")
sport_thirteen.save!

puts "sports done"


puts "creating experiences"
experience_one = Experience.create(years: 3, specialty: "Sabre", price: 40)
experience_one.skill = skill_first
experience_one.sport = sport_one
experience_one.sport = sport_thirteen
experience_one.save!

experience_two = Experience.create(years: 5, specialty: "Epée", price: 45)
experience_two.skill = skill_second
experience_two.sport = sport_one
experience_two.save!

experience_three = Experience.create(years: 10, price: 30)
experience_three.skill = skill_third
experience_three.sport = sport_six
experience_three.sport = sport_seven
experience_three.sport = sport_eight
experience_three.sport = sport_nine
experience_three.sport = sport_ten
experience_three.save!

experience_two = Experience.create(years: 10, specialty: "Fleuret", price: 50)
experience_two.skill = skill_thirteen
experience_two.sport = sport_one
experience_two.sport = sport_twelve
experience_two.save!

experience_four = Experience.create(years: 10, specialty: "Sophrologie", price: 50)
experience_four.skill = skill_second
experience_four.sport = sport_two
experience_four.sport = sport_eleven
experience_four.save!


puts "experiences done"

puts "creating bookings"

booking_one = Booking.create!(user: user, skill: skill_first, start_date: DateTime.parse("12/09/2020 10:00"), end_date: DateTime.parse("12/09/2020 11:00"))
booking_one.save!
booking_two = Booking.create!(user: user, skill: skill_second, start_date: DateTime.parse("16/09/2020 13:00"), end_date: DateTime.parse("12/09/2020 14:00"))
booking_two.save!
booking_three = Booking.create!(user: user, skill: skill_third, start_date: DateTime.parse("20/08/2020 17:00"), end_date: DateTime.parse("20/08/2020 18:00"))
booking_three.save!

puts "booking done"
