; Minimal system settings to load as early as possible
(mmm/load-file "system/minimal")

; Load system specific settings
(mmm/load-file (concat "system/" (symbol-name system-type)) t)

; Load host specific settings
(mmm/load-file (concat "system/" system-name) t)
