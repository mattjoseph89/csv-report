require "CSV"
require "pry"

data = {}

CSV.foreach("accounts.txt", {headers: true, return_headers: false}) do |row|
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        a = row ["Account"].chomp
        category = row ["Category"]

        amount = (inflow - outflow)

        if data[a] == nil
            data[a] = {}
        # else
            # data[a] = data[a] + (inflow - outflow)
        end

        if data[a][category] == nil
            data[a][category] = []
        end

        if data[a][category]

        # if soniatable[b] == nil
        #    soniatable[b] = (inflow - outflow)
        # else
        #     soniatable[b] = soniatable[b] + (inflow - outflow)
        # end
end

puts data


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