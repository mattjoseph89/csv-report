require "CSV"
require "pry"




data = {}
balance = {}

CSV.foreach("accounts.txt", {headers: true, return_headers: false}) do |row|
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        accounts = row ["Account"].chomp
        category = row ["Category"].chomp
        amount = (inflow - outflow)



def AcctBal
        if balance[accounts] == nil
            balance[accounts] = [amount]
        else
            balance[accounts] += [amount]
        end

def AcctEst
        if 
            data[accounts] == nil
            data[accounts] = {}
        end

def AcctCat
        if 
            data[accounts][category] == nil
            data[accounts][category] = [amount]
        else
            data[accounts][category] += [amount]
        end
end

input_array = ARGV

if input_array.include? "html"

    data.each do |account, categories|
      puts "<h1>#{account}</h1>"
      puts "<p>Total Balance: $#{balance[account].sum}</p>"
      puts "<hr>"
      puts "<table>"
      puts "    <tr>"
      puts "        <th>Category</th>"
      puts "        <th>Total Spent</th>"
      puts "      <th>Avg. Transaction</th>"
      puts "    </tr>"
    categories.each do |category, transactions|
      puts "\n"
      puts "    <tr>"
      puts "        <td>#{category}</td>"
      puts "        <td>$#{transactions.sum.round(2)}</td>"
      puts "        <td>$#{(transactions.sum.round(2)/transactions.count).round(2)}</td>"
      puts "    <tr>"
      end
    end

    elsif input_array.include? "csv"

    data.each do |account, categories|
      puts "Category, Total Spent, Average Transaction"
    categories.each do |category, transactions|
      puts "#{category}, $#{transactions.sum.round(2)}, $#{(transactions.sum.round(2)/transactions.count).round(2)}"
      end
    end

    # separate output by account (not working yet)
    elsif input_array.include? "#{"account"}"
      data.each  do |account, categories|
      puts "======================================================================"
      puts "Account: #{account}... Balance: $#{balance[account].sum}"
      puts "======================================================================"
      printf("%-29s%-14s%-27s\n", "Category", "Total Spent", "Average Transaction")
      puts "---------------------------- |------------ |--------------------------"
    categories.each do |category,transactions|
      printf("%-29s%-14s%-27s\n", "#{category}", "| $#{transactions.sum.round(2)}", "| $#{(transactions.sum.round(2)/transactions.count).round(2)}")
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
      end
    end

end

#---Tests-------------------------------------------------------------------------------------------------------------------------------------------------------------



#sums are being calculated correctly

# James = {Entertainment=> [50, 25.50, 34, 56, 90], Food=> [1000, 56.74, 83.13, 85.00]}




# test_input= James

# actual=test_input.sum

# expected = 100.00

# if expected != actual
#     puts "Fail!"

#     puts "\nExpected to get:"
#     print expected

#     puts "\nActually got:"
#     print actual
# else 
#     puts "Pass!"
# end



#averages are being calculated correctly





#list of unique categories is being built correctly




















