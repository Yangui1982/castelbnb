# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Castle.destroy_all
User.destroy_all

User.create!(
  email: 'admin@admin.com',
  password: 'azerty',
  admin: true
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

#------- Images------#

img1 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647727/development/ukdebkqmolli49l3t9x3brgvpr06.jpg')
img2 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647648/development/rcq0cibfx6oredffp6c7a9apynd9.jpg')
img3 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648643144/development/0nuug83vkcg1wcuwy35bmmqrogfk.jpg')
img4 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646247/development/7hjg22b6f08aw3mw6iewk04lupig.jpg')
img5 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647548/development/zld93seuddlbq2juovcv4w2zpieh.jpg')
img6 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647470/development/8339l6nuh1n59xdu24yzlkv8ur7l.jpg')
img7 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647403/development/rjd2u1v7an0yxhjthg6p4qsx7xrq.jpg')
img8 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647282/development/pls1cno8fcvq6hq0xivd5wq5ldsk.jpg')
img9 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647197/development/enu2jf9u07eann6f4ozafz1yxulc.jpg')
img10 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648647082/development/rxa8pw4i48i3tk9hqnx2yw9s54u8.jpg')
img11 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646962/development/ryce72czxada9svo4b79safgjzm2.jpg')
img12 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646881/development/4xa097jyhfyu6l4i1e1ztc2znha6.jpg')
img13 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646777/development/nrnggyrl7o9j9cxuop0q0mzet8e1.jpg')
img14 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646611/development/da6roisasxn3olq58htnztxlcdmr.jpg')
img15 = URI.open('https://res.cloudinary.com/dbzcbmk3a/image/upload/v1648646359/development/hpsvbrt2lpk7zjye482xkyvzxtlj.jpg')

castle1 = Castle.create!(name: "Ch??teau de Langeais",
                         description: "Une fa??ade de ch??teau fort (pont levis, tours, m??chicoulis???),
                         mais c??t?? jardin, une r??sidence marqu??e par le style Renaissance !
                         Dans ce ch??teau situ?? ?? 200 m??tres de la Loire,
                         le mariage entre Charles VIII et Anne de Bretagne scella
                         le rattachement de la Bretagne au royaume de France. Richement meubl?? !",
                         address: "Place Pierre de Brosse, 37130 Langeais",
                         price: 1500,
                         user: user1)
castle1.photo.attach(io: img1, filename: "chateau-de-langeais-photo-vedette", content_type: 'image/jpg')

castle2 = Castle.create!(name: "Ch??teau d???Azay-le-Rideau",
                         description: "Visite d???un chef d???oeuvre de la premi??re Renaissance fran??aise,
                         se refl??tant dans un miroir d???eau aliment?? par l???Indre. Erig?? par Gilles Berthelot,
                         tr??sorier de France, le ch??teau sera ensuite confisqu?? par Fran??ois 1er,
                         puis offert ?? Antoine Raffin, capitaine de ses gardes du corps !
                         Sur place, on appr??cie tout particuli??rement le joli parc ?? l???anglaise et
                         ses arbres majestueux.",
                         address: "Rue de Pineau, 37190 Azay-le-Rideau",
                         price: 1500,
                         user: User.all.sample)
castle2.photo.attach(io: img2, filename: "chateau-azay-le-rideau", content_type: 'image/jpg')

castle3 = Castle.create!(name: "Forteresse royale de Chinon",
                         description: "Henri II Plantagen??t, Jacques de Molay, Charles VII sans oublier Jeanne d???Arc
                         se sont succ??d??s dans cette superbe forteresse m??di??vale au bord de la Vienne.
                         Entre Azay-le-Rideau et Saumur, une escapade ?? Chinon vous donnera aussi l???occasion de visiter
                         un domaine viticole dont la notori??t?? d??passe largement les fronti??res de la France.",
                         address: "2 Rue du Ch??teau, 37500 Chinon",
                         price: 1500,
                         user: User.all.sample)
castle3.photo.attach(io: img3, filename: "Chinon", content_type: 'image/jpg')

castle4 = Castle.create!(name: "Forteresse de Montbazon",
                         description: "Sous son impressionnant donjon du XI??me si??cle,
                         de nombreuses animations entra??nent les visiteurs dans l???univers m??di??val.
                         La visite guid??e, les sayn??tes jou??es (l???hygi??ne au Moyen ??ge???) et les stands (l???herboriste,
                         le forgeron, le maitre d???arme???) sont particuli??rement appr??ci??s des familles !",
                         address: "12-14 Rue du Ch??teau, 37250 Montbazon",
                         price: 1500,
                         user: User.all.sample)
castle4.photo.attach(io: img4, filename: "forteresse-2018", content_type: 'image/jpg')

castle5 = Castle.create!(name: "Ch??teau Gaillard",
                         description: "Louis XII le confia ?? Dom Pacello, c??l??bre paysagistes de la Renaissance
                         italienne, qui acclimata les premiers orangers en France.
                         De magnifiques jardins se d??voilent le long des ?? sept sentiers du paradis ??.
                         Vous aurez la possibilit?? de conclure la visite en savourant
                         un savoureux g??teau??? ?? l???orange !",
                         address: "29 All. du Pont Moulin, 37400 Amboise",
                         price: 1500,
                         user: User.all.sample)
castle5.photo.attach(io: img5, filename: "1.-Vue-sur-le-Chateau---1", content_type: 'image/jpg')

castle6 = Castle.create!(name: "Ch??teau royal d???Amboise",
                         description: "A l???origine de la construction du ch??teau de Chambord,
                         Fran??ois 1er passe une partie de son enfance ?? Amboise, avant de prendre la suite de
                         Charles VIII. La chapelle Saint-Hubert abrite le tombeau de L??onard de Vinci,
                         et un jardin honore la m??moire de l?????mir Abd el-Kader, prisonnier pendant 4 ann??es ?? Amboise,
                         apr??s la prise de sa smala, ?? laquelle participa notamment Henri d???Orl??ans.",
                         address: "Mnt de l'Emir Abd el Kader, 37400 Amboise",
                         price: 1500,
                         user: User.all.sample)
castle6.photo.attach(io: img6, filename: "chateau-royal-amboise", content_type: 'image/jpg')

castle7 = Castle.create!(name: "Ch??teau du Clos Luc??",
                         description: "Bienvenue dans la derni??re demeure de L??onard de Vinci.
                         Au programme, la d??couverte des nombreuses maquettes de ses inventions,
                         dans le ch??teau comme dans le parc. Ing??nierie, mais aussi art, science, botanique, urbanisme :
                         le g??nie de L??onard de Vinci s???est attaqu?? ?? bien des domaines !",
                         address: "2 Rue du Clos Luc??, 37400 Amboise",
                         price: 1500,
                         user: User.all.sample)
castle7.photo.attach(io: img7, filename: "Chateau-du-Clos-Luce", content_type: 'image/jpg')

castle8 = Castle.create!(name: "Ch??teau de Chenonceau",
                         description: "Le c??l??bre ch??teau des dames, remarquable pour ses arches enjambant ??l??gamment
                         le Cher, est notamment marqu?? par la rivalit?? entre Diane de Poitiers et Catherine de M??dicis.
                         A la mort d???Henri II, celle-ci r??cup??re le ch??teau de Chenonceau,
                         et offre ?? Diane le domaine de Chaumont-sur-Loire, pr??s de Blois.",
                         address: "37150 Chenonceaux",
                         price: 1500,
                         user: User.all.sample)
castle8.photo.attach(io: img8, filename: "Chenonceau", content_type: 'image/jpg')

castle9 = Castle.create!(name: "Ch??teau de Villandry",
                         description: "Le ch??teau de Villandry est surtout connu pour ses splendides jardins,
                         en particulier son jardin du soleil et son potager Renaissance.
                         Comme le ch??teau royal d???Amboise, le domaine est aussi un refuge de la Ligue pour
                         la Protection des Oiseaux. Au fil des all??es, l???art de vivre prend ici tout son sens,
                         et se prolonge ??galement ?? l???int??rieur du ch??teau,
                         ?? travers son mobilier, son d??cor, et son atmosph??re.",
                         address: "3 Rue Principale, 37510 Villandry",
                         price: 1500,
                         user: User.all.sample)
castle9.photo.attach(io: img9, filename: "CHATEAU-ET-JARDINS-DE-VILLANDRY--4-", content_type: 'image/jpg')

castle10 = Castle.create!(name: "Ch??teau d???Uss??",
                          description: "Erig?? au bord de l???Indre, ce ch??teau inspira Charles Perrault pour ??crire
                          La Belle au Bois Dormant ! D???ailleurs, la visite int??gre certaines sc??nes du conte.
                          Mais surtout, on retient de ce monument sa grande ??l??gance, ?? l???instar des jardins
                          r??alis??s par Andr?? Le N??tre, le c??l??bre jardinier de Louis XIV ?? qui l???on doit ??galement
                          les jardins de Versailles, Vaux le Vicomte, et Chantilly.",
                          address: "3 Rue Principale, 37510 37420 Rigny-Uss??",
                          price: 1500,
                          user: User.all.sample)
castle10.photo.attach(io: img10, filename: "chateau-usse", content_type: 'image/jpg')

castle11 = Castle.create!(name: "Ch??teau de Montr??sor",
                          description: "Marqu?? par la pr??sence de Xavier Branicki, richissime comte polonais en exil,
                          ce monument historique cache une grande collection d???objets qui nous plonge dans de multiples
                          histoires. Une caverne d???Ali Baba dans un tr??s bel ??crin, au centre de l???un des plus beaux
                          villages de France.",
                          address: "11 Rue Xavier Branicki, 37460 Montr??sor",
                          price: 1500,
                          user: User.all.sample)
castle11.photo.attach(io: img11, filename: "chateau-montresor", content_type: 'image/jpg')

castle12 = Castle.create!(name: "Ch??teau de l???Islette",
                          description: "Le lieu de rendez-vous favori de Camille Claudel et Auguste Rodin,
                          qui filait ici le parfait amour au calme, berc??s par le courant le l???Indre.
                          Des barques sont d???ailleurs propos??es ?? la location : ?? vous les joies du canotage,
                          au c??ur d???un tr??s beau parc, romantique ?? souhait.",
                          address: "9 Rte de Langeais, 37190 Azay-le-Rideau",
                          price: 1500,
                          user: User.all.sample)
castle12.photo.attach(io: img12, filename: "Chateau-de-l-Islette-8", content_type: 'image/jpg')

castle13 = Castle.create!(name: "Ch??teau de Montpoupon",
                          description: "O?? l???on d??couvre la vie de ch??teau au d??but du XX??me si??cle,
                          dans les pas de Louise, la femme de chambre. S???il n???est pas hant?? (a priori !),
                          la sc??nographie laisse ?? penser que ses anciens habitants sont susceptibles
                          de revenir ?? tout moment. Une agr??able balade foresti??re compl??te la visite,
                          mais aussi un mus??e consacr?? ?? la v??nerie.",
                          address: "Montpoupon, 37460 C??r??-la-Ronde",
                          price: 1500,
                          user: User.all.sample)
castle13.photo.attach(io: img13, filename: "MONTPOUPON", content_type: 'image/jpg')

castle14 = Castle.create!(name: "Ch??teau de Gizeux",
                          description: "Patiemment entretenu et restaur?? par la famille de Laffon,
                          Gizeux vous r??serve une tr??s agr??able visite, avec notamment sa spectaculaire galerie
                          des ch??teaux. De nombreuses animations sont propos??es aux familles,
                          ?? commencer par une chasse aux tr??sors.",
                          address: "Le Ch??teau, 37340 Gizeux",
                          price: 1500,
                          user: User.all.sample)
castle14.photo.attach(io: img14, filename: "Chateau-de-Gizeux", content_type: 'image/jpg')

castle15 = Castle.create!(name: "Ch??teau de Champchevrier",
                          description: "Particuli??rement bien meubl??, le roi Louis XIII y dormit n??anmoins
                          sur la paille !
                          Cet ??l??gant ch??teau se trouve au milieu d???une grande for??t, qui au XIX??me si??cle,
                          abritait de nombreux loups. C???est ainsi qui est n?? son ??quipage de chasse ?? courre.
                          Lors de votre visite vous pourrez voir la meute des chiens,
                          issus d???un croisement entre Fox Hound anglais et Poitevins fran??ais.",
                          address: "Ch??teau de Champchevrier, 37340 Cl??re-les-Pins",
                          price: 1500,
                          user: User.all.sample)
castle15.photo.attach(io: img15, filename: "Chateau-de-Champchevrier", content_type: 'image/jpg')
