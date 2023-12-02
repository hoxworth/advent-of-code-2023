sum = 0

File.readlines('input', chomp: true).each do |line|
    game,rest = line.split(":")
    grabs = rest.split(";")

    max = {}

    grabs.each do |grab|
        blocks = grab.split(",")
        blocks.each do |grab|
            count,color = grab.split(" ")
    
            if !max.has_key?(color)
                max[color] = 0
            end
            
            if max[color] < count.to_i
                max[color] = count.to_i
            end
        end
    end

    power = 1

    max.each do |k,v|
        power = power * v
    end

    sum = sum + power
end

puts sum