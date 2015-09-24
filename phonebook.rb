pb = Array.new
 count = 0
loop do
  pb[count] = Hash.new
  print "Your name is "
  pb[count][:name] = gets.chomp
  print "Your phonenumber is "
  pb[count][:phonenumber] = gets.chomp
  print "Your gender is "
  gender = gets.chomp
if gender == "male"
  pb[count][:gender] = "male"
elsif gender == "female"
  pb[count][:gender] = "female"
else
  pb[count][:gender] = "male"
end
  puts "No. name, phonenumber, gender"
pb.each_with_index do |u, index|
  puts "#{index + 1}. #{u[:name]}, #{u[:phonenumber]}, #{u[:gender]}"
end
count = count + 1

  puts "X to exit, D to delete the data"
  cmd = gets.chomp
  if cmd == "D"
      print "Enter the data number you want to delete = "
      number = gets.chomp.to_i
      pb.delete_at(number-1)
      count = count - 1
  end
  break if cmd == "X"
end