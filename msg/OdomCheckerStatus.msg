# Copyright (c) 2024, LexxPluss Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Header header

# values
float64 odom_diff_vx
float64 odom_diff_wz
float64 odom_vxdt
float64 odom_wzdt

float64 amcl_error_x
float64 amcl_error_y
float64 amcl_error_yaw

float64 imu_error_wz
float64 imu_error_ax
float64 imu_error_ay

float64 ax_from_odom
float64 ay_from_odom

float64 left_wheel_acc
float64 right_wheel_acc

float64 left_wheel_jerk
float64 right_wheel_jerk


# validation flags
bool has_invalid_field

bool has_large_odom_diff_vx
bool has_large_odom_diff_wz
bool has_large_odom_vxdt
bool has_large_odom_wzdt

bool has_large_amcl_error_x
bool has_large_amcl_error_y
bool has_large_amcl_error_yaw

bool has_large_imu_error_wz
bool has_large_imu_error_ax
bool has_large_imu_error_ay

bool has_large_left_wheel_acc
bool has_large_right_wheel_acc

bool has_large_wheel_resistance
bool has_wheel_stuck

# for filtering values
sensor_msgs/Imu imu_raw
sensor_msgs/Imu imu_filtered
geometry_msgs/Twist odom_raw
geometry_msgs/Twist odom_filtered
float64 left_velocity_raw
float64 left_velocity_filtered
float64 right_velocity_raw
float64 right_velocity_filtered
