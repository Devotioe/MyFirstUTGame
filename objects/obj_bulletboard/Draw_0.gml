//Draw the bullet board
#region
draw_set_alpha(1)
draw_set_color(c_grey);
draw_rectangle(current_l, current_u, current_r, current_b, false);
draw_set_alpha(1)
draw_set_color(c_black);
draw_rectangle(current_l + 5, current_u + 5, current_r - 5,current_b - 5, false);
draw_set_alpha(1)
#endregion