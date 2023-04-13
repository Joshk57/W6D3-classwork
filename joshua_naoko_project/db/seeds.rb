# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#   users = User.create!([{ username: "Joshua" }, { username: "Kyle" }, { username: "Ayce" }, { username: "Naoko" }, { username: "Kin" }])

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

joshua = User.create!({ username: "Joshua" })
kyle = User.create!({ username: "Kyle" })
ayce = User.create!({ username: "Ayce" })
naoko = User.create!({ username: "Naoko" })
kin = User.create!({ username: "Kin" })


the_starry_night = Artwork.create!({ title: "The Starry Night", image_url: "https://artsandculture.google.com/asset/the-starry-night/bgEuwDxel93-Pg?utm_source=google&utm_medium=kp&hl=ja&avm=2", artist_id: joshua.id } )
three_parts_face = Artwork.create!({ title: "Three Parts Face", image_url: "https://secure.img1-cg.wfcdn.com/im/78931949/resize-h445%5Ecompr-r85/2077/207758749/Three+Parts+Face+by+Oliver+Gal+-+Graphic+Art+on+Canvas.jpg", artist_id: ayce.id } )
mona_lisa = Artwork.create!({ title: "Mona Lisa", image_url: "https://cdn.britannica.com/24/189624-050-F3C5BAA9/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg", artist_id: kyle.id } )
last_supper = Artwork.create!({ title: "Last Supper", image_url: "https://cdn.britannica.com/04/95904-050-7EB39FC8/Last-Supper-wall-painting-restoration-Leonardo-da-1999.jpg?w=600&q=60", artist_id: kyle.id } )
the_scream = Artwork.create!({ title: "The Scream", image_url: "https://i.etsystatic.com/11055184/r/il/b454fd/3997834192/il_794xN.3997834192_md31.jpg", artist_id: kin.id } )

artwork_share1 = ArtworkShare.create!({ viewer_id: joshua.id , artwork_id: the_starry_night.id })
artwork_share2 = ArtworkShare.create!({ viewer_id: joshua.id , artwork_id: mona_lisa.id })
artwork_share3 = ArtworkShare.create!({ viewer_id: kyle.id , artwork_id: the_starry_night.id })
artwork_share4 = ArtworkShare.create!({ viewer_id: ayce.id , artwork_id: last_supper.id })
artwork_share5 = ArtworkShare.create!({ viewer_id: kin.id , artwork_id: last_supper.id })
artwork_share6 = ArtworkShare.create!({ viewer_id: kyle.id , artwork_id: the_scream.id })
artwork_share7 = ArtworkShare.create!({ viewer_id: kin.id , artwork_id: three_parts_face.id })