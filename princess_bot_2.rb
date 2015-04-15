# https://www.hackerrank.com/challenges/saveprincess2

def nextMove(n,r,c,grid)
    prow = -1
    pcol = -1
    (0..n-1).each do |row|
        (0..n-1).each do |col|
            if grid[row][col] == 'p'
                prow = row
                pcol = col
            end
        end
    end
    if r==prow#same row
        if pcol < c
            puts 'LEFT'
            return
        else
            puts 'RIGHT'
            return
        end
    elsif c==pcol#same col
        if prow < r
            puts 'DOWN'
            return
        else
            puts 'UP'
            return
        end
    else
        if prow < r
            puts 'UP'
            return
        else
            puts 'DOWN'
            return
        end
    end
end
n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
