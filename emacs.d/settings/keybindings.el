(global-undo-tree-mode t)

; disable those awful tabs
(setq-default indent-tabs-mode nil)

;; Navigation
(global-set-key (kbd "C-S-<up>")   'move-text-up)
(global-set-key (kbd "C-S-<down>") 'move-text-down)
(global-set-key (kbd "C-<return>") 'mmm/open-line-below)
(global-set-key (kbd "C-S-<return>") 'mmm/open-line-above)
(global-set-key (kbd "C-M-<return>") 'mmm/open-line-between)
(global-set-key (kbd "M-<down>") 'mmm/other-window-next-line)
(global-set-key (kbd "M-<up>") 'mmm/other-window-previous-line)

;; Comments
(global-set-key (kbd "M-;") 'mmm/comment-or-uncomment-region-or-line)

;; Killing
(global-set-key (kbd "C-k") 'mmm/kill-and-trim)

;; Spelling
(global-set-key (kbd "C-c T s") 'mmm/toggle-spelling)
(global-set-key (kbd "C-c T S") 'mmm/toggle-program-spelling)

;; Expand region
(global-set-key (kbd "s-e") 'er/expand-region)

;; Basic multiple cursors
(global-set-key (kbd "s-c l") 'mc/edit-lines)
(global-set-key (kbd "s-c e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "s-c a") 'mc/edit-beginnings-of-lines)

;; Mark additional regions matching current region
(global-set-key (kbd "s-q a") 'mc/mark-all-dwim)
(global-set-key (kbd "s-q q") 'mc/mark-all-like-this)
(global-set-key (kbd "s-q p") 'mc/mark-previous-like-this)
(global-set-key (kbd "s-q n") 'mc/mark-next-like-this)

;; Symbol and word specific mark-more
(global-set-key (kbd "s-q w n") 'mc/mark-next-word-like-this)
(global-set-key (kbd "s-q w p") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "s-q w a") 'mc/mark-all-words-like-this)
(global-set-key (kbd "s-q s n") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "s-q s p") 'mc/mark-previous-symbol-like-this)
(global-set-key (kbd "s-q s a") 'mc/mark-all-symbols-like-this)

;; Extra multiple cursors stuff
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
