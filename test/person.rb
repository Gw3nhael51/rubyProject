class Person
    def initialize(
        # valeurs par défaut
        name = "gwen", 
        birth_date = Date.new(2003, 6, 21),
        phrase = "hello World !"
        )

        # données de l'objet
        @name = name.capitalize
        @birth = birth_date
        @phrase = phrase.capitalize
        @age = calculate_age(@birth)
    end

    # calculer l'âge
    def calculate_age(birth_date)
        today = Date.today
        age = today.year - birth_date.year
        age -= 1 if Date.new(today.year, birth_date.month, birth_date.day) > today
        age
    end

    # afficher la phrase
    def hello
        puts @phrase
    end

    # afficher le nom
    def name
      puts "My name is #{@name}"
    end

    # afficher la date de naissance
    def birth
        puts "I was born on #{@birth}"
    end

    # afficher l'âge
    def age
        puts "I'm #{@age} years old"
    end
end