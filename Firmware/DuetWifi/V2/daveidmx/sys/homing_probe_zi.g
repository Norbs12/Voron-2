;; The inductive equivalent to the mechanical script.
;; Not frequently used since my inductive probe settings aren't calibrated to nozzle height.
;; Mostly useful for zeroing inductive height before a G29 bed map.

M98 P"moveto_iswitch_safexy.g"

M98 P"drive_z_downcurrent.g"

M98 P"zprobe_use_ifast.g"
G30                             ; z-probe as configured

M98 P"drive_z_fullcurrent.g"

M98 P"zprobe_use_islow.g"
G30                             ; z-probe as configured

M98 P"zprobe_use_ifast.g"       ; restore default probe settings
