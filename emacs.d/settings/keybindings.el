(global-undo-tree-mode t)

; disable those awful tabs
(setq-default indent-tabs-mode nil)

(global-set-key [C-S-up]   'move-text-up)
(global-set-key [C-S-down] 'move-text-down)
(global-set-key [C-return] 'mmm/open-line-below)
(global-set-key [C-S-return] 'mmm/open-line-above)
