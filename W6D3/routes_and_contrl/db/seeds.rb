User.destroy_all
ArtworkShare.destroy_all
Artwork.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
user2 = User.create!(username: "furry_walker")
user3 = User.create!(username: "big_daddy")
user4 = User.create!(username: "samurai_jasperina")
user5 = User.create!(username: "peedro_sequoia")

#artworks
artwork1 = Artwork.create!(title: "Mona Lisa", image_url: "www.monalisa.com", artist_id: user5.id)
artwork2 = Artwork.create!(title: "Fart painting", image_url: "www.fartpainting.com", artist_id: user4.id)
artwork3 = Artwork.create!(title: "birth of Aphrodite", image_url: "www.birthofaphrodite.com", artist_id: user2.id)

#artwork_shares
artwork_share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user4.id)
artwork_share2 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user5.id)
artwork_share1 = ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user3.id)





