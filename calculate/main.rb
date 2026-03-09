# définir une variable reponse
response = "o"

def ask(prompt)
    print prompt
    gets.chomp
end

def number
    print "\n Veuillez entrer le premier nombre: "
    # to f pour to float et to i pour integer
    a = gets.chomp.to_f
    puts "\n"
    print "Entrez le deuxième nombre: "
    b = gets.chomp.to_f
    [a, b]
end
