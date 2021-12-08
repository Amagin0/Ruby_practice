

n = 0
while n < 15 do 
    n += 1

    if n % 15 == 0
        puts 'Fizz_Buzz'

    elsif n % 3 == 0
        puts 'Fizz'

    elsif n % 5 == 0
        puts 'Buzz'
    else
        puts n.to_s
    end
end

i = 0
loop do
    i += 1
    break if i == 16

    if i % 15 == 0
        puts 'Fizz_Buzz'

    elsif i % 3 == 0
        puts 'Fizz'

    elsif i % 5 == 0
        puts 'Buzz'
    else
        puts i.to_s
    end
end

1.step(15, 1) { |j| 
    if j % 15 == 0
        puts 'Fizz_Buzz'

    elsif j % 3 == 0
        puts 'Fizz'

    elsif j % 5 == 0
        puts 'Buzz'
    else
        puts j.to_s
    end
}

(1..15).each do |h|
    if h % 15 == 0
        puts 'Fizz_Buzz'

    elsif h % 3 == 0
        puts 'Fizz'

    elsif h % 5 == 0
        puts 'Buzz'
    else
        puts h.to_s
    end
end