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
Booking.destroy_all
Castle.destroy_all
User.destroy_all
puts "Database cleaned..."

puts "Creating users..."
anna = User.create!(email: 'anna@lewagon.fr', password: 'anna123')
aaron = User.create!(email: 'aaron@lewagon.fr', password: 'aaron123')
puts "#{User.count} users created!"

puts 'Creating castles....'

# créer un array de pictures pour la show
file_corny = URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
pictures_corny = [
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
manoir_corny = Castle.new(
  name: 'Manoir de Corny',
  category: 'Manoir',
  address: 'Paris',
  price_per_day: 2850,
  special_feature: "Chambre Royale",
  description: "Magnifique manoir où vous serez immergés dans la vie du XVIIe siècle. Le mur d'enceinte y compris la porte avec pigeonnier date du (xvie siècle) atteste de l'appartenance du maître des lieux à la noblesse. Habitat des seigneurs de Corny, ce manoir a appartenu à la famille de Derval dont le dernier représentant (Hyacinthe) s'est distingué à la bataille de Quiberon ; ses ossements se trouvent à la chartreuse d'Auray.

  Ses remparts, ses tours d'angle à meurtrières et son colombier, qui de loin à l'apparence d'un donjon étaient propres à décourager des pillards venus de la mer. Il pouvait d'ailleurs offrir, en cas d'alerte, un asile temporaire aux villageois1. La commune est maintenant propriétaire du manoir qui a servi de centre aéré pour les enfants puis de club du troisième âge, elle loue ses salles aux particuliers.",
  user: anna
  )
manoir_corny.photo.attach(io: file_corny, filename: 'manoir_corny.jpg')
pictures_corny.each do |picture|
    manoir_corny.pictures.attach(io: picture, filename: 'pictures_manoir_corny.jpg')
end
manoir_corny.save!

file_princess = URI.open('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/ed/0c/7f/exterior.jpg?w=900&h=-1&s=1')
pictures_princess = [
  URI.open('https://images.nightcafe.studio/jobs/g2MLz3RROOrtZ5IXNyv3/g2MLz3RROOrtZ5IXNyv3--1--86wqi.jpg?tr=w-1600,c-at_max'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
chateau_princess = Castle.new(
  name: 'Hôtel de la Princesse',
  category: 'Hôtel Particulier',
  address: 'Lyon',
  price_per_day: 4250,
  special_feature: "Dîner gastronomique",
  description: "Hôtel de prestige qui n'a rien à envier aux monuments royaux historiques. En 1949, Greta Garbo débarque de Hollywood. Maurice Chevalier arrive de Cannes. L'Aga Khan y réserve un appartement d'honneur.

  En juillet 1956, on annonce Gilbert Bécaud. Deux ans plus tard, François Mitterrand, jeune ministre, signe le livre d'or.
  Dans la nuit du 12 au 13 août 1958, les deux derniers étages et la toiture sont détruits par un incendie.

  En 1970, la Société des Eaux Minérales d’Évian, propriétaire de l'hôtel Royal, devient une filiale du groupe Danone.
  En 1982, le spa de l'hôtel Royal est inauguré.

  En 2003, année de la présidence française, Évian reçoit le sommet du G8 ; les chefs de délégation sont accueillis par Jacques Chirac sur la terrasse de l'hôtel Royal.
  En 2013, des travaux de restauration sont entrepris. Les phases de réalisation permettent une ouverture partielle en 2014, puis complète en 2015.",
  user: anna)
chateau_princess.photo.attach(io: file_princess, filename: 'chateau_princess.jpg')
pictures_princess.each do |picture|
  chateau_princess.pictures.attach(io: picture, filename: 'pictures_chateau_princess.jpg')
end
chateau_princess.save!

file_fortress = URI.open('https://images.unsplash.com/photo-1536095864675-3f4a97610218?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
pictures_fortress = [
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
forteresse_royale = Castle.new(
  name: 'Forteresse Royale',
  category: 'Forteresse',
  address: 'Bordeaux',
  price_per_day: 3599,
  special_feature: "Visite de château",
  description: "Forteresse réputée de la région, qui abrite en son sein une faune et flore protégées. La forteresse est construite sur un éperon rocheux dominant la Vienne, à une quinzaine de kilomètres de son confluent avec la Loire, et la ville de Chinon, dans le département français d'Indre-et-Loire. Cette position stratégique lui permettait de s’assurer le contrôle du passage sur la Vienne, affluent de la Loire. Le bourg s’est développé en contrebas, sur la rive.

  Petit à petit, l’espace a été structuré en trois parties distinctes, que les rois ont appelé leurs « trois châteaux », et qui figurent de manière stylisée sous la forme de trois tours sur les armoiries de la ville.

  Ainsi, d’ouest en est, l’éperon est barré par une série de fossés — des douves sèches — qui séparent les trois châteaux : le fort du Coudray, le château du Milieu, et le fort Saint-Georges. Chacun des trois châteaux possède une enceinte indépendante.
  C’est dans le château principal, le château du Milieu, que se développent les principaux logis et le prieuré Saint-Melaine. La forteresse, qui s'étire sur 300 m de long, avait notamment pour fonction de contrôler la voie allant de Tours au Loudunais qui franchit la Vienne à cet endroit. L'agglomération s'est rangée au pied de la falaise, autour du pont",
  user: aaron)
forteresse_royale.photo.attach(io: file_fortress, filename: 'forteresse_royale.jpg')
pictures_fortress.each do |picture|
  forteresse_royale.pictures.attach(io: picture, filename: 'pictures_forteresse_royale.jpg')
end
forteresse_royale.save!

file_elysee = URI.open('https://images.unsplash.com/photo-1562333761-677354f49034?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
pictures_elysee = [
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
palais_elysee = Castle.new(
  name: "Palais de l'Élysée",
  category: 'Pavillon de chasse',
  address: 'Paris',
  price_per_day: 12400,
  special_feature: "Verre de bienvenue",
  description: "Contrairement à ce qu'on pourrait croire, rien n'est pris au sérieux en ces lieux. Le palais de l'Élysée, dit l'Élysée et anciennement l'Élysée-Bourbon, est un ancien hôtel particulier parisien, situé au no 55 de la rue du Faubourg-Saint-Honoré, dans le 8e arrondissement de Paris. Il est le siège de la présidence de la République française et la résidence officielle du chef de l'État depuis la IIe République. Son actuel résident est Emmanuel Macron, président de la République française depuis le 14 mai 2017.

  Les médias utilisent « l'Élysée » par métonymie pour désigner les services de la présidence de la République française. L'édifice est aussi parfois surnommé « le Château » par la presse.

  Construit par l'architecte Armand-Claude Mollet en 1720 pour Louis-Henri de La Tour d'Auvergne, comte d'Évreux, le palais de l'Élysée a une histoire illustre : il est offert par Louis XV à sa favorite, la marquise de Pompadour, en 1753, puis devient le palais princier de Joachim Murat, beau-frère de Napoléon Ier. Ce dernier en fait en 1805 sa résidence impériale. Son neveu, Louis-Napoléon Bonaparte, premier président de la République française, y habite également à partir de 1848.",
  user: aaron)
palais_elysee.photo.attach(io: file_elysee, filename: 'palais_elysee.jpg')
pictures_elysee.each do |picture|
  palais_elysee.pictures.attach(io: picture, filename: 'pictures_palais_elysee.jpg')
end
palais_elysee.save!

file_disney = URI.open('https://images.unsplash.com/photo-1597466599360-3b9775841aec?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
pictures_disney = [
  URI.open('https://images.nightcafe.studio/jobs/hzY4jBomeNyOrGsEevsE/hzY4jBomeNyOrGsEevsE--1--s9jmp.jpg?tr=w-1600,c-at_max'),
  URI.open('https://images.nightcafe.studio/jobs/cDh6nHLVIb9cV17IqoTq/cDh6nHLVIb9cV17IqoTq--1--wyy6z.jpg?tr=w-1600,c-at_max'),
  URI.open('https://images.nightcafe.studio/jobs/g2MLz3RROOrtZ5IXNyv3/g2MLz3RROOrtZ5IXNyv3--1--86wqi.jpg?tr=w-1600,c-at_max'),
  URI.open('https://images.nightcafe.studio/jobs/eFxl5pKPnPTHgLOgqQ40/eFxl5pKPnPTHgLOgqQ40--1--m8ir8.jpg?tr=w-1600,c-at_max'),
  URI.open('https://images.nightcafe.studio/jobs/DaW0nRrQQ2XeyfAcz3wg/DaW0nRrQQ2XeyfAcz3wg--1--ofj38.jpg?tr=w-1600,c-at_max'),
  URI.open('https://images.nightcafe.studio/jobs/ybp8exeJDWv4yD8GbwhF/ybp8exeJDWv4yD8GbwhF--1--ts2qf.jpg?tr=w-1600,c-at_max')
]
chateau_disney = Castle.new(
  name: 'Château de la Belle',
  category: 'Commanderie',
  address: 'Paris',
  price_per_day: 5350,
  special_feature: "Arrivée en Carrosse",
  description: "Château emblématique de Princesse Aurore, niché au coeur du parc Disney. Le Château de la Belle au bois dormant (en anglais, Sleeping Beauty Castle) est le château de contes de fées occupant la place centrale de trois parcs à thèmes Disney : Disneyland (Anaheim, États-Unis), Parc Disneyland (Marne-la-Vallée, France) et Hong Kong Disneyland (Hong Kong, Chine). Il est situé dans la zone Fantasyland.

  Le château du premier Disneyland est devenu une véritable icône de l'entreprise, apparaissant sur le logo de Walt Disney Pictures, Buena Vista Motion Pictures Group, Buena Vista Music Group, Walt Disney Television et Buena Vista International. En 2007, il est remplacé par un homologue, le Château de Cendrillon, dans l'introduction des films de la Walt Disney Pictures.",
  user: anna)
chateau_disney.photo.attach(io: file_disney, filename: 'chateau_disney.jpg')
pictures_disney.each do |picture|
  chateau_disney.pictures.attach(io: picture, filename: 'pictures_chateau_disney.jpg')
end
chateau_disney.save!

file_agrabah = URI.open('https://franks-travelbox.com/wp-content/uploads/2017/11/indien-agra-der-pracc88chtige-palast-taj-mahal-aus-weissem-marmor-ist-das-wahrzeichen-indiens-und-eines-der-weltweit-am-besten-bekannten-bauwerke-des-landes-andrey-khrobostov-fotolia.jpg')
pictures_agrabah = [
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
palais_agrabah = Castle.new(
  name: "Palais d'Agrabah",
  category: 'Palais',
  address: 'Chambord',
  price_per_day: 13800,
  special_feature: "Chambre Royale",
  description: "Palais digne des contes de mille et une nuits. Agrabah (أغربه) est un royaume et une cité apparue pour la première fois dans Aladdin, en 1992. Ce lieu se situerait dans les déserts du Moyen-Orient, près du Jourdain, un fleuve. Le royaume est dirigé par le Sultan et son vizir Jafar, avant que ce dernier ne soit exclu. Le Sultan et sa fille Jasmine habitent au Palais. Le royaume est protégé par la Garde Royale. C'est également le lieu de résidence d'Aladdin, Abu, du Génie, du Tapis Volant ou encore de Rajah, le tigre de Jasmine. Le lieu est inspiré du Taj Mahal, un palais situé à Agra, en Inde, et de la ville de Bagdad, en Irak.

  Agrabah apparaît également dans le film en prises de vues réelles sorti en 2019, Aladdin.",
  user: anna)
palais_agrabah.photo.attach(io: file_agrabah, filename: 'palais_agrabah.jpg')
pictures_agrabah.each do |picture|
  palais_agrabah.pictures.attach(io: picture, filename: 'pictures_palais_agrabah.jpg')
end
palais_agrabah.save!

file_frodon = URI.open('https://images.unsplash.com/photo-1585572395221-e5c088aff518?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
pictures_frodon = [
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
demeure_frodon = Castle.new(
  name: 'Demeure de Frodon',
  category: 'Demeure seigneuriale',
  address: 'Chantilly',
  price_per_day: 1900,
  special_feature: "Visite de château",
  description: "Le Château Frodon se trouve dans un domaine de plus de 20ha. L'usage de fortifications pour les demeures seigneuriales s'est maintenu jusqu'au xve siècle, voire plus tard. Mais avec le retour de la paix à la fin de la guerre de Cent Ans et les progrès de l'artillerie, la préoccupation n'est plus à la protection. Les rois de France construisent des châteaux dans le Val de Loire, et de nombreux aristocrates érigent des demeures ouvertes sur la campagne environnante. Un souci particulier est désormais accordé au confort.

  Il existe aujourd'hui plus de 300 châteaux de la Loire. Par la suite, avec le déplacement de la cour en Île-de-France, c'est dans cette région et dans la province historique de la Champagne que fut érigée la plupart des châteaux seigneuriaux. C'est ainsi que furent bâtis les châteaux d'Écouen, de Dampierre ou de Vaux-le-Vicomte.",
  user: anna)
demeure_frodon.photo.attach(io: file_frodon, filename: 'demeure_frodon.jpg')
pictures_frodon.each do |picture|
  demeure_frodon.pictures.attach(io: picture, filename: 'pictures_demeure_frodon.jpg')
end
demeure_frodon.save!

file_hante = URI.open('https://images.unsplash.com/photo-1602769921397-e870d926e1e8?q=80&w=2065&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
pictures_hante = [
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg'),
  URI.open('https://www.adressesexclusives.com/wp-content/uploads/2020/06/Manoir_exterieur.jpg')
]
manoir_hante = Castle.new(
  name: 'Manoir Hanté',
  category: 'Manoir',
  address: 'Bordeaux',
  price_per_day: 3900,
  special_feature: "Manoir Hanté",
  description: "La légende dit que la plus grande sorcière de Salem se cachait dans ce manoir... Oserez-vous séjourner dans ce lieu et percer ses secrets? Gabbie, une mère célibataire, décide de démarrer une nouvelle vie à La Nouvelle-Orléans avec son fils de neuf ans, Travis.

  Elle trouve un manoir au prix étrangement abordable, néanmoins, de nombreux phénomènes étranges s'y produisent. Gabbie fait alors appel à Kent, un prêtre. Ce dernier décide de réunir une équipe composée de Ben Matthias, un expert en paranormal ; Bruce, un professeur d'histoire ; et Harriet, une médium du Vieux carré français.",
  user: aaron)
manoir_hante.photo.attach(io: file_hante, filename: 'manoir_hante.jpg')
pictures_hante.each do |picture|
  manoir_hante.pictures.attach(io: picture, filename: 'pictures_manoir_hante.jpg')
end
manoir_hante.save!

  puts "#{Castle.count} castles created!"
