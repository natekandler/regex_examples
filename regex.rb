phone_numbers = ["773-899-0088", "773-899-5555", "619-555-5555"]

phone_list = {}
phone_numbers.each do |phone|
  key = /^[0-9][0-9][0-9]|(?<=\()([0-9]{3})/.match(phone)[0]
  #key is a match data object and we are 
  #referencing the [0] element
  if phone_list[key]
    phone_list[key] << phone
  else
    phone_list[key] = [phone]
  end
end
p phone_list


