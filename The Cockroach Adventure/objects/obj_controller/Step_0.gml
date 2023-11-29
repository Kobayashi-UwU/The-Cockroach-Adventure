/// Step Event of obj_controller
if (keyboard_check_pressed(ord("E"))) {
    obj_textbox.display_text = "This is the text you want to display.";
    obj_textbox.show_text = !obj_textbox.show_text;
}
