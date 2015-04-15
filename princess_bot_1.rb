# https://www.hackerrank.com/challenges/saveprincess
def displayPathtoPrincess(n,grid)
    if grid[0][0] == 'p'#topleft
        (n/2).times{puts 'LEFT'}
        (n/2).times{puts 'UP'}
    elsif grid[0][n-1] == 'p'#topright
        (n/2).times{puts 'RIGHT'}
        (n/2).times{puts 'UP'}
    elsif grid[n-1][0] == 'p'#bottom left
        (n/2).times{puts 'LEFT'}   
        (n/2).times{puts 'DOWN'}
    elsif grid[n-1][n-1] == 'p'#bottom right
        (n/2).times{puts 'RIGHT'}
        (n/2).times{puts 'DOWN'}
    end

end
m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
