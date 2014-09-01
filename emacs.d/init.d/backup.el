; backup
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))
(setq backup-by-copying t)
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)
 
; autosave
(defvar autosave-dir (expand-file-name "autosave/" user-emacs-directory))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms
      `((".*" ,autosave-dir t)))
 
