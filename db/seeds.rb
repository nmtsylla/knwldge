# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

root = Category.create(name: 'Knowledge base', sort_order: 1)
Category.create(name: 'Documentations', sort_order: 2)

partie_religion = Category.create(name: 'Les parties de la religion', sort_order: 1)
root.children << partie_religion

profession_foi = Category.create(name: 'la Profession de Foi (Imaan)', sort_order: 1, parent_id: partie_religion.id)
pratique = Category.create(name: 'les Pratiques Cultuelles de Soumission à DIEU (Islam)', sort_order: 2, parent_id: partie_religion.id)
perfection = Category.create(name: 'la Perfection Spirituelle (Ihsaan)', sort_order: 3, parent_id: partie_religion.id)

Article.create(name: 'la Profession de Foi tire de Tazawuudu Sixaar', category: profession_foi)
Article.create(name: 'Les pratiques cultuelles', category: pratique)

fiq = Session.create(name: 'Jataayu xam-xam Majalis: Fiqh')
waxtaan = Session.create(name: 'Waxtann ci Xassidayi & Goudi Aldiouma ')
tasawuuf = Session.create(name: 'Jotaayu Xam-Xam Dahiratoul Abraar: Tasawuuf')

Question.create(content: 'Durant Al Isra wal Miraj , quels sont les prophètes rencontrés par Seydina Mouhamed dans les 7 cieux ?', session: fiq)
Question.create(content: 'Lan mooy « sirru rubuubiya »?', session: fiq)
Question.create(content: 'Bonjour j’avais entendu que toutes ces divergences dont segn xalil parlait constituait un bienfait pour la religion. J’aimerai juste comprendre si c’est le cas où parmi tous ces courants ou doctrines, certains sont dans la vrai religion et d’autres sont égarés? Merci', session: fiq)
Question.create(content: 'Bismillah ziar. Ku nelaw gént am lu génn ci yow. Nga yeewu fajr xamoo ni gént nga nga julli tëddaat, so yewoo ci diggu bëccëk gi ndax da ngay fay julli fajr ga? Waaw leen góor', session: tasawuuf)
Question.create(content: 'Nax jàpp di wax dafa haraam wala ñu sip ko ?', session: tasawuuf)
Question.create(content: 'Bismillah dagn doon ladj ay leeral ci ngeneel xassida Sindidi', session: waxtaan)


seedfile = File.open('db/seedes.rb', 'w')


u = User.all

u.each do |cat|
  seedfile.write "User.create(#{cat.attributes})\n"
end


c = Category.all

c.each do |cat|
  seedfile.write "Category.create(#{cat.attributes})\n"
end

a = Article.all
a.each do |cat|
  seedfile.write "Article.create(#{cat.attributes})\n"
end

s = Session.all
s.each do |cat|
  seedfile.write "Session.create(#{cat.attributes})\n"
end

q = Question.all
q.each do |cat|
  seedfile.write "Question.create(#{cat.attributes})\n"
end
r = ActionText::RichText.all
r.each do |cat|
  seedfile.write "ActionText::RichText.create(#{cat.attributes})\n"
end

seedfile.close