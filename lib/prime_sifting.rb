def prime_sifting(input_number)

  number_list = (2..(input_number-1)).to_a
  prime_list = []
  prime = 2
  temp_list = [2]

  number_list.each do |prime|
    if (prime != 0) && (prime < (input_number.to_f/prime).ceil)
      number_list.each do |number_list_item|
        if (temp_list.length != 0)
          temp_list.each do |number_multiply_by|
            trial_number = prime * number_multiply_by
            if (number_list_item != 0) && (trial_number < input_number)
              if number_list[number_list_item-2] == trial_number
                if (prime == 2) && (number_list_item != 2)
                  temp_list.push(number_list[number_list_item-2])
                end
                number_list[number_list_item-2] = 0
              elsif (number_list_item < trial_number) && (number_list_item > temp_list[temp_list.length-1])
                temp_list.push(number_list[number_list_item-2])
              end
            end
          end
        end
      end
    end
  end

  number_list.each do |output_number|
    if output_number != 0
      prime_list.push (output_number)
    end
  end
  return prime_list

end
