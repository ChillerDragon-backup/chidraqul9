#!/usr/bin/ruby

#$world = Array.new($WORLD_SIZE_X, '_')
$WORLD_SIZE_X = 10
$world = ""

def update_world
    #$world.each { |x| x='_' }
    $world=""
    for i in 0..$WORLD_SIZE_X
        $world += '_'
    end
    $world[$pos] = 'x'
end

def print_world
    update_world
    cls
    puts $world
end


