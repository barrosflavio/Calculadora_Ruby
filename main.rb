def input(question)
  print "#{question}"
  gets.chomp
end

loop do
  puts "1: Somar | 2: Subtrair | 3: Multiplicar | 4: Dividir | 0: Sair"
  choice = input("Escolha uma opção: ")

  case choice.to_i
  when 1
    puts "Você está somando, digite quantos numeros quiser separados por espaço:"
    line = gets.split(" ").map(&:to_i)
    soma = 0
    for number in line
      soma += number
    end
    puts "Resultado da soma: #{soma}"

  when 2
    puts "Você está subtraindo, digite quantos numeros quiser separados por espaço:"
    line = gets.split(" ").map(&:to_i)
    subtr = line[0] * 2
    for number in line
      subtr -= number
    end
    puts "Resultado da subtração: #{subtr}"

  when 3
    puts "Você está multiplicando, digite quantos numeros quiser separados por espaço:"
    line = gets.split(" ").map(&:to_i)
    mult = 1
    for number in line
      mult *= number
    end
    puts "Resultado da multiplicação: #{mult}"

  when 4
    puts "Você está dividindo, digite quantos numeros quiser separados por espaço:"
    line = gets.split(" ").map(&:to_i)
    if line.include?(0)
      puts "Erro: Não é possível dividir por zero"
    else
      divs = line[0] * line[0]
      for number in line
        divs /= number
      end
      puts "Resultado da divisão: #{divs}"
    end
  when 0
    break
  else
    puts "Opção inválida"
  end
end
