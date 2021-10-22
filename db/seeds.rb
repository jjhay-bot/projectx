# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Initial Setup
if User.count == 0

  super_admin = User.new(role: 'super_admin', email: 'super_admin@projectx.com', first_name: 'Bruce', last_name: 'Wayne', password: 'P@$$W0rd', password_confirmation: "P@$$W0rd", created_at: DateTime.now, updated_at: DateTime.now)
  super_admin.save!
  puts "Super Admin account has been created"

  admin       = User.new(role: 'admin', email: 'admin@projectx.com', first_name: 'Clark', last_name: 'Kent', password: 'P@$$W0rd', password_confirmation: "P@$$W0rd", created_at: DateTime.now, updated_at: DateTime.now)
  admin.save!
  puts "Admin account has been created"

  member      = User.new(role: 'member', email: 'member@projectx.com', first_name: 'Diana', last_name: 'Prince', password: 'P@$$W0rd', password_confirmation: "P@$$W0rd", created_at: DateTime.now, updated_at: DateTime.now)
  member.save!
  puts "Member account has been created"

end