function [square] = get_algebraic_square(point1, point2, point3)
    square = 1 / 2 * det([point2 - point1; point3 - point1]);
end