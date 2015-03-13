# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#require 'open-uri'
#doc = Nokogiri::HTML(open("http://www.thehindu.com/news/"))
#Marshal.dump doc # this should not be used
#puts 'test'
#doc.css('.wikitable')[0].css("tr")[2,14].each do |row|
#	columns = row.css("td")

#	puts columns[4].text()
	#Govgen.create(name: columns[1].text(), started: columns[3].text(), ended: columns[4].text())

#end

#doc.css('.headlines').css("a").each do |row|
	#puts row.css('href').text()
	#puts columns[4].text()
	#User.create(name: 'Shiva', age: 31, sex: 'Male', email: 'shiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: true)
	#Govgen.create(name: columns[1].text(), started: columns[3].text(), ended: columns[4].text())
#end






user1 = User.create(name: 'Shiva', age: 31, sex: 'Male', email: 'shiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: true)
user2 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: 'shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user3 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: 'shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user4 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: 'kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user5 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: 'dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user6 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: 'shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user7 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: 'shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user8 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: 'kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user9 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: 'dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user10 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: '1shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user11 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: '1shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user12 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: '1kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user13 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: '1dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user14 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: '3shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user15 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: '3shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user16 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: '3kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user17 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: '3dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user18 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: '2shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user19 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: '2shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user20 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: '2kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user21 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: '2dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user22 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: '4shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user23 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: '5shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user24 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: '6kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user25 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: '7dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user25 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: '8shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user26 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: '9shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user27 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: '99kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user28 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: '99dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user29 = User.create(name: 'Shivak', age: 31, sex: 'Male', email: '12shivak@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user30 = User.create(name: 'Shivakd', age: 31, sex: 'Male', email: '13shivakd@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user31 = User.create(name: 'Kd Shiva', age: 31, sex: 'Male', email: '14kdshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)
user32 = User.create(name: 'D Shiva', age: 31, sex: 'Male', email: '15dshiva@gmail.com', password: 'Shiva', password_confirmation: 'Shiva', admin: false)


