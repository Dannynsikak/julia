module Shape
export Square
export Rectangle
abstract type AbstractShape end
abstract type Polygon <: AbstractShape end
abstract type Irregular <: AbstractShape end

abstract type QuadriLateral <: Polygon end  # abstract type for four sided polygons

struct Square <: QuadriLateral
    len::Float64
    Square(len::AbstractFloat) = len < 0 ? error("Length is less than 0.") : new(convert(Float64, len))
    Square(len::Integer) = len < 0 ? error("Length is less than 0.") : new(convert(Float64, len))
end

struct Rectangle <: QuadriLateral
    len::Float64
    width::Float64
    function Rectangle(len::T, width::z) where T <: Union{AbstractFloat, Integer} where z <: Union{AbstractFloat, Integer}
        len < 0 && return error("Length is less than 0.")
        width < 0 && return error("Width is less than 0.")
        new(convert(Float64, len), convert(FLoat64, width))
    end
end

end # module Shape
