# Processing Element (PE) Behavior

Each PE receives:
- a_in: activation
- b_in: weight value
- cin: partial sum

The PE produces:
cout = (a_in * active_weight) + cin

Forwarding:
- a_out = a_in (to the right)
- b_out = b_in (downward)

Double Buffering:
- Each PE contains two weight registers:
    - active register (used in computation)
    - load register (loaded during preload phase)
- switch_buffer signal controls swapping.

