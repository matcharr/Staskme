# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mission.destroy_all
Category.destroy_all

10.times do
   Mission.create(title:Faker::Company.industry, description:Faker::Movie.quote, start_date:"2021-01-01")
end

Category.create(title: "Courses, livraison", image: "https://images.pexels.com/photos/1005638/pexels-photo-1005638.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
Category.create(title: "Réception marchandises ou personnes", image: "https://images.unsplash.com/photo-1516733968668-dbdce39c4651?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
Category.create(title: "Ménage", image: "https://images.unsplash.com/photo-1563453392212-326f5e854473?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
Category.create(title: "Préparation de dîner", image: "https://images.unsplash.com/photo-1556911220-bff31c812dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
Category.create(title: "Garde d'enfants urgente", image: "https://images.unsplash.com/photo-1533499966477-9333968a4e28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")