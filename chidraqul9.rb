#!/usr/bin/ruby

require_relative 'game_engine'
require_relative 'game_base'
require_relative 'world'
require_relative 'hud'
require_relative 'keypresses'
require_relative 'other/os/lib/os'
require_relative 'base'
require_relative 'menu'

$posX=0
$posY=0
$menu = MainMenu.new
$options = Options.new

#entry point
def init_game
    menu_main
end

def menu_main
    $menu.main
end

def options_main
    $options.main
end

def move_down
    if ($posY < $WORLD_SIZE_Y)
        $posY += 1
    end
end

def move_up
    if ($posY > 0)
        $posY -= 1
    end
end

def move_right
    if ($posX < $WORLD_SIZE_X)
        $posX += 1
    end
end

def move_left
    if ($posX > 0)
        $posX -= 1
    end
end

def game_main
    loop do
        keypress_tick
        game_engine_tick
        print_world
        print_hud
    end
end

if __FILE__ == $0
  init_game
end
