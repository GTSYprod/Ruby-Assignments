# Mason Rhodes
# Ultimate Challenge Zero
# September 3rd 2025

# Grab a dollar value from user
print "Enter a dollar value: "
sub_total = gets.chomp.to_f

# Grab the GST/PST rates
print "Enter the GST rate: "
GST_RATE = (gets.chomp.to_f) / 100
print "Enter the PST rate: "
PST_RATE = (gets.chomp.to_f) / 100

# Calculate grand total
grand_total = sub_total * (1 + GST_RATE + PST_RATE)

# Output in proper format
puts "\nSubtotal: $#{sub_total}"
puts "GST: $#{'%.2f' % (sub_total * GST_RATE)} - #{(GST_RATE * 100).to_i}%"
puts "PST: $#{'%.2f' % (sub_total * PST_RATE)} - #{(PST_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Checks the grand total and outputs the appropriate message
if grand_total <= 5
  puts "Pocket Change"
elsif grand_total > 5 && grand_total < 20
  puts "Wallet Time"
elsif grand_total >= 20
  puts "Charge It!"
end