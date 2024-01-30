function [intersection_point] = get_lines_intersection(line_segment1, line_segment2)
    c1 = line_segment1(:, 1) .* flip(line_segment1(:, 2));
    c2 = line_segment2(:, 1) .* flip(line_segment2(:, 2));
    c1 = c1(1) - c1(2);
    c2 = c2(1) - c2(2); 
    ab1 = line_segment1(2, :) - line_segment1(1, :);
    ab2 = line_segment2(2, :) - line_segment2(1, :);
    ab1 = [-1 * ab1(2) ab1(1)];
    ab2 = [-1 * ab2(2) ab2(1)];
    y = (c1 * ab2(1) - c2 * ab1(1)) / (ab1(1) * ab2(2) - ab2(1) * ab1(2));
    x = (ab1(2) * c2 - ab2(2) * c1) / (ab1(1) * ab2(2) - ab2(1) * ab1(2));
    intersection_point = [x, y];
end