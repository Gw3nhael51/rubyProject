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

# Tant que la reponse est "o" alors continuer
while response == "o"
    a, b = number
    
    puts "\n------- Choisissez une operation -------\n
    + Additionner\n
    - Soustraire\n
    * Multiplier\n
    / Diviser\n"
    
    puts "\n-------"
    prompt = ask("Votre choix : ")
    print "\n"

    case prompt
    # Si le choix est +
    when "+"
        puts "------- Additionner -------"
        puts "\n Le resultat de #{a} + #{b} est #{a + b}"

    # Si le choix est -
    when "-"
        puts "------- Soustraire -------"
        puts "\n Le resultat de #{a} - #{b} est #{a - b}"
    
    # Si le choix est *
    when "*"
        puts "------- Multiplier -------"
        puts "\n Le resultat de #{a} * #{b} est #{a * b}"

    # Si le choix est /
    when "/"
        puts "------- Diviser -------"
        if b != 0
            puts "\n Le resultat de #{a} / #{b} est #{a / b}"
        else
            puts "Erreur: Division par zéro n'est pas permise."
        end

    # Si le choix utilisateur != des choix proposés
    else
        puts "Choix invalide. Veuillez choisir une operation valide."
    end

    # Demander à l'utilisateur s'il veut continuer
    print "\n Voulez-vous continuer? (o/n): "

    # tant que la reponse n'est pas "o" ou "n"
    while true
        response = gets.chomp.downcase
        if response == "o" || response == "n"
            break
        else
            print "Veuillez entrer 'o' pour continuer ou 'n' pour quitter. : "
        end
    end
end