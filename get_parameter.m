function [p] = get_parameter(line_segment, point)
    line_segment = [get_right_segment_point(line_segment); get_left_segment_point(line_segment)];
    p = (point - line_segment(2, :)) / (line_segment(1, :) - line_segment(2, :));
end