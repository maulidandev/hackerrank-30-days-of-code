n = gets.to_i
puts n.to_s(2).split("0").max_by(&:length).length