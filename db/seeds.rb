# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.delete_all

Item.create(name: 'Drown (Prod. Noah Cuz)', price: 25, videoid: 'uZC7Fm6OtJ0', sold: false, category: 'hiphop')
Item.create(name: 'Headshot (Prod. TOMMY FRANCO)', price: 100, videoid: 'awDHDurBevk', sold: false, category: 'hiphop')
Item.create(name: 'Mood (Prod. PK)', price: 25, videoid: 'Wz1Le8WSPGI', sold: false, category: 'hiphop')
Item.create(name: 'Space Coupe (Prod. Kiwi)', price: 75, videoid: 'fp1_DCBJfBw', sold: false, category: 'hiphop')
Item.create(name: 'Eyes Closed (Prod. Azilio)', price: 50, videoid: '7Guu0w9Lpbc', sold: false, category: 'hiphop')
Item.create(name: 'DRUM (prod. ESKRY)', price: 10, videoid: 'aOT2PRchao8', sold: false, category: 'hiphop')
Item.create(name: 'Checks (Prod. DAK)', price: 50, videoid: '5WU4P8zz_e0', sold: false, category: 'hiphop')
Item.create(name: 'Point (Prod. Klaxy x Fakeеss)', price: 25, videoid: '5ae7yFhdrOI', sold: false, category: 'hiphop')
Item.create(name: 'influence (Prod. Satnero)', price: 20, videoid: 'n8cxo__DEXw', sold: false, category: 'hiphop')
Item.create(name: 'Stay Running Away (prod. woodpecker)', price: 100, videoid: 'K2xts6AlJCE', sold: false, category: 'hiphop')