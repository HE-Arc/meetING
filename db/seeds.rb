# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
	[ "Sullivan", "Lariviere", "TheSpicyGamer@gmail.com"],
	[ "Ofella", "Glants", "Drab@gmail.com"],
	[ "Gregoire", "Brenan", "Noxious@gmail.com"],
	[ "Sylvia", "Danieli", "Fancy@gmail.com"],
	[ "Luciano", "Oglesby", "Rude@gmail.com"],
	[ "Marlie", "Giebfried", "Sophisticated@gmail.com"],
	[ "Murry", "Breaux", "Plucky@gmail.com"],
	[ "Phyllis", "Lazar", "Rough@gmail.com"],
	[ "Ash", "Dylan", "Elated@gmail.com"],
	[ "Goldy", "Gonet", "Rightful@gmail.com"],
	[ "Griffie", "Barberis-Maino", "Humorous@gmail.com"],
	[ "Callida", "Herzel", "Cut@gmail.com"],
	[ "Donn", "Bariletti", "Shaggy@gmail.com"],
	[ "Lucita", "Chapin", "Disgusting@gmail.com"],
	[ "Onofredo", "Platais", "Straight@gmail.com"],
	[ "Alvina", "Toscano", "Pink@gmail.com"],
	[ "Templeton", "Kain", "Furtive@gmail.com"],
	[ "Alessandra", "Guidi", "Tasty@gmail.com"],
	[ "Omar", "Mumm", "Grubby@gmail.com"],
	[ "Marie-Jeanne", "Torres", "Cagey@gmail.com"],
	[ "Jozef", "Ravitzky", "Selective@gmail.com"]
]

user_list.each do |lastname, firstname, email|
  User.create( nom: lastname, prenom: firstname, mail: email)
end

post_list = [
	['2016-01-05', 18, "Entrerent defensive craignait causaient ai le. Il laissant le on paraitre treteaux. Bourse je disant traits on espoir la et. Existence prenaient bourreaux oh exasperer he cependant. Je prenons enormes menager ramassa morales ah. Idee eut des peut saut nul haut mur sais. Supplice un cervelle te relevant harmonie officier. Je va vaut au pont puis tira nous donc. ", 3],
	['2016-01-10', 7, "Se etale bondi oh et guere il. Et lassitude fillettes ni descendit. Rues ici moi dut plus nous tard dont ames. Fin foi pale epis fois. Trente soucis but ces taches mouche voyait une chemin. Je comprends me neanmoins ii comprenez en. Trouvent essaiera la remporte falaises eu. ", 12],
	['2016-01-16', 1, "Fin oui eut sillons oui fausser encourt station souffle. Ifs ecole vieux par trois pense porta oui. Je promptes de convient humaines ou pourtant treteaux. Magistrats poussaient infiniment ordonnance singuliers oh et descendons. Ai on meriter progres seconde va pouvons. Moi enleve vin vallee verite allons six ronfle ces. Contient on et recouvre de effarees pretends capitale posseder la. Commandant frissonner ses maintenant permission les approchait moi fanatiques. ", 15],
	['2016-01-27', 18, "Falaises pressait soudaine encontre en empilait ah ma trahison. Pic vous fut moi hors dont sent pale tout fer. Courtes revetit peu general but prairie vif fatigue. Bourreau ils cervelle uns eux piquette trophees dur respirer. Caracolent bouquetins etonnement crispation roc ete les. Feu ses prennent certains flottent des epanouir but tambours. Comment sa courtes te on quitter la paysage. Hesitante epluchant mal existence comprenez regardent ces. ", 5],
	['2016-02-03', 20, "Donnent ici noircir qui prelude. Une flamboyer nez aux tarderait signalant apprenons nid sentiment. De evocation servantes cependant annoncait oh corbeille prenaient. Ifs recouvre etranges donnerai havresac appareil but mon car fillette. Luisant bougres ah soudain savants erigent la surprit va il. Or firmament je cavaliers la perimetre ne cauchemar. Gravures des tambours eau fer horrible. ", 0],
	['2016-02-06', 7, "Vaut fond pont cinq leur fait va te de. Roc jeunes oui heures quelle espoir est mouche marier. Peu heureux gagnent dessein dur. Heros luire bride bouts ere ici notre senti. Capucines hesitante epaissies couraient le de ca seulement deroulent oh. Posseder societes fondrait mal oui prochain pic susciter mes. Non courroies jeu epaissies dur ressemble. ", 1],
	['2016-02-10', 15, "Pleurs levres chants dessus revele aux fer. Je hataient physique qu philippe en harmonie meilleur eu. Revolution compagnies prisonnier ah atteignait on oh du grouillent. Patrie eglise la labeur appela oh ah eclate tu. Musiques posseder ai harmonie au collines me. La on souhaitait frissonner avancaient la. Six vie rang fort ete elle. ", 1],
	['2016-02-15', 6, "Elue ange roc ete mort pale fort toi. Fit ange ils ifs fond ils mats. Somptueux repousser entourage inassouvi direction nos ici ces sol gachettes. Mur dit ont des cris aime loin soir avez. La poussiere flamboyer troupeaux va hesitante. Chez aime robe dur vie cree paix seul. ", 15],
	['2016-02-22', 1, "Ifs humaines epanouir certains mon trahison mes souvenir fut. Faisait nos bas arriere revient violent. Art face agit ici nord elan vaut pale. Crurent tu obtenue me donnent va on grosses seconde coupait. Age pret eut rues elue tous cela peut. Finit jeune foret en ainsi le ornee signe. Decharnees le qu et ah singuliers infanterie. Pieces adorer eclate mouche me oh et pu.", 11],
	['2016-02-27', 3, "Douleur futaies engager me ce au. Crises ah acheve le au du mollir. Mendiaient fraternite nationales sa caracolent ii la singuliers sa. Lunes peu leurs aux prime essor salle. On compagnies construits comprendre et boulevards. Demeure meriter cadeaux piquees ca ni ne naguere enfants. Vite fois joie jet vif dur. ", 4],
	['2016-03-13', 18, "Voit dans qu tu vert. Maintenant ce le cathedrale souffrance. Non foret roc selon une art jours. Nos courts nos beaute balaye voulez ici. Assez sapin droit va je enfin. Ifs penetrer position meilleur poussait iii branches ces uns etendues.", 19]
]

post_list.each do |dateRand, idOwner, descriptionRand, idTarget|
  Post.create( date: dateRand, id_user_owner: idOwner, description: descriptionRand, id_user_target: idTarget)
end