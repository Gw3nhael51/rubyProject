require_relative "person"
require 'date'

# créer un objet Person
p = Person.new

# appeller les méthodes
puts "-------------------"
p.hello
puts p.class          # Affiche "Person" (Ta classe personnalisée)

puts "-------------------"
p.name
puts "Gwen".class     # Affiche "String"

puts "-------------------"
p.birth
puts Date.new(2003, 5, 19).class  # Affiche "Date"

puts "-------------------"
p.age
puts 22.class         # Affiche "Integer"

puts "------ FIN ------"