#!/usr/bin/ruby

$time_point=Time.now
$time_buffer=0

def get_frame_time
    diff = Time.now - $time_point
    $time_point = Time.now
    return diff
end

def gravity
    if ($posY < $WORLD_SIZE_Y)
        $posY += 1
    end
end

def game_engine_tick
    $time_buffer += get_frame_time
    if ($time_buffer > 0.2)
        gravity
        $time_buffer = 0
    end
end
