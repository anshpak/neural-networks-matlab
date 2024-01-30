function [point] = get_left_segment_point(line_segment)
    if all(line_segment(:, 1) == line_segment(1, 1))
        point_index = find(line_segment(:, 2) == min(line_segment(:, 2)));
        point = line_segment(point_index, :);
    else
        point_index = find(line_segment(:, 1) == min(line_segment(:, 1)));
        point = line_segment(point_index, :);
    end
end