puts "Seeding..."

Actor.delete_all
Character.delete_all
Network.delete_all
Show.delete_all

david = Actor.create(first_name: "David", last_name: "Schwimmer")
joe = Actor.create(first_name: "Joe", last_name: "LeBlanc")

nbc = Network.create(call_letters: "NBC", channel: 4)
abc = Network.create(call_letters: "ABC", channel: 2)

friends = Show.create(name: "Friends", day: "Thursday", season: "1", genre: "comedy", network_id: "#{nbc.id}")
its_joey = Show.create(name: "Its Joey", day: "Wednesday", season: "1", genre: "comedy", network_id: "#{nbc.id}")
band_of_brothers = Show.create(name: "Band of Brothers", day: "Tuesday", season: "1", genre: "drama", network_id: "#{abc.id}")

ross = Character.create(name: "Ross", catchphrase: "Pivot!", actor_id: "#{david.id}", show_id: "#{friends.id}")
joey = Character.create(name: "Joey", catchphrase: "How you doin?", actor_id: "#{joe.id}", show_id: "#{friends.id}")
cpt_sobel = Character.create(name: "Cpt Sobel", catchphrase: "Curahee!", actor_id: "#{david.id}", show_id: "#{band_of_brothers.id}")

puts "Done seeding."