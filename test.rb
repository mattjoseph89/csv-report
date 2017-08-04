require "CSV"
require "pry"

    data = {}
    soniatable = {}

CSV.foreach("accounts.txt", {headers: true, return_headers: false}) do |row|
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        a = row ["Account"].chomp
        b = row ["Category"]

        if data[a] == nil
            data[a] = (inflow - outflow)
        else
            data[a] = data[a] + (inflow - outflow)
        end

        if soniatable[b] == nil && data[a]
            soniatable[b] = (inflow - outflow)
        else
            soniatable[b] = soniatable[b] + (inflow - outflow)
        end
end

    puts soniatable