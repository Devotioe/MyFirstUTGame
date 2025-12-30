//Draw the bullet board
#region
draw_set_color(c_grey);
draw_rectangle(obj_bulletboard.current_l, obj_bulletboard.current_u, obj_bulletboard.current_r, obj_bulletboard.current_b, false);
draw_set_color(c_black);
draw_rectangle(obj_bulletboard.current_l + 5, obj_bulletboard.current_u + 5, obj_bulletboard.current_r - 5,obj_bulletboard.current_b - 5, false);
#endregion