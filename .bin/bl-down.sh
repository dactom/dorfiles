#!/bin/sh
bl_device=/sys/class/backlight/amdgpu_bl0/brightness
echo $(($(cat $bl_device)-10)) > $bl_device
