require "open-uri"
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
user_clone = User.create!(first_name: "Eugénie", last_name: "Grison", email: "egrison@gmail.com", password: "coucou123", sex: "femme", address: "5bis Place Jean Macé, 69007 Lyon", birth_date: Date.parse("04/11/1990"))
file = URI.open('https://i.pinimg.com/originals/fb/65/ec/fb65ec230381da99b146e87b7f68dac8.jpg')
user_clone.photo.attach(io: file, filename: 'JulieGrison.jpg', content_type: 'image/jpg')

user_cltwo = User.create!(first_name: "Caroline", last_name: "Chamois", email: "caro-chamois@gmail.com", password: "fine123", sex: "femme", address: "10 rue d'Aix, 75010", birth_date: Date.parse("06/11/1981"))
file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80.jpg')
user_cltwo.photo.attach(io: file, filename: 'CarolineChamois.jpg', content_type: 'image/jpg')

user_clthree = User.create!(first_name: "Christian", last_name: "Boucherd", email: "cboucherd@gmail.com", password: "fine456", sex: "homme", address: "25 rue de Bretagne, 75003 Paris", birth_date: Date.parse("06/10/1991"))
file = URI.open('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80.jpg')
user_clthree.photo.attach(io: file, filename: 'ChristianBoucherd.jpg', content_type: 'image/jpg')

user_clfour = User.create!(first_name: "Quentin", last_name: "Ninon", email: "cninon@gmail.com", password: "fine789", sex: "homme", address: "1 rue de Rivoli, 75004 Paris", birth_date: Date.parse("06/12/1993"))
file = URI.open('https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80.jpg')
user_clfour.photo.attach(io: file, filename: 'QuentinNinon.jpg', content_type: 'image/jpg')

user_clfive = User.create!(first_name: "Myriam", last_name: "Canchard", email: "mcanchard@gmail.com", password: "789fine", sex: "femme", address: "76 rue de Tolbiac, 75013 Paris", birth_date: Date.parse("27/04/1994"))
file = URI.open('https://images.unsplash.com/photo-1551069613-1904dbdcda11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=956&q=80.jpg')
user_clfive.photo.attach(io: file, filename: 'MyriamCanchard.jpg', content_type: 'image/jpg')

user_one = User.create!(first_name: "Charles", last_name: "Martin", email: "cmartin@gmail.com", password: "escrime", sex: "homme", address: "50 rue Saint Martin 75004 Paris", birth_date: Date.parse("12/07/1992"))
file = URI.open('https://lepetitjournal.com/sites/default/files/2020-05/griffin-wooldridge-7Sz71zuuW4k-unsplash.jpg')
user_one.photo.attach(io: file, filename: 'CharlesMartin.jpg', content_type: 'image/jpg')

user_two = User.create!(first_name: "Catherine", last_name: "Durand", email: "cdurand@gmail.com", password: "123456", sex: "femme", address: "1 rue de Lille 75007 Paris", birth_date: Date.parse("10/01/1995"))
file = URI.open('https://images.unsplash.com/photo-1579704650564-77f58515575b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80.jpg')
user_two.photo.attach(io: file, filename: 'OlivaIbanez.jpg', content_type: 'image/jpg')

user_three = User.create!(first_name: "Julien", last_name: "Blondet", email: "jblondet@gmail.com", password: "123hello", sex: "homme", address:"35 rue Beauregard 75002 Paris", birth_date: Date.parse("25/05/1983"))
file = URI.open('https://www.beonfleek.fr/wp-content/uploads/2019/08/dominic-conner-1068145-unsplash-215x300.jpg')
user_three.photo.attach(io: file, filename: 'JulienBlondet.jpg', content_type: 'image/jpg')

user_four = User.create!(first_name: "Jeanne", last_name: "Dupond", email: "jdupond@gmail.com", password: "123hello", sex: "femme", address:"30 Allée Pierre de Coubertin, 69007 Lyon", birth_date: Date.parse("02/10/1988"))
file = URI.open('https://i.pinimg.com/originals/da/d5/5e/dad55e43fafb0b0e7a8ce746bd36fb6e.jpg')
user_four.photo.attach(io: file, filename: 'JeanneDupont.jpg', content_type: 'image/jpg')

user_five = User.create!(first_name: "Elodie", last_name: "Truc", email: "etruc@gmail.com", password: "123hello", sex: "femme", address:"34 Rue des Bouchers, 59800 Lille", birth_date: Date.parse("12/09/1973"))
file = URI.open('https://images.unsplash.com/photo-1510424363135-13631ed57db1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80.jpg')
user_five.photo.attach(io: file, filename: 'ElodieTruc.jpg', content_type: 'image/jpg')

user_six = User.create!(first_name: "Olivia", last_name: "Ibanez", email: "Olivia.ibanez@gmail.com", password: "123hello", sex: "femme", address:"3 avenue de la Préfecture 35000 Rennes", birth_date: Date.parse("10/06/1980"))
file = URI.open('https://images.unsplash.com/photo-1557790508-54a4d4d02e4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=362&q=80.jpg')
user_six.photo.attach(io: file, filename: 'OliviaIbanez.jpg', content_type: 'image/jpg')

user_seven = User.create!(first_name: "Cécile", last_name: "Klein", email: "klein.cécile@gmail.com", password: "123hello", sex: "femme", address:"41 Quai de Pierre-Scize, 69009 Lyon", birth_date: Date.parse("28/07/1990"))
file = URI.open('https://images.unsplash.com/photo-1566758303763-e456d76a7853?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80.jpg')
user_seven.photo.attach(io: file, filename: 'CécileKlein.jpg', content_type: 'image/jpg')

user_eight = User.create!(first_name: "Boris", last_name: "Chambeau", email: "b.chambeau@gmail.com", password: "hey1234", sex: "homme", address:"5 Rue Gustave Charpentier, 44300 Nantes", birth_date: Date.parse("04/12/1991"))
file = URI.open('https://images.unsplash.com/photo-1590411506193-00ed62b2d08d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80.jpg')
user_eight.photo.attach(io: file, filename: 'BorisChambeau.jpg', content_type: 'image/jpg')

user_nine = User.create!(first_name: "Astrid", last_name: "Charpentier", email: "astrid.c@hotmail.fr", password: "hey5678", sex: "femme", address:"33 boulevard du Chateau, 92200 Neuilly sur Seine", birth_date: Date.parse("04/12/1981"))
file = URI.open('https://images.unsplash.com/photo-1506863530036-1efeddceb993?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2141&q=80.jpg')
user_nine.photo.attach(io: file, filename: 'AstridCharpentier.jpg', content_type: 'image/jpg')

user_ten = User.create!(first_name: "Claire", last_name: "Chemin", email: "claire.chemin@gmail.com", password: "hola123", sex: "femme", address:"45 Rue du Bac, 75007 Paris", birth_date: Date.parse("21/02/1999"))
file = URI.open('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80.jpg')
user_ten.photo.attach(io: file, filename: 'ClaireChemin.jpg', content_type: 'image/jpg')

user_eleven = User.create!(first_name: "Margot", last_name: "Soleil", email: "msoleil@gmail.com", password: "yoga123", sex: "femme", address:"30 rue Vieille du Temple, 75004 Paris", birth_date: Date.parse("25/03/1995"))
file = URI.open('https://images.unsplash.com/photo-1529693662653-9d480530a697?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80.jpg')
user_eleven.photo.attach(io: file, filename: 'MargotSoleil.jpg', content_type: 'image/jpg')

user_twelve = User.create!(first_name: "Antoine", last_name: "Margean", email: "a.margean@hotmail.fr", password: "prep123", sex: "homme", address:"25 avenue Ledru Rollin, 75012 Paris", birth_date: Date.parse("04/07/1993"))
file = URI.open('https://images.unsplash.com/photo-1583500178450-e59e4309b57d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2125&q=80.jpg')
user_twelve.photo.attach(io: file, filename: 'AntoineMargean.jpg', content_type: 'image/jpg')

user_thirteen = User.create!(first_name: "Amandine", last_name: "Primeur", email: "a.primeur@hotmail.fr", password: "prep456", sex: "femme", address:"52 rue de Lourmel, 75015 Paris", birth_date: Date.parse("15/07/1987"))
file = URI.open('https://images.unsplash.com/photo-1526080652727-5b77f74eacd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2710&q=80.jpg')
user_thirteen.photo.attach(io: file, filename: 'AmandinePrimeur.jpg', content_type: 'image/jpg')

user_fourteen = User.create!(first_name: "Nawfel", last_name: "Haddad", email: "n.Haddad@gmail.com", password: "tennis123", sex: "homme", address:"85 avenue Emile Zola, 75015 Paris", birth_date: Date.parse("06/11/1996"))
file = URI.open('https://images.unsplash.com/photo-1578924608828-79a71150f711?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2708&q=80.jpg')
user_fourteen.photo.attach(io: file, filename: 'NawfelHaddad.jpg', content_type: 'image/jpg')

user_fifteen = User.create!(first_name: "Pierre", last_name: "Janvier", email: "pierre.janvier@hotmail.fr", password: "123prep", sex: "homme", address:"18 rue de Sèvres, 75007 Paris", birth_date: Date.parse("05/05/1995"))
file = URI.open('https://images.unsplash.com/photo-1590086782792-42dd2350140d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80.jpg')
user_fifteen.photo.attach(io: file, filename: 'PierreJanvier.jpg', content_type: 'image/jpg')


puts "users done"

puts "creating skills"
skill_first = Skill.create!(name: "Entraîneur", location: "2 rue du Moulin des Lapins, 75014 Paris", description: "J'enseigne en club aussi bien aux débutants qu'aux tireurs compétiteurs confirmés. J'adpate le contenu de ma séance à vos besoins!", user: user_one)
skill_first.save!
skill_second = Skill.create!(name: "Préparateur physique", location: "99 Boulevard Kellermann, 75013 Paris", description: "Étant préparateur physique du club de tennis du RCF, je vous propose des séances spécifiquement adaptées à ce sport exigeant. Mon but: vous faire progresser!", user: user_two)
skill_second.save!
skill_third = Skill.create!(name: "Préparateur mental", location: "15 Boulevard Voltaire, 75011 Paris", description: "Après avoir travaillé avec de nombreux sportifs à l'INSEP, je vous ferai bénéficier des dernières avancées en terme de préparation mentale.", user: user_three)
skill_third.save!
skill_fourth = Skill.create!(name: "Préparateur physique", location: "2 Rue du Bosphore, 35200 Rennes", description: "Je compte parmi mes clients de nombreux boxeurs, lutteurs, judokas et karatéka. Mes séances de travail physique axées Sports de Combat sauront répondre à vous attentes", user: user_four)
skill_fourth.save!
skill_fifth = Skill.create!(name: "Préparateur physique", location: "124 Rue Roger Salengro, 59260 Lille", description: " Ancien nageur de haut niveau membre de l'équipe de France de Natation, je connais très bien les exigences de ce sport.", user: user_five)
skill_fifth.save!
skill_six = Skill.create!(name: "Préparateur mental", location: "19 Bd Jean Luciano, 06201 Nice", description: " Spécialiste des sports d'opposition, j'interviens auprès de nombreux joueurs de tennis pour les aider à développer leur mental.", user: user_six)
skill_six.save!
skill_seven = Skill.create!(name: "Entraîneur", location: "13 Rue du Bélier, 69002 Lyon", description: "Ancien champion de France de saut en hauteur, je suis dorénavant entraîneur spécialiste des sauts.", user: user_seven)
skill_seven.save!
skill_eight = Skill.create!(name: "Entraîneur", location: "45 Rue de la Bourgeonnière, 44300 Nantes", description: "Je suis spécialiste des courses de demi-fond et de fond, et je vous propose des séances adaptées à votre niveau et à vos objectifs.", user: user_eight)
skill_eight.save!
skill_nine = Skill.create!(name: "Entraîneur", location: "27-31 Boulevard d'Inkermann, 92200 Neuilly-sur-Seine", description: "Je travaille aussi bien avec les enfants qu'avec les adultes, débutants ou confirmés, pour apprendre à nager ou perfectionner votre technique.", user: user_nine)
skill_nine.save!
skill_ten = Skill.create!(name: "Entraîneur", location: "48 Rue Vieille du Temple, 75004 Paris", description: "Mon arme de prédilection est l'épée, et mon objectif principal est de vous faire atteindre le vôtre!", user: user_ten)
skill_ten.save!
skill_eleven = Skill.create!(name: "Entraîneur", location: "2 Rue Japy, 75011 Paris", description: "Je suis spécialisée dans l'enseignement du Hatha yoga, et mon objectif premier est votre bien être.", user: user_eleven)
skill_eleven.save!
skill_twelve = Skill.create!(name: "Préparateur physique", location: "244 rue de Bercy, 75012 Paris", description: "Préparateur physique de l'équipe de France d'épée durant la dernière olympiade, mes séances adaptées à ce sport vous permettront d'améliorer vos performances.", user: user_twelve)
# file = URI.open ('https://res.cloudinary.com/du5qhnalh/video/upload/v1598966246/prepone_nsuhum.mp4')
# skill_twelve.video.attach(io: file, filename: 'amargean.mp4', content_type: 'video/mp4')
skill_twelve.save!
skill_thirteen = Skill.create!(name: "Préparateur mental", location: "52 rue de Lourmel, 75015 Paris", description: "Spécialiste de la Sophrologie, j'interviens particulièrement auprès des pratiquants de sports de combat pour leur forger un mental d'acier.", user: user_thirteen)
skill_thirteen.save!
skill_fourteen = Skill.create!(name: "Entraîneur", location: "9 Rue des Frères Flavien, 75020 Paris", description: "Ex joueur professionnel classé 258ème à l'ATP, je vous conseille en compétition et vous fais bénéficier de toute mon expérience.", user: user_fourteen)
skill_fourteen.save!
skill_fifteen = Skill.create!(name: "Préparateur physique", location: "33 rue de l'Église, 75015 Paris", description: "En fonction de votre sport et de votre niveau, je construis pour vous une séance complètement personnalisée.", user: user_fifteen)
# file = URI.open ('https://res.cloudinary.com/du5qhnalh/video/upload/v1598967409/pjanvier_qewxwd.mp4')
# skill_fifteen.video.attach(io: file, filename: 'pjanvier.mp4', content_type: 'video/mp4')
skill_fifteen.save!
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
sport_four = Sport.create!(name: "Sports de combat ")
sport_four.save!
sport_five = Sport.create!(name: "Natation")
sport_five.save!
sport_six = Sport.create!(name: "Tennis")
sport_six.save!
sport_seven = Sport.create!(name: "Athlétisme")
sport_seven.save!
sport_eight = Sport.create!(name: "Athlétisme")
sport_eight.save!
sport_nine = Sport.create!(name: "Natation")
sport_nine.save!
sport_ten = Sport.create!(name: "Escrime")
sport_ten.save!
sport_eleven = Sport.create!(name: "Yoga")
sport_eleven.save!
sport_twelve = Sport.create!(name: "Escrime")
sport_twelve.save!
sport_thirteen = Sport.create!(name: "Sports de combat")
sport_thirteen.save!

puts "sports done"


puts "creating experiences"
experience_one = Experience.create(years: 8, specialty: "Sabre", price: 40)
experience_one.skill = skill_first
experience_one.sport = sport_one
experience_one.save!

experience_two = Experience.create(years: 5, specialty: "Préparation Physique Généralisée", price: 45)
experience_two.skill = skill_second
experience_two.sport = sport_two
experience_two.save!

experience_three = Experience.create(years: 10, specialty: "Programmation Neuro Linguistique", price: 30)
experience_three.skill = skill_third
experience_three.sport = sport_three
experience_three.save!

experience_four = Experience.create(years: 15, specialty: "Crossfit", price: 50)
experience_four.skill = skill_fourth
experience_four.sport = sport_four
experience_four.save!

experience_five = Experience.create(years: 10, specialty: "Préparation Physique Spécifique", price: 30)
experience_five.skill = skill_fifth
experience_five.sport = sport_five
experience_five.save!

experience_six = Experience.create(years: 11, specialty: "Biofeedback", price: 50)
experience_six.skill = skill_six
experience_six.sport = sport_six
experience_six.save!

experience_seven = Experience.create(years: 10, specialty: "Sauts", price: 60)
experience_seven.skill = skill_seven
experience_seven.sport = sport_seven
experience_seven.save!

experience_eigth = Experience.create(years: 5, specialty: "Fond et demi-fond", price: 50)
experience_eigth.skill = skill_eight
experience_eigth.sport = sport_eight
experience_eigth.save!

experience_nine = Experience.create(years: 10, specialty: "Brasse et crawl", price: 45)
experience_nine.skill = skill_nine
experience_nine.sport = sport_nine
experience_nine.save!

experience_ten = Experience.create(years: 11, specialty: "Épée", price: 40)
experience_ten.skill = skill_ten
experience_ten.sport = sport_ten
experience_ten.save!

experience_eleven = Experience.create(years: 12, specialty: "Hatha yoga", price: 55)
experience_eleven.skill = skill_eleven
experience_eleven.sport = sport_eleven
experience_eleven.save!

experience_twelve = Experience.create(years: 12, specialty: " Épée", price: 70)
experience_twelve.skill = skill_twelve
experience_twelve.sport = sport_twelve
experience_twelve.save!

experience_thirteen = Experience.create(years: 12, specialty: "Sophrologie", price: 50)
experience_thirteen.skill = skill_thirteen
experience_thirteen.sport = sport_thirteen
experience_thirteen.save!

experience_fourteen = Experience.create(years: 8, specialty: "Tennis en compétition", price: 60)
experience_fourteen.skill = skill_fourteen
experience_fourteen.sport = sport_two
experience_fourteen.save!

experience_fifteen = Experience.create(years: 13, specialty: "Crossfit", price: 55)
experience_fifteen.skill = skill_fifteen
experience_fifteen.sport = sport_three
experience_fifteen.save!


puts "experiences done"

puts "creating bookings"

booking_one = Booking.create!(user: user_clone, skill: skill_first, start_date: "12-08-2020", start_hour: "10:00", end_hour: "11:00")
booking_one.save!
booking_two = Booking.create!(user: user_clone, skill: skill_second, start_date: "16-09-2020", start_hour: "13:00", end_hour: "15:00")
booking_two.save!
booking_three = Booking.create!(user: user_cltwo, skill: skill_third, start_date: "20-08-2020", start_hour: "17:00", end_hour: "18:00")
booking_three.save!
booking_four = Booking.create!(user: user_cltwo, skill: skill_ten, start_date: "27-09-2020", start_hour: "10:00", end_hour: "11:00")
booking_four.save!
booking_five = Booking.create!(user: user_clthree, skill: skill_ten, start_date: "16-08-2020", start_hour: "10:00", end_hour: "11:00")
booking_five.save!
booking_six = Booking.create!(user: user_clthree, skill: skill_fourth, start_date: "25-09-2020", start_hour: "10:00", end_hour: "11:00")
booking_six.save!
booking_seven = Booking.create!(user: user_clfour, skill: skill_twelve, start_date: "25-06-2020", start_hour: "10:00", end_hour: "11:00")
booking_seven.save!
booking_eigth = Booking.create!(user: user_clfour, skill: skill_twelve, start_date: "15-09-2020", start_hour: "10:00", end_hour: "11:00")
booking_eigth.save!
booking_nine = Booking.create!(user: user_clfive, skill: skill_fourteen, start_date: "25-08-2020", start_hour: "10:00", end_hour: "11:00")
booking_nine.save!
booking_ten = Booking.create!(user: user_clfive, skill: skill_fifteen, start_date: "13-09-2020", start_hour: "10:00", end_hour: "11:00")
booking_ten.save!
booking_eleven = Booking.create!(user: user_clfive, skill: skill_fifteen, start_date: "29-08-2020", start_hour: "10:00", end_hour: "11:00")
booking_eleven.save!
puts "booking done"


