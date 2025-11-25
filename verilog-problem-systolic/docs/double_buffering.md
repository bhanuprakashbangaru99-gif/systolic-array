# Double Buffering in Systolic Array

Purpose:
Load next B matrix while current multiplication is running.

Mechanics:
- load_buffer stores incoming weights
- active_buffer stores weights for current compute
- switch_buffer swaps active and load registers

This prevents the array from stalling between multiplications.
