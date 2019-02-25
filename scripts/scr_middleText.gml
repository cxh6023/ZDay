txt = argument0;
draw_set_colour(c_gray);
draw_set_font(fnt_default);
draw_text((view_xview[0])-(string_width(txt)/2)+(view_wview[0]/2), (view_yview[0]+(view_hview[0]/2)), txt);

//xview/yview
//wview/hview
//xport/yport
//wport/hport
//hborder/vborder
