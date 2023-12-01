sum = 0

valid = {
    "1" => "1",
    "2" => "2",
    "3" => "3",
    "4" => "4",
    "5" => "5",
    "6" => "6",
    "7" => "7",
    "8" => "8",
    "9" => "9",
    "0" => "0",
    "one" => "1",
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9",
    "zero" => "0"
}

File.readlines('input', chomp: true).each do |line|

    # check all of 'em brute force dammit
    first_pos = 10000
    last_pos = -1

    first = nil
    last = nil

    valid.each do |k,v|
        i = line.index(k)
        last_i = line.rindex(k)
        next if i.nil?

        if i < first_pos
            first_pos = i
            first = v
        end
        if last_i > last_pos
            last_pos = last_i
            last = v
        end 
    end

    str = first + last
    sum = sum + str.to_i
end

puts sum