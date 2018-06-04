apply_tax = fn given_price ->
  tax = given_price *  0.12
  total_price = given_price + tax
  IO.puts "Price: #{total_price} - Tax: #{tax}"
end

Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
