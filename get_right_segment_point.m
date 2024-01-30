function [point] = get_right_segment_point(line_segment)
    point = line_segment(find(not(ismember(line_segment, get_left_segment_point(line_segment), 'rows')), 1), :);
end 