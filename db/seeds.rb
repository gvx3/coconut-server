# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create [
    {username: "admin", password: "admin"}
]

StoreType.create [
    {name: "latest"},
    {name: "suggested"}
]

NewType.create [
    {name: "latest"},
    {name: "suggested"}
]

OurStoryType.create [
    {name: "home page"},
    {name: "details"}
]

Product.create [
    {title: "Coconut", description: "Longtext"}
]

Ingredient.create [
    {name: "pepper", product_id: "1"},
    {name: "sugar", product_id: "1"},
    {name: "chili", product_id: "1"},
    {name: "salt", product_id: "1"}
]

LandingType.create [
    {name: "home page"},
    {name: "store"},
    {name: "new"},
    {name: "our story"}
]

Landing.create [
    {title: "Title1", description: "13", landing_type_id: "1"},
    {title: "Title2", description: "12343", landing_type_id: "2"},
    {title: "Title3", description: "12213", landing_type_id: "3"},
    {title: "Title4", description: "1513", landing_type_id: "4"},
]

Contact.create [
    {
     address: "Address", phone: "3213231211",
     mail: "hello@example.com",
     facebook_url: "facebook_url.com",
     twitter_url: "twitter.com",
     line_url: "line.com",
     instagram_url: "instagram.com"
    }
]

Aromatic.create [
    {title: "Aromatic", description: "description113"}
]

Benefit.create [
    {name: "Alzheimer", aromatic_id: "2"},
    {name: "Reduce something", aromatic_id: "2"},
    {name: "Something something", aromatic_id: "2"},
]