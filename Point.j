library Point
    globals
        private location l = Location(0,0)
    endglobals
    public function Z takes real x,real y returns real
        call MoveLocation(l,x,y)
        return GetLocationZ(l)
    endfunction
endlibrary