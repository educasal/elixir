defmodule IncomeTax do
  def total(salary) when salary <= 2000,  do: 0
  def total(salary) when salary <= 3000,  do: salary * 0.05
  def total(salary) when salary <= 6000,  do: salary * 0.1
  def total(salary) ,  do: salary * 0.15
end

input = IO.gets "Please, enter your salary: \n"

case Float.parse(input) do
  :error -> IO.puts "Invalid input: #{input}"
  {salary, _} ->
    tax = IncomeTax.total(salary)
    IO.puts "Income tax: #{Float.to_string(tax, [decimals: 2, compact: true])}, net wage: #{Float.to_string(salary - tax, [decimals: 2, compact: true])}"
end
