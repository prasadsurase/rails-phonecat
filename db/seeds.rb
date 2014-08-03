# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

file = File.read('data/phones.json')
data = JSON.parse(file)
Phone.destroy_all
data.each do |record|
  puts '-------------------------------------------------------'
  puts '-------------------------------------------------------'
  puts record
  phone = File.read("data/#{record['id']}.json")
  phone = JSON.parse(phone)
  puts 'phone----------------------'
  puts phone

  Phone.create!(
    name: record['name'], 
    snippet: record['snippet'],
    features: phone['additionalFeatures'].split('; ').join(', '),
    os: phone['android']['os'].split(' ').first,
    os_version: phone['android']['os'].split(' ').last.to_f
  )
end
