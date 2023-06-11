# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database"
Band.destroy_all
User.destroy_all
Checkout.destroy_all

puts "Creating Users"
user1 = User.new(email: "test@test.com", password: "123456", first_name: "Max", last_name: "Dronov")
user1.save

user2 = User.new(email: "test2@test.com", password: "123456", first_name: "Doyle", last_name: "Farrel")
user2.save

user3 = User.new(email: "test3@test.com", password: "123456", first_name: "Jessica", last_name: "Smith")
user3.save


user4 = User.new(email: "test4@test.com", password: "123456", first_name: "Lamia", last_name: "Khaznadar")
user4.save


# # Metallica
# metallicaphoto1 = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686148706/Tuite_Metallica_ChaseCenterSF_121921-82_sja0ab.webp")
# metallicaphoto2 = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686148704/Metallica_ck9p7j.webp")
# metallicaphoto3 = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686148703/3250_i8sajj.webp")
# metallica = Band.new(
#   name: "Metallica Reborn",
#   genre: "Trash Metal",
#   members_count: 4,
#   description: "Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist and
#    guitarist James Hetfield and drummer Lars Ulrich, and has been based in San Francisco for most of its career.",
#   rate_fee: 10_000
# )
# metallica.photos.attach(io: metallicaphoto1, filename: "metallica1.png", content_type: "image/png")
# metallica.photos.attach(io: metallicaphoto2, filename: "metallica2.png", content_type: "image/png")
# metallica.photos.attach(io: metallicaphoto3, filename: "metallica3.png", content_type: "image/png")
# metallica.user = user1
# metallica.save

# Imagine Dragons
 idphoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686161916/imagined.jpg")
  idphoto2 = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686149633/imagine-dragons-band-e1597672423191_oogscr.jpg")
 idband = Band.new(
   name: "Imagine Dragons",
   genre: "Pop Rock",
   members_count: 4,
   description: "Imagine Dragons is an American pop rock band based in Las Vegas, Nevada, consisting of lead singer
    Dan Reynolds, guitarist Wayne Sermon, bassist Ben McKee and drummer Daniel Platzman.[1] The band first gained
    exposure with the release of their single 'It's Time', followed by their award-winning debut studio album Night
     Visions (2012), which resulted in the chart-topping singles 'Radioactive' and 'Demons'. Rolling Stone named
      'Radioactive', which held the record for most weeks charted on the Billboard Hot 100, the 'biggest rock hit
       of the year'.",
   rate_fee: 12_000
 )
 idband.photos.attach(io: idphoto, filename: "imaginedragons1.png", content_type: "image/png")
  idband.photos.attach(io: idphoto2, filename: "imaginedragons2.png", content_type: "image/png")
 idband.user = user1
 idband.save

 #Skrillex
skrillexphoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686149964/From_First_To_Last_-_Emo_Nite_2_-_PH_Carl_Pocket__cropped_nlgoko.jpg")
skrillex = Band.new(
  name: "Skrillex",
  genre: "Dubstep",
  members_count: 1,
  description: "Sonny John Moore (born January 15, 1988),[4] known professionally as Skrillex, is an American DJ and
   record producer. Growing up in Northeast Los Angeles and Northern California, he joined the post-hardcore band From
    First to Last as the lead singer in 2004, and recorded two studio albums with the band (Dear Diary, My Teen Angst
    Has a Bodycount [2004] and Heroine [2006]) before leaving to pursue a solo career in 2007.",
  rate_fee: 8_000
)
skrillex.photos.attach(io: skrillexphoto, filename: "skrillex1.png", content_type: "image/png")
skrillex.user = user1
skrillex.save

# Slipknot
slipphoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686151282/unnamed_jnduti.jpg")
slipknot = Band.new(
  name: "Slipknot",
  genre: "Nu Metal",
  members_count: 7,
  description: "Slipknot is an American heavy metal band formed in Des Moines, Iowa, in 1995 by percussionist
   Shawn Crahan, drummer Joey Jordison and bassist Paul Gray. After several lineup changes in its early years,
    the band settled on nine members for more than a decade: Crahan, Jordison, Gray, Craig Jones, Mick Thomson,
     Corey Taylor, Sid Wilson, Chris Fehn, and Jim Root.",
  rate_fee: 15_000
)
slipknot.photos.attach(io: slipphoto, filename: "slipknot1.png", content_type: "image/png")
slipknot.user = user2
slipknot.save

# Weeknd
weekndphoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686151545/The_Weeknd_Portrait_by_Brian_Ziff_bhdwdo.jpg")
weeknd = Band.new(
  name: "The Weeknd",
  genre: "Pop, Hip-Hop",
  members_count: 1,
  description: "Abel Makkonen Tesfaye (Amharic: አበል መኮነን ተስፋዬ; born February 16, 1990), known professionally as
   the Weeknd, is a Canadian singer-songwriter and actor. A prominent figure in contemporary popular music,
    he is noted for his unconventional music production, artistic reinventions, and his signature use of the falsetto
    register.",
  rate_fee: 16_000
)
weeknd.photos.attach(io: weekndphoto, filename: "weeknd1.png", content_type: "image/png")
weeknd.user = user2
weeknd.save

# TheRockers
rockersphoto1 = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686506692/rock_band1_idnnrj.jpg")
rockersphoto2 = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686506692/rock_band_2_qbd0zy.jpg")
rockers = Band.new(
  name: "The Rockers",
  genre: "Rock",
  members_count: 4,
  description: "A high-energy rock band.",
  rate_fee: 100
)
rockers.photos.attach(io: rockersphoto1, filename: "rockers1.png", content_type: "image/png")
rockers.photos.attach(io: rockersphoto2, filename: "rockers2.png", content_type: "image/png")
rockers.user = user3
rockers.save

# TheBluesMasters
bluesmastersphoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686506793/blues_band_xsuyzl.webp")
bluesmasters = Band.new(
  name: "The Blues Masters",
  genre: "Blues",
  members_count: 3,
  description: "A talented blues band.",
  rate_fee: 80
)
bluesmasters.photos.attach(io: bluesmastersphoto, filename: "bluesmasters1.png", content_type: "image/png")
bluesmasters.user = user3
bluesmasters.save

# TheJazzCats
jazzcatsphoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686506829/jazz_band_ljtepk.jpg")
jazzcats = Band.new(
  name: "The Jazz Cats",
  genre: "Jazz",
  members_count: 5,
  description: "A cool jazz ensemble.",
  rate_fee: 120
)
jazzcats.photos.attach(io: jazzcatsphoto, filename: "jazzcats1.png", content_type: "image/png")
jazzcats.user = user4
jazzcats.save

# TheFunkyGroove
funkygroovephoto = URI.open("https://res.cloudinary.com/dwouepnpu/image/upload/v1686506866/funk_band_bmhybq.webp")
funkygroove = Band.new(
  name: "The Funky Groove",
  genre: "Funk",
  members_count: 6,
  description: "A funky bond with a groovy sound.",
  rate_fee: 150
)
funkygroove.photos.attach(io: funkygroovephoto, filename: "funkygroove1.png", content_type: "image/png")
funkygroove.user = user4
funkygroove.save

puts "All done"
