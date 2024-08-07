#recebe uma string e um fator de alteracao

def caesar_cipher(string, factor)
  #analisa cada elemento da string individualmente
  array_of_string = string.split('')
  p array_of_string
  cripto_array = []

  array_of_string.each do |element|
    element = element.ord
  #se o elemento for uma letra, executa o fator de alteracao, verificando ainda se eh maiusculo ou minisculo
    if (element >= 65 && element <= 90) || (element >= 97 && element <= 122)
  #verifica se eh letra maiscula
      if element >= 65 && element <= 90
  #verifica se elemento de alteracao faria com que seja necessario ir ate o fim do alfabeto para letra maiuscula
        if (element - factor) < 65
          factor = 65 - (element - factor)
          element = 90
        end
  #verifica se elemento de alteracao faria com que seja necessario ir ate o fim do alfabeto para letra minuscula      
      elsif element >= 97 && element <= 122
        if (element - factor) < 97
          factor = 97 - (element - factor) 
          element = 122
        end
      end
  #altera o codico ascii do elemento
      element = element - factor
      

    end
    element = element.chr
    cripto_array.push(element)  

  end

  cripto_array.join("")


end

teste = caesar_cipher("aaaa eh um teste!!!", 5)

puts teste


#se o elemento for uma letra, executa o fator de alteracao, verificando ainda se eh maiusculo ou minisculo
#retorna a string com a cripto apropriada