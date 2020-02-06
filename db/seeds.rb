# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

# Product.create(name: '', description: '', price: )
# Herbs


#Cleaning/Hygiene
 Product.create(name: 'Lavender Soap', description: 'organic lavender scented soap', price: 7.00, category:'Cleaning/Hygiene')
 Product.create(name: 'Charcoal Soap', description: 'organic deep-cleaning charcoal soap', price: 7.00, category:'Cleaning/Hygiene')
 Product.create(name: 'Bamboo Toothbrush', description: 'made of bamboo, easily to recycle', price: 5.00, category:'Cleaning/Hygiene')
 Product.create(name: 'Unscented Deodorant', description: 'organic, unscented deodorant stick', price: 4.00, category:'Cleaning/Hygiene')

#  Wellness


# Clothes/Acessories
Product.create(name: 'Hemp Tote Bag', description: '', price: 11.00, category:'Clothes/Accessories')


puts 'Seeded'
