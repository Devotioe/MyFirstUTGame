var key_open = keyboard_check_pressed(ord("C"));


if (key_open && !opened && !instance_exists(obj_TextElement)){
    opened = true;
}
