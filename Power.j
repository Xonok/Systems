library Power initializer in requires Utils
    globals
        integer array cPow2
        integer array cPow3
    endglobals
    function iPow takes integer i, integer pow returns integer
        local integer rt = i
        if pow == 0 then
            return 1
        endif
        loop
            exitwhen pow == 1
            set rt = rt*i
            set pow = pow - 1
        endloop
        return rt
    endfunction
    private function in takes nothing returns nothing
        local integer i = 0
        local integer j = 1
        loop
            exitwhen i > 30
            set cPow2[i] = j
            set j = j*2
            set i = i + 1
        endloop
        set i = 0
        set j = 1
        loop
            exitwhen i > 19
            set cPow3[i] = j
            set j = j*3
             set i = i + 1
        endloop
    endfunction
endlibrary