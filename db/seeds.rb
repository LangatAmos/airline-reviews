# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating airlines..."

kq = Airline.create(name: "Kenya Airways", image_url: "", description: "Kenya Airways (KQ) is the National carrier in Kenya. Its main hub is at the Jomo Kenyatta International Airport (JKIA). The airline operates domestic flights to the following destinations within Kenya: Mombasa, Kisumu, Malindi, and Nairobi.")
jambojet = Airline.create(name: "JamboJet", image_url: "", description: "Jambo jet is a low-cost airline and a subsidiary of Kenya Airways. It offers affordable domestic flights throughout Kenya. ")
jetways = Airline.create(name: "Jetways", image_url: "", description: "We are a domestic flight company offering daily flights to Maasai Mara, Ukunda and Wajir from Wilson")
mombasa_air_safari = Airline.create(name: "Mombasa Air Safari", image_url: "", description: "Mombasa Air Safari operates domestic flights from its hub at Moi International Airport in Mombasa. The airline specializes in direct flights between the coastal city and the best safari destinations in Kenya.")
fly540= Airline.create(name: "Fly540", image_url: "", description: "Fly540 is a low-cost domestic airline, connecting major cities and tourist destinations in Kenya. The airline operates some of the best and most affordable flights in Kenya.")
air_kenya = Airline.create(name: "AirKenya Airlines", image_url: "", description: "From its primary hub at Wilson Airport (WIL), AirKenya operates scheduled domestic flights within Kenya. Most of its journeys are to Kenya’s best tourist destinations.")
safarilink = Airline.create(name: "Safarilink Aviation", image_url: "", description: "Safarilink is based at Nairobi’s Wilson Airport (WIL) and provides regional and domestic flights. They have daily services to many destinations within Kenya.")

puts "creating users..."

alex = User.create(username: "Alex", password_digest: "a1234")
ciara = User.create(username: "Cara", password_digest: "a1234")
cain = User.create(username: "Cani", password_digest: "a1234")
jude = User.create(username: "Jude", password_digest: "a1234")
joe = User.create(username: "Joe", password_digest: "a1234")
viola = User.create(username: "Vila", password_digest: "a1234")
kent = User.create(username: "Kent", password_digest: "a1234")

puts "creating sample reviews..."

kq_reviews = Review.create(title: "Great", comment: "I met best of the best, believe me!", airline_id: kq.id, user_id: alex.id)
safarilink_reviews = Review.create(title: "Realy nice people", comment: "They have the best snacks I have ever tasted", airline_id: safarilink.id, user_id: viola.id)
mombasa_air_safari_reviews = Review.create(title: "Full of fun", comment: "I really enjoyed the flight", airline_id: mombasa_air_safari.id, user_id: joe.id)
mombasa_air_safari_reviews = Review.create(title: "Great time", comment: "I must say you were just great, overally!", airline_id: mombasa_air_safari.id, user_id: jude.id)
jambojet_reviews = Review.create(title: "would fly again", comment: "I really enjoyed the flight", airline_id: jambojet.id, user_id: cain.id)
air_kenya_reviews = Review.create(title: "Good Overall", comment: "I really enjoyed the flight", airline_id: air_kenya.id, user_id: alex.id)
jetways_reviews = Review.create(title: "Delayed flight", comment: "They are unconscious in keeping time", airline_id: jetways.id, user_id: alex.id)
jetways_reviews = Review.create(title: "Best services", comment: "I really had very remarkable moments", airline_id: jetways.id, user_id: cain.id)
fly540_reviews = Review.create(title: "Cosy and spacious", comment: "I had space to lean and fell asleep!", airline_id: fly540.id, user_id: ciara.id)
safarilink_reviews = Review.create(title: "Terrible", comment: "Many crying babies!", airline_id: safarilink.id, user_id: kent.id)
jetways_reviews = Review.create(title: "Can't wait to fly again", comment: "You are really dedicated", airline_id: jetways.id, user_id: viola.id)
fly540_reviews = Review.create(title: "incredible", comment: "It was my best interaction", airline_id: fly540.id, user_id: alex.id)
kq_reviews = Review.create(title: "terrible food", comment: "Their food are soggy. Its unacceptable if you ask me!", airline_id: kq.id, user_id: kent.id)
kq_reviews = Review.create(title: "Best flight ever!", comment: "There were nice attendants who offered best services", airline_id: kq.id, user_id: joe.id)

puts "Done seeding!"