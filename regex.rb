phone_numbers = ["773-899-0088", "(773)899-5555", "619-555-5555"]

phone_list = {}
phone_numbers.each do |phone|
  /(^\d{3})|(?<=\()([\d]{3})/.match(phone)
  if phone_list[$&]
    phone_list[$&] << phone
  else
    phone_list[$&] = [phone]
  end
end
p phone_list

#def capture_groups(phone)
#  /(^[0-9][0-9][0-9])|(?<=\()([0-9]{3})/.match(phone)
#  p "globals"
#  p "$& #{$&}"
#  p "$' #{$'}"
#  p "$` #{$`}"
#  p "$1 #{$1}"
#  p "$2 #{$2}"
#end

#capture_groups("773-899-0088")
#capture_groups("(773)899-0055")
#capture_groups("619-555-5555")

#phone = "(773)899-0088"
#p phone.gsub(/(\()(\d{3})(\))/, "#{$2}-")

