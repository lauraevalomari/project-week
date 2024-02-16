# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning Database..."
User.destroy_all
Castle.destroy_all
puts "Database cleaned..."

puts "Creating users..."
anna = User.create!(email: 'anna@lewagon.fr', password: 'anna123')
john = User.create!(email: 'john@lewagon.fr', password: 'john123')
puts "#{User.count} users created!"

puts 'Creating castles....'

Castle.create!(
  name: 'Manoir de Corny',
  category: 'Manoir',
  address: 'Paris',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: anna
  )

Castle.create!(
  name: 'Hôtel de la Princesse',
  category: 'Hôtel Particulier',
  address: 'Paris',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: anna)

Castle.create!(
  name: 'Forteresse Royale',
  category: 'Forteresse',
  address: 'Bordeaux',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: john)

Castle.create!(
  name: "Palais de l'Élysée",
  category: 'Pavillon de chasse',
  address: 'Paris',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: john)

Castle.create!(
  name: 'Château de la Belle au Bois Dormant',
  category: 'Commanderie',
  address: 'Lyon',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: anna)

Castle.create!(
  name: "Palais d'Agrabah",
  category: 'Palais',
  address: 'Chambord',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: anna)

Castle.create!(
  name: 'Demeure de Frodon',
  category: 'Demeure seigneuriale',
  address: 'Chantilly',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: anna)

Castle.create!(
  name: 'Manoir Hanté',
  category: 'Manoir',
  address: 'Bordeaux',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: john)

  puts "#{Castle.count} castles created!"
