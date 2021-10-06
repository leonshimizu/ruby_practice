# Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.
# Each person should automatically be given an account number which is a randomized ten digit number.
# After the user is finished, the program should print out all the users. For example:

# users = [
#   {
#     "first_name" => "Clai",
#     "last_name" => "Crisostomo",
#     "email" => "claiacrisostomo@gmail.com"
#   },
#   {
#     "first_name" => "Leon",
#     "last_name" => "Shimizu",
#     "email" => "lmshimizu@gmail.com"
#   },
#   {
#     "first_name" => "John",
#     "last_name" => "Shimizu",
#     "email" => "jgs@ambrosguam.com"
#   },
#   {
#     "first_name" => "Dafne",
#     "last_name" => "Shimizu",
#     "email" => "dafne.shimizu@gmail.com"
#   },
#   {
#     "first_name" => "Stassie",
#     "last_name" => "Shimizu",
#     "email" => "stassie.shimizu@gmail.com"
#   }
# ]

users = []

5.times do
  puts "Please enter your first name, last name, and email:"
  fn = gets.chomp
  ln = gets.chomp
  e = gets.chomp
  n = rand(10 ** 10)

  users << {"FIRST": fn, "LAST": ln, "EMAIL": e, "ACCT #": n}
end

p users

# practice with the rand(10 ** 10)