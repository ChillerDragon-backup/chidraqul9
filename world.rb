#!/usr/bin/ruby

#$world = Array.new($WORLD_SIZE_X, '_')
$WORLD_SIZE_X = 10
$WORLD_SIZE_Y = 3
$world = ""

def update_world
    #$world.each { |x| x='_' }
    $world=""
    for y in 0..$WORLD_SIZE_Y
        for x in 0..$WORLD_SIZE_X
            $world += '_'
        end
        $world += "\n"
    end
    $world[GetIndexByCoord($posX, $posY)] = 'x'
end

def print_world
    update_world
    cls
    puts $world
end


