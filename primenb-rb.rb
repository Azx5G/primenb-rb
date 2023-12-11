# Language selection function
# PrimeNB-RB
# Copyright (c) 2023 Azx5G
def choose_language
  puts 'Choose a language / Choisissez une langue:'
  puts '1. English / Anglais'
  puts '2. French / Français'
  choice = gets.to_i

  case choice
  when 1
    'en'
  when 2
    'fr'
  else
    puts 'Invalid choice. Defaulting to English / Choix invalide. Par défaut en anglais.'
    'en'
  end
end

# Function to check if a number is prime
def is_prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).none? { |i| number % i == 0 }
end

# Function to test prime numbers up to a limit
def test_prime_numbers(limit, language)
  (1..limit).each do |number|
    if is_prime?(number)
      if language == 'en'
        puts "#{number} is prime."
      else
        puts "#{number} est premier."
      end
    end
  end
end

# Main execution
language = choose_language

if language == 'en'
  puts "Choose an option:"
  puts "1. Test if a specific number is prime."
  puts "2. Display all prime numbers up to a specific limit."
else
  puts "Choisissez une option :"
  puts "1. Tester si un nombre spécifique est premier."
  puts "2. Afficher tous les nombres premiers jusqu'à une limite spécifique."
end

choice = gets.to_i

case choice
when 1
  if language == 'en'
    puts "Enter a number to test:"
  else
    puts "Entrez un nombre à tester :"
  end
  number = gets.to_i
  if is_prime?(number)
    if language == 'en'
      puts "#{number} is a prime number."
    else
      puts "#{number} est un nombre premier."
    end
  else
    if language == 'en'
      puts "#{number} is not a prime number."
    else
      puts "#{number} n'est pas un nombre premier."
    end
  end
when 2
  if language == 'en'
    puts "Enter the upper limit for prime number search:"
  else
    puts "Entrez la limite supérieure pour la recherche des nombres premiers :"
  end
  limit = gets.to_i
  test_prime_numbers(limit, language)
else
  if language == 'en'
    puts "Invalid option. Please enter 1 or 2."
  else
    puts "Option non valide. Veuillez entrer 1 ou 2."
  end
end
