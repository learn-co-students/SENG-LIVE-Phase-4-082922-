Production.create(title: 'Hamlet', genre: 'Drama', director:'Bill Shakespeare', description:'The Tragedy of Hamlet, Prince of Denmark', budget: 100000.00, image:'https://upload.wikimedia.org/wikipedia/commons/6/6a/Edwin_Booth_Hamlet_1870.jpg', ongoing:true)

Production.create(title: 'Cats', genre: 'Musical', director:'Andrew Lloyd Webber', description:' Jellicles cats sing and dance', budget: 200000.00, image:'https://upload.wikimedia.org/wikipedia/en/3/3e/CatsMusicalLogo.jpg', ongoing:true)

Production.create(title: 'Carmen', genre: 'Opera', director:'Georges Bizet', description:'Set in southern Spain this is the story of the downfall of Don José, a naïve soldier who is seduced by the wiles of the fiery and beautiful Carmen.', budget: 200000.00, image:'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Prudent-Louis_Leray_-_Poster_for_the_premi%C3%A8re_of_Georges_Bizet%27s_Carmen.jpg/300px-Prudent-Louis_Leray_-_Poster_for_the_premi%C3%A8re_of_Georges_Bizet%27s_Carmen.jpg', ongoing:false)

Production.create(title: 'Hamilton', genre: 'Musical', director:'Lin-Manuel Miranda', description:'An American Musical is a sung-and-rapped-through musical by Lin-Manuel Miranda. It tells the story of American Founding Father Alexander Hamilton.', budget: 400000.00, image:'https://upload.wikimedia.org/wikipedia/en/thumb/8/83/Hamilton-poster.jpg/220px-Hamilton-poster.jpg', ongoing:false)


u1 = User.create(name:'ix', email:'email@gmail.com', password:'1234')
u2 = User.create(name:'rose', email:'rose@gmail.com', password:'1234')
20.times{User.create(name:Faker::Name.name, email:Faker::Internet.free_email, password:'1234')}

hamlet_roles = ['Hamlet', 'Ophelia', 'Polonius', 'Laertes', 'Horatio', 'Gertrude', 'Ghost' ]
hamlet_roles.each{|hr| CastMember.create(name:Faker::Name.name, role:hr, production:Production.find_by(title:'Hamlet'))}

cats_roles = ['Mr. Mistoffelees', 'Bombalurina', 'Rumpletezer', 'Grizabella']
cats_roles.each{|cr| CastMember.create(name:Faker::Name.name, role:cr, production:Production.find_by(title:'Cats'))}

carmen_roles = ['Carmen', 'Escamillo', 'Jose', 'Mercedes', 'Dancaire']
carmen_roles.each{|cr|CastMember.create(name:Faker::Name.name, role:cr, production:Production.find_by(title:'Carmen'))}

hamilton_roles = ['Alexander Hamilton', 'King George III', 'Marquis de Lafayett', 'Angelica Schuyler Church', 'Peggy Schuyler', 'Thomas Jefferson']
hamilton_roles.each{|hr|CastMember.create(name:Faker::Name.name, role:hr, production:Production.find_by(title:'Hamilton'))}

60.times{Ticket.create(user: User.all.sample, production: Production.all.sample, price:65.00)}

Ticket.create(user:u1, production:Production.find_by(title:'Hamlet'), price:65.00)
Ticket.create(user:u2, production:Production.find_by(title:'Hamlet'), price:65.00)
Ticket.create(user:u2, production:Production.find_by(title:'Cats'), price:65.00)
puts "🎭 FIN 🎭"