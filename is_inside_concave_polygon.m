function [res] = is_inside_concave_polygon(point, polygon_points)
    count = 0;
    x = point(1);
    y = point(2);
    for i = 1:length(polygon_points)
        x1 = polygon_points(i, 1);
        y1 = polygon_points(i, 2);
        if i < length(polygon_points)
            x2 = polygon_points(i + 1, 1);
            y2 = polygon_points(i + 1, 2);
        else
            x2 = polygon_points(1, 1);
            y2 = polygon_points(1, 1);
        end
        if ((y1 <= y && y < y2) || (y2 <= y && y < y1)) && (x < (x2 - x1) * (y - y1) / (y2 - y1) + x1)
            count = count + 1;
        end
    end
    res = mod(count, 2) == 1;
end
