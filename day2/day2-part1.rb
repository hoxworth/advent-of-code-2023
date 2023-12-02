sum = 0

max = {
    "blue" => 14,
    "green" => 13,
    "red" => 12
}

File.readlines('input', chomp: true).each do |line|
    game,rest = line.split(":")
    grabs = rest.split(";")

    good = true

    grabs.each do |grab|
        blocks = grab.split(",")
        blocks.each do |grab|
            count,color = grab.split(" ")
            if (max[color] < count.to_i)
                good = false
                break
            end
        end
    end

    if good
        a,game_id = game.split(" ")
        sum = sum + game_id.to_i
    end
end

puts sum