#!/usr/bin/ruby

def GetIndexByCoord(x,y)
    #add 2 to w size x because the newline counts as index
    return y * ($WORLD_SIZE_X + 2) + x
end
