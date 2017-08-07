require "CSV"
require "pry"

data = {}
balance = {}
individual = {}

CSV.foreach("accounts.txt", {headers: true, return_headers: false}) do |row|
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        accounts = row ["Account"].chomp
        category = row ["Category"].chomp
        amount = (inflow - outflow)

        if balance[accounts] == nil
            balance[accounts] = [amount]
        else
            balance[accounts] += [amount]
        end


        if 
            data[accounts] == nil
            data[accounts] = {}
        end


        if 
            data[accounts][category] == nil
            data[accounts][category] = [amount]
        else
            data[accounts][category] += [amount]
        end
end

input_array = ARGV

# if input_array.include? "html"

# data.each do |account, categories|
#   puts "<h1>#{account}</h1>"
#   puts "<p>Total Balance: $#{balance[account].sum}</p>"
#   puts "<hr>"
#   puts "<table>"
#   puts "    <tr>"
#   puts "        <th>Category</th>"
#   puts "        <th>Total Spent</th>"
#   puts "      <th>Avg. Transaction</th>"
#   puts "    </tr>"
# categories.each do |category, transactions|
#   puts "\n"
#   puts "    <tr>"
#   puts "        <td>#{category}</td>"
#   puts "        <td>$#{transactions.sum.round(2)}</td>"
#   puts "        <td>$#{(transactions.sum.round(2)/transactions.count).round(2)}</td>"
#   puts "    <tr>"
#   end
#   end


if input_array.include? "#{}"
  data.each  do |account, categories|
  puts "======================================================================"
  puts "Account: #{account}... Balance: $#{balance[account].sum}"
  puts "======================================================================"
  printf("%-29s%-14s%-27s\n", "Category", "Total Spent", "Average Transaction")
  puts "---------------------------- |------------ |--------------------------"
categories.each do |category,transactions|
  printf("%-29s%-14s%-27s\n", "#{category}", "| $#{transactions.sum.round(2)}", "| $#{(transactions.sum.round(2)/transactions.count).round(2)}")
  #puts  "#{category} $#{transactions.sum.round(2)} $#{(transactions.sum.round(2)/transactions.count).round(2)}"
  end
  end

  
else

data.each  do |account, categories|
  puts "======================================================================"
  puts "Account: #{account}... Balance: $#{balance[account].sum}"
  puts "======================================================================"
  printf("%-29s%-14s%-27s\n", "Category", "Total Spent", "Average Transaction")
  puts "---------------------------- |------------ |--------------------------"
categories.each do |category,transactions|
  printf("%-29s%-14s%-27s\n", "#{category}", "| $#{transactions.sum.round(2)}", "| $#{(transactions.sum.round(2)/transactions.count).round(2)}")
  #puts  "#{category} $#{transactions.sum.round(2)} $#{(transactions.sum.round(2)/transactions.count).round(2)}"
  end
  end

end