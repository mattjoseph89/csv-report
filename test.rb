require "CSV"

pbalance_totals = []
pallowance_totals = []
pallowance_average = []
pcar_totals = []
pcar_average = []
prent_totals = []
prent_average = []
pent_totals = []
pent_average = []
pfuel_totals = []
pfuel_average = []
pgroceries_totals = []
pgroceries_average = []
pmeals_totals = []
pmeals_average = []
pclothes_totals = []
pclothes_average = []
peducation_totals = []
peducation_average = []
pdonations_totals = []
pdonations_average = []
putilities_totals = []
putilities_average = []
pgifts_totals = []
pgifts_average = []

sbalance_totals = []
sallowance_totals = []
sallowance_average = []
shouse_totals = []
shouse_average = []
sclothes_totals = []
sclothes_average = []
sent_totals = []
sent_average = []
sutilities_totals = []
sutilities_average = []
sgroceries_totals = []
sgroceries_average = []
seducation_totals = []
seducation_average = []
sgifts_totals = []
sgifts_average = []
sgym_totals = []
sgym_average = []
smed_totals = []
smed_average = []

CSV.foreach("accounts.txt", {headers: true, return_headers: false}) do |row|
    if row["Account"].chomp == "Priya" 
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pbalance_totals.push row_total
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Allowance"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pallowance_totals.push row_total
        pallowance_average = pallowance_totals.sum / pallowance_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Car Repairs"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pcar_totals.push row_total
        pcar_average = pcar_totals.sum / pcar_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Rent"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        prent_totals.push row_total
        prent_average = prent_totals.sum / prent_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Entertainment"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pent_totals.push row_total
        pent_average = pent_totals.sum / pent_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Fuel"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pfuel_totals.push row_total
        pfuel_average = pfuel_totals.sum / pfuel_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Groceries"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pgroceries_totals.push row_total
        pgroceries_average = pgroceries_totals.sum / pgroceries_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Meals"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pmeals_totals.push row_total
        pmeals_average = pmeals_totals.sum / pmeals_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Clothes"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pclothes_totals.push row_total
        pclothes_average = pclothes_totals.sum / pclothes_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Education"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        peducation_totals.push row_total
        peducation_average = peducation_totals.sum / peducation_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Donations"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pdonations_totals.push row_total
        pdonations_average = pdonations_totals.sum / pdonations_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Utilities"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        putilities_totals.push row_total
        putilities_average = putilities_totals.sum / putilities_totals.count
    end

    if row["Account"].chomp == "Priya" && row["Category"].chomp == "Gifts"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total =  inflow - outflow
        pgifts_totals.push row_total
        pgifts_average = pgifts_totals.sum / pgifts_totals.count
    end

    if row["Account"].chomp == "Sonia" 
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sbalance_totals.push row_total
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Allowance"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sallowance_totals.push row_total
        sallowance_average = sallowance_totals.sum / sallowance_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Household Goods"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        shouse_totals.push row_total
        shouse_average = shouse_totals.sum / shouse_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Clothes"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sclothes_totals.push row_total
        sclothes_average = sclothes_totals.sum / sclothes_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Entertainment"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sent_totals.push row_total
        sent_average = sent_totals.sum / sent_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Utilities"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sutilities_totals.push row_total
        sutilities_average = sutilities_totals.sum / sutilities_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Groceries"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sgroceries_totals.push row_total
        sgroceries_average = sgroceries_totals.sum / sgroceries_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Education"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        seducation_totals.push row_total
        seducation_average = seducation_totals.sum / seducation_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Gifts"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sgifts_totals.push row_total
        sgifts_average = sgifts_totals.sum / sgifts_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Gym"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        sgym_totals.push row_total
        sgym_average = sgym_totals.sum / sgym_totals.count
    end

    if row["Account"].chomp == "Sonia" && row["Category"].chomp == "Medical/Dental"
        inflow = row["Inflow"].gsub(/[^\d\.]/, '').to_f
        outflow = row["Outflow"].gsub(/[^\d\.]/, '').to_f
        row_total = inflow - outflow
        smed_totals.push row_total
        smed_average = smed_totals.sum / smed_totals.count
    end
end

input_array = ARGV

if input_array.include? "Sonia"
puts ("==================================================================")
puts ("Account: Sonia...Balance: $#{sbalance_totals.sum}")
puts ("==================================================================")
puts ("Category          | Total Spent | Average Transaction")
puts ("----------------- | ----------- | ---------------------------------")
puts ("Allowance         | $#{sallowance_totals.sum}     | $#{sallowance_average.round(2)}")
puts ("Household Goods   | $#{shouse_totals.sum}    | $#{shouse_average.round(2)}")
puts ("Clothes           | $#{sclothes_totals.sum}     | $#{sclothes_average.round(2)}")
puts ("Entertainment     | $#{sent_totals.sum}     | $#{sent_average.round(2)}")
puts ("Utilities         | $#{sutilities_totals.sum}    | $#{sutilities_average.round(2)}")
puts ("Groceries         | $#{sgroceries_totals.sum.round(2)}    | $#{sgroceries_average.round(2)}")
puts ("Education         | $#{seducation_totals.sum}     | $#{seducation_average.round(2)}")
puts ("Gifts             | $#{sgifts_totals.sum}     | $#{sgifts_average.round(2)}")
puts ("Gym               | $#{sgym_totals.sum}     | $#{sgym_average.round(2)}")
puts ("Medical/Dental    | $#{smed_totals.sum.round(2)}     | $#{smed_average.round(2)}")
elsif input_array.include? "Priya"
puts ("==================================================================")
puts ("Account: Priya...Balance: $#{pbalance_totals.sum}")
puts ("==================================================================")
puts ("Category          | Total Spent | Average Transaction")
puts ("----------------- | ----------- | ---------------------------------")
puts ("Allowance         | $#{pallowance_totals.sum}     | $#{pallowance_average.round(2)}")
puts ("Car repairs       | $#{pcar_totals.sum}      | $#{pcar_average.round(2)}")
puts ("Rent              | $#{prent_totals.sum}    | $#{prent_average.round(2)}")
puts ("Entertainment     | $#{pent_totals.sum}    | $#{pent_average.round(2)}")
puts ("Fuel              | $#{pfuel_totals.sum}     | $#{pfuel_average.round(2)}")
puts ("Groceries         | $#{pgroceries_totals.sum.round(2)}    | $#{pgroceries_average.round(2)}")
puts ("Meals             | $#{pmeals_totals.sum}     | $#{pmeals_average.round(2)}")
puts ("Clothes           | $#{pclothes_totals.sum}      | $#{pclothes_average.round(2)}")
puts ("Education         | $#{peducation_totals.sum}    | $#{peducation_average.round(2)}")
puts ("Donations         | $#{pdonations_totals.sum}       | $#{pdonations_average.round(2)}")
puts ("Utilities         | $#{putilities_totals.sum}     | $#{putilities_average.round(2)}")
puts ("Gifts             | $#{pgifts_totals.sum}    | $#{pgifts_average.round(2)}")
else
puts ("==================================================================")
puts ("Account: Priya...Balance: $#{pbalance_totals.sum}")
puts ("==================================================================")
puts ("Category          | Total Spent | Average Transaction")
puts ("----------------- | ----------- | ---------------------------------")
puts ("Allowance         | $#{pallowance_totals.sum}     | $#{pallowance_average.round(2)}")
puts ("Car repairs       | $#{pcar_totals.sum}      | $#{pcar_average.round(2)}")
puts ("Rent              | $#{prent_totals.sum}    | $#{prent_average.round(2)}")
puts ("Entertainment     | $#{pent_totals.sum}    | $#{pent_average.round(2)}")
puts ("Fuel              | $#{pfuel_totals.sum}     | $#{pfuel_average.round(2)}")
puts ("Groceries         | $#{pgroceries_totals.sum.round(2)}    | $#{pgroceries_average.round(2)}")
puts ("Meals             | $#{pmeals_totals.sum}     | $#{pmeals_average.round(2)}")
puts ("Clothes           | $#{pclothes_totals.sum}      | $#{pclothes_average.round(2)}")
puts ("Education         | $#{peducation_totals.sum}    | $#{peducation_average.round(2)}")
puts ("Donations         | $#{pdonations_totals.sum}       | $#{pdonations_average.round(2)}")
puts ("Utilities         | $#{putilities_totals.sum}     | $#{putilities_average.round(2)}")
puts ("Gifts             | $#{pgifts_totals.sum}    | $#{pgifts_average.round(2)}")
puts ("")
puts ("")
puts ("==================================================================")
puts ("Account: Sonia...Balance: $#{sbalance_totals.sum}")
puts ("==================================================================")
puts ("Category          | Total Spent | Average Transaction")
puts ("----------------- | ----------- | ---------------------------------")
puts ("Allowance         | $#{sallowance_totals.sum}     | $#{sallowance_average.round(2)}")
puts ("Household Goods   | $#{shouse_totals.sum}    | $#{shouse_average.round(2)}")
puts ("Clothes           | $#{sclothes_totals.sum}     | $#{sclothes_average.round(2)}")
puts ("Entertainment     | $#{sent_totals.sum}     | $#{sent_average.round(2)}")
puts ("Utilities         | $#{sutilities_totals.sum}    | $#{sutilities_average.round(2)}")
puts ("Groceries         | $#{sgroceries_totals.sum.round(2)}    | $#{sgroceries_average.round(2)}")
puts ("Education         | $#{seducation_totals.sum}     | $#{seducation_average.round(2)}")
puts ("Gifts             | $#{sgifts_totals.sum}     | $#{sgifts_average.round(2)}")
puts ("Gym               | $#{sgym_totals.sum}     | $#{sgym_average.round(2)}")
puts ("Medical/Dental    | $#{smed_totals.sum.round(2)}     | $#{smed_average.round(2)}")
end
