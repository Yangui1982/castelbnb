# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Castle.destroy_all
User.destroy_all

admin = User.create!(
  email: 'admin@admin.com',
  password: 'azerty'
)

user1 = User.create!(
  email: 'marcel.patulacci@gmail.com',
  password: 'azerty'
)

4.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
  user.save!
end

Castle.create!(name: "Château de Langeais",
               description: "Une façade de château fort (pont levis, tours, mâchicoulis…),
               mais côté jardin, une résidence marquée par le style Renaissance !
               Dans ce château situé à 200 mètres de la Loire, le mariage entre Charles VIII et Anne de Bretagne scella
               le rattachement de la Bretagne au royaume de France. Richement meublé !",
               address: "Place Pierre de Brosse, 37130 Langeais",
               price: 1500,
               user: user1)

Castle.create!(name: "Château d’Azay-le-Rideau",
               description: "Visite d’un chef d’oeuvre de la première Renaissance française,
               se reflétant dans un miroir d’eau alimenté par l’Indre.
               Erigé par Gilles Berthelot, trésorier de France, le château sera ensuite confisqué par François 1er,
               puis offert à Antoine Raffin, capitaine de ses gardes du corps !
               Sur place, on apprécie tout particulièrement le joli parc à l’anglaise et ses arbres majestueux.",
               address: "Rue de Pineau, 37190 Azay-le-Rideau",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Forteresse royale de Chinon",
               description: "Henri II Plantagenêt, Jacques de Molay, Charles VII sans oublier Jeanne d’Arc
               se sont succédés dans cette superbe forteresse médiévale au bord de la Vienne.
               Entre Azay-le-Rideau et Saumur, une escapade à Chinon vous donnera aussi l’occasion de visiter
               un domaine viticole dont la notoriété dépasse largement les frontières de la France.",
               address: "2 Rue du Château, 37500 Chinon",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Forteresse de Montbazon",
               description: "Sous son impressionnant donjon du XIème siècle,
               de nombreuses animations entraînent les visiteurs dans l’univers médiéval.
               La visite guidée, les saynètes jouées (l’hygiène au Moyen Âge…) et les stands (l’herboriste, le forgeron,
               le maitre d’arme…) sont particulièrement appréciés des familles !",
               address: "12-14 Rue du Château, 37250 Montbazon",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château Gaillard",
               description: "Louis XII le confia à Dom Pacello, célèbre paysagistes de la Renaissance italienne,
               qui acclimata les premiers orangers en France.
               De magnifiques jardins se dévoilent le long des « sept sentiers du paradis ».
               Vous aurez la possibilité de conclure la visite en savourant un savoureux gâteau… à l’orange !",
               address: "29 All. du Pont Moulin, 37400 Amboise",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château royal d’Amboise",
               description: "A l’origine de la construction du château de Chambord,
               François 1er passe une partie de son enfance à Amboise, avant de prendre la suite de Charles VIII.
               La chapelle Saint-Hubert abrite le tombeau de Léonard de Vinci,
               et un jardin honore la mémoire de l’émir Abd el-Kader, prisonnier pendant 4 années à Amboise,
               après la prise de sa smala, à laquelle participa notamment Henri d’Orléans.",
               address: "Mnt de l'Emir Abd el Kader, 37400 Amboise",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château du Clos Lucé",
               description: "Bienvenue dans la dernière demeure de Léonard de Vinci.
               Au programme, la découverte des nombreuses maquettes de ses inventions,
               dans le château comme dans le parc. Ingénierie, mais aussi art, science, botanique, urbanisme :
               le génie de Léonard de Vinci s’est attaqué à bien des domaines !",
               address: "2 Rue du Clos Lucé, 37400 Amboise",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de Chenonceau",
               description: "Le célèbre château des dames, remarquable pour ses arches enjambant élégamment le Cher,
               est notamment marqué par la rivalité entre Diane de Poitiers et Catherine de Médicis.
               A la mort d’Henri II, celle-ci récupère le château de Chenonceau,
               et offre à Diane le domaine de Chaumont-sur-Loire, près de Blois.",
               address: "37150 Chenonceaux",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de Villandry",
               description: "Le château de Villandry est surtout connu pour ses splendides jardins,
               en particulier son jardin du soleil et son potager Renaissance. Comme le château royal d’Amboise,
               le domaine est aussi un refuge de la Ligue pour la Protection des Oiseaux. Au fil des allées,
               l’art de vivre prend ici tout son sens, et se prolonge également à l’intérieur du château,
               à travers son mobilier, son décor, et son atmosphère.",
               address: "3 Rue Principale, 37510 Villandry",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château d’Ussé",
               description: "Erigé au bord de l’Indre, ce château inspira Charles Perrault pour écrire
               La Belle au Bois Dormant ! D’ailleurs, la visite intègre certaines scènes du conte. Mais surtout,
               on retient de ce monument sa grande élégance, à l’instar des jardins réalisés par André Le Nôtre,
               le célèbre jardinier de Louis XIV à qui l’on doit également les jardins de Versailles, Vaux le Vicomte,
               et Chantilly.",
               address: "3 Rue Principale, 37510 37420 Rigny-Ussé",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de Montrésor",
               description: "Marqué par la présence de Xavier Branicki, richissime comte polonais en exil,
               ce monument historique cache une grande collection d’objets qui nous plonge dans de multiples histoires.
               Une caverne d’Ali Baba dans un très bel écrin, au centre de l’un des plus beaux villages de France.",
               address: "11 Rue Xavier Branicki, 37460 Montrésor",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de l’Islette",
               description: "Le lieu de rendez-vous favori de Camille Claudel et Auguste Rodin,
               qui filait ici le parfait amour au calme, bercés par le courant le l’Indre.
               Des barques sont d’ailleurs proposées à la location : à vous les joies du canotage,
               au cœur d’un très beau parc, romantique à souhait.",
               address: "9 Rte de Langeais, 37190 Azay-le-Rideau",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de Montpoupon",
               description: "Où l’on découvre la vie de château au début du XXème siècle, dans les pas de Louise,
               la femme de chambre. S’il n’est pas hanté (a priori !),
               la scénographie laisse à penser que ses anciens habitants sont susceptibles de revenir à tout moment.
               Une agréable balade forestière complète la visite, mais aussi un musée consacré à la vénerie.",
               address: "Montpoupon, 37460 Céré-la-Ronde",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de Gizeux",
               description: "Patiemment entretenu et restauré par la famille de Laffon,
               Gizeux vous réserve une très agréable visite, avec notamment sa spectaculaire galerie des châteaux.
               De nombreuses animations sont proposées aux familles, à commencer par une chasse aux trésors.",
               address: "Le Château, 37340 Gizeux",
               price: 1500,
               user: User.all.sample)

Castle.create!(name: "Château de Champchevrier",
               description: "Particulièrement bien meublé, le roi Louis XIII y dormit néanmoins sur la paille !
               Cet élégant château se trouve au milieu d’une grande forêt, qui au XIXème siècle,
               abritait de nombreux loups. C’est ainsi qui est né son équipage de chasse à courre.
               Lors de votre visite vous pourrez voir la meute des chiens,
               issus d’un croisement entre Fox Hound anglais et Poitevins français.",
               address: "Château de Champchevrier, 37340 Clère-les-Pins",
               price: 1500,
               user: User.all.sample)

# Review.destroy_all

# Review.create!(rating: 5, comment: "Un très beau séjour, à recommander!", castle: castle)
