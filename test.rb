require "CSV"
require "pry"

data = {}

CSV.foreach("accounts.txt", {headers: true, return_headers: false}) do |row|
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        accounts = row ["Account"].chomp
        category = row ["Category"].chomp
        amount = (inflow - outflow)


        if data[accounts] == nil
            data[accounts] = {}

        end

        if data[accounts][category] == nil
            data[accounts][category] = [amount]

        else data[accounts][category]+= [amount]

        end

        # if soniatable[b] == nil
        #    soniatable[b] = (inflow - outflow)
        # else
        #     soniatable[b] = soniatable[b] + (inflow - outflow)
        # end
end

data.each  do |account, categories|
  puts "============================"
  puts "#{account}"
  puts "============================"
  puts "Category    | Total Spent | Average Transaction   "
  puts "----------------------------"
  categories.each do |category,transactions|
    puts "#{category}  #{transactions.sum.round(2)}"
  end
end


# puts data



# data = 
#   priya
#     allowance: [n, n, n]
#     dinig: [n, n, n]
#     gym: [n, n, n]
#   sonia
#     allowance: [n,n,n]
#     fuel: [n, n]

# data =  {
#     "prya" => {
#         "allowance" => [332, 654],
#         "dining" => [332, 654],
#         "gym" => [332, 654]
#     },

#     "sonia" => {
#         "allowance" => [312, 312],
#         "fueld" => [3243423, 423423]
#     }
# }

