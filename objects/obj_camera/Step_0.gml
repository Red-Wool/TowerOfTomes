/// @description Insert description here
// You can write your code in this editor

var _cam_x
var _cam_y

follow_cam_x = lerp(follow_cam_x, global.player_x, .1)
follow_cam_y = lerp(follow_cam_y, global.player_y, .1)

global.camera_x = lerp(follow_cam_x, mouse_x, .3)
global.camera_y = lerp(follow_cam_y, mouse_y, .3)

x = global.camera_x
y = global.camera_y
