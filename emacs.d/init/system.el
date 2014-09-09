; Minimal system settings to load as early as possible
(mmm/load-file "system/minimal" t)

; Load system specific settings
(mmm/load-file
 (concat "system/" (mmm/replace-in-string "/" "_" (symbol-name system-type))) t)

; Load host specific settings
(mmm/load-file (concat "system/" system-name) t)
