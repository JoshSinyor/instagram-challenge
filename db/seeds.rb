# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

require 'csv'

def load_file(file)
  @file = CSV.read(file)
end

# Users

load_file('db/users_seed.csv')

@file.each do |user|
  User.create(({:email => user[0], :password => user[1], :password_confirmation => user[1], :first_name => user[2], :last_name => user[3], :username => user[4], :pfp_url => user[5]}))
end

# Posts

# Comments
