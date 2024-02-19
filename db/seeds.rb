# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

puts "Cleaning Database..."
Castle.destroy_all
User.destroy_all
puts "Database cleaned..."

puts "Creating users..."
anna = User.create!(email: 'anna@lewagon.fr', password: 'anna123')
aaron = User.create!(email: 'aaron@lewagon.fr', password: 'aaron123')
puts "#{User.count} users created!"

puts 'Creating castles....'

file_corny = URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
# créer un array de pictures pour la show
manoir_corny = Castle.new(
  name: 'Manoir de Corny',
  category: 'Manoir',
  address: 'Paris',
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle",
  user: anna
  )
manoir_corny.photo.attach(io: file_corny, filename: 'manoir_corny.jpg')
manoir_corny.save!

file_princess = URI.open('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/ed/0c/7f/exterior.jpg?w=900&h=-1&s=1')
chateau_princess = Castle.new(
  name: 'Hôtel de la Princesse',
  category: 'Hôtel Particulier',
  address: 'Lyon',
  description: "Hôtel de prestige qui n'a rien à envier aux monuments royaux historiques.",
  user: anna)
chateau_princess.photo.attach(io: file_princess, filename: 'chateau_princess.jpg')
chateau_princess.save!

file_fortress = URI.open('https://images.unsplash.com/photo-1536095864675-3f4a97610218?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
forteresse_royale = Castle.new(
  name: 'Forteresse Royale',
  category: 'Forteresse',
  address: 'Bordeaux',
  description: "Forteresse réputée de la région, qui abrite en son sein une faune et flore protégées.",
  user: aaron)
forteresse_royale.photo.attach(io: file_fortress, filename: 'forteresse_royale.jpg')
forteresse_royale.save!

file_elysee = URI.open('https://images.unsplash.com/photo-1562333761-677354f49034?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
palais_elysee = Castle.new(
  name: "Palais de l'Élysée",
  category: 'Pavillon de chasse',
  address: 'Paris',
  description: "Contrairement à ce qu'on pourrait croire, rien n'est pris au sérieux en ces lieux.",
  user: aaron)
palais_elysee.photo.attach(io: file_elysee, filename: 'palais_elysee.jpg')
palais_elysee.save!

file_disney = URI.open('https://images.unsplash.com/photo-1597466599360-3b9775841aec?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
chateau_disney = Castle.new(
  name: 'Château de la Belle au Bois Dormant',
  category: 'Commanderie',
  address: 'Paris',
  description: "Château emblématique de Princesse Aurore, niché au coeur du parc Disney.",
  user: anna)
chateau_disney.photo.attach(io: file_disney, filename: 'chateau_disney.jpg')
chateau_disney.save!

file_agrabah = URI.open('https://franks-travelbox.com/wp-content/uploads/2017/11/indien-agra-der-pracc88chtige-palast-taj-mahal-aus-weissem-marmor-ist-das-wahrzeichen-indiens-und-eines-der-weltweit-am-besten-bekannten-bauwerke-des-landes-andrey-khrobostov-fotolia.jpg')
palais_agrabah = Castle.new(
  name: "Palais d'Agrabah",
  category: 'Palais',
  address: 'Chambord',
  description: "Palais digne des contes de mille et une nuits, plongez dans l'univers féérique et envoûtant d'Aladdin...",
  user: anna)
palais_agrabah.photo.attach(io: file_agrabah, filename: 'palais_agrabah.jpg')
palais_agrabah.save!

file_frodon = URI.open('https://images.unsplash.com/photo-1585572395221-e5c088aff518?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
demeure_frodon = Castle.new(
  name: 'Demeure de Frodon',
  category: 'Demeure seigneuriale',
  address: 'Chantilly',
  description: "Le Château Frodon se trouve dans un domaine de plus de 20ha.",
  user: anna)
demeure_frodon.photo.attach(io: file_frodon, filename: 'demeure_frodon.jpg')
demeure_frodon.save!

file_hante = URI.open('https://images.unsplash.com/photo-1602769921397-e870d926e1e8?q=80&w=2065&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
manoir_hante = Castle.new(
  name: 'Manoir Hanté',
  category: 'Manoir',
  address: 'Bordeaux',
  description: "La légende dit que la plus grande sorcière de Salem se cachait dans ce manoir... Oserez-vous séjourner dans ce lieu et percer ses secrets?",
  user: aaron)
manoir_hante.photo.attach(io: file_hante, filename: 'manoir_hante.jpg')
manoir_hante.save!

  puts "#{Castle.count} castles created!"
