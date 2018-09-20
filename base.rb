#!/usr/bin/ruby

def cls
    if (OS.mac?)
        system "clear"
    elsif (OS.windows?)
        system "cls"
    else
        puts "os not supportet"
        exit
    end
end
