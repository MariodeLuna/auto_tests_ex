# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all

user = User.create(email:"test@test.com", password:"password", role: 1)


100.times do |x| 
	Product.create(name: "Product: #{x}", description: "Descripcion del producto: #{x}", price: 15)
end