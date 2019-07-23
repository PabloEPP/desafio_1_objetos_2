class Cards
  attr_reader :color, :numero
  def initialize(color, numero)
    @color = color
    @numero = numero
  end
end

def show_hand(hand)
  puts hand.map { |card| "#{card.numero} de #{card.color}"}
end

def create_hand(colores, numeros)
  hand = []
  5.times do
    hand.push Cards.new(colores.sample, numeros.sample)
  end
  hand
end

def menu
    puts('Escriba una opción:')
    puts('jugar - Genera una mano de cinco cartas al azar.')
    puts('mostrar - Muestra la mano actual.')
    puts('salir - Cierra el programa.')
end

numeros = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
colores = %w(Corazón Pica Trébol Diamante)

menu
opcion = gets.chomp
while opcion != 'salir'
  if opcion == 'jugar'
    hand = create_hand(colores, numeros)
  elsif opcion == 'mostrar'
    show_hand(hand)
  else
    puts 'Opción incorrecta.'
  end
  menu
  opcion = gets.chomp
end
puts 'Adios!'
