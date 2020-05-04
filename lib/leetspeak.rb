class String
  def translator
    arr = self.split("") 
    new_arr = []
    arr.each_with_index do |letter, index|
      if (letter === "e") 
        new_arr.push("3")
      elsif (letter === "o")
        new_arr.push("0")
      elsif (letter === "I")
        new_arr.push("1")
      elsif (letter === "s" && arr[index -1] != " " && index != 0)
        new_arr.push("z")
      else
        new_arr.push(letter)
      end
    end
    new_arr
  end
end

# i like roses ->   1 l1k3 r0z3z
# i like sound ->   1 l1k3 s0und
# Sounds good  ->   S0undz g00d

# phonebook = Hash.new()
# phonebook.store("Tony", 5036797032)
# phonebook.store("Chee", 5035555555)

phonebook = {
  "Tony" => 5036797032, 
  "Chee" => 5035555555,
}

phonebook.class.to_s Hash
phonebook.class.name

extract = phonebook.fetch("Tony")
puts(extract)
