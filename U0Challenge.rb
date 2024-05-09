# challenge Zero
# Name:Uchechukwu Nwokolo
# Date: 08/05/2024


#  1. Write a Ruby program to calculate the after tax value of a specific dollar amount.

sub_total = 5.00
PST = 0.07
GST = 0.05

pst_amount = sub_total * PST
gst_amount = sub_total * GST
grand_total = pst_amount + gst_amount + sub_total

puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % pst_amount} - #{(PST * 100).to_i}%"
puts "GST: $#{'%.2f' % gst_amount} - #{(GST * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# 2) Update your Ruby program from question one such that it prints a short message after the grand total.

if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end

# 3) Do some research online to figure out how to read keyboard input from Ruby and how to convert strings into floats.

# Constants
NEW_GST_RATE = 0.05
NEW_PST_RATE = 0.07

# Input
print "Enter the subtotal: "
user_sub_total = gets.chomp.to_f

# Calculations
user_gst_amount = user_sub_total * NEW_GST_RATE
user_pst_amount = user_sub_total * NEW_PST_RATE
user_grand_total = user_sub_total + user_gst_amount + user_pst_amount

# Output
puts "Subtotal: $#{'%.2f' % user_sub_total}"
puts "PST: $#{'%.2f' % user_pst_amount} - #{(NEW_PST_RATE * 100).to_i}%"
puts "GST: $#{'%.2f' % user_gst_amount} - #{(NEW_GST_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % user_grand_total}"

# Message
if user_grand_total <= 5.00
  puts "Pocket Change"
elsif user_grand_total < 20
  puts "Wallet Time"
else
  puts "Charge It!"
end
