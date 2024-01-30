function [answer] = is_inside_polygon(polygon_points, point)
    res = [];
    for i= 1:length(polygon_points) - 1
        res = [res get_algebraic_square(polygon_points(i, :), polygon_points(i + 1, :), point) < 0];
    end
    answer = all(res);
end