# https://www.hackerrank.com/challenges/utopian-tree

def utopian_tree (n)
    x = 1
    n.times do |u|
        if (u+1)%2 == 1
            x *= 2
        else
            x += 1
        end
    end
    return x
end
t = gets.to_i
(0...t).each do |i|
    lis = gets.strip.split(" ")
    n = lis[0].to_i
    res = utopian_tree(n)
    puts res
end
