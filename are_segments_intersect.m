function [answer] = are_segments_intersect(line_segment1, line_segment2)
    lines_intersection_point = get_lines_intersection(line_segment1, line_segment2);
    p = [get_parameter(line_segment1, lines_intersection_point) get_parameter(line_segment2, lines_intersection_point)];
    answer = all(all(p >= 0) && all(p <= 1));
end