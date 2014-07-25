def prime_sifting(input_number)

  number_list = (2..(input_number-1)).to_a

  number_list.each do |prime|
    # prime_limit is the highest number of times plus 1 (for using < ) prime will divide
    # into the input_number. It serves to limit the number of times the number_list
    # traverse is performed. input_number is converted to a float so the result from
    # dividing by prime is not truncated to the nearest integer
    prime_limit = (input_number.to_f/prime).ceil
    if prime < prime_limit
      number_list.each do |number_list_item|
    # delete the current item from the number_list if it is divisible by the current prime
    # number (but is not the current prime number)
        if (number_list_item % prime) == 0 && (number_list_item != prime)
          number_list.delete(number_list_item)
        end
      end
    end
  end

  return number_list

end
