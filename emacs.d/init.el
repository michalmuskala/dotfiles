(defun mmm/load-file (path &optional noerror)
  "This loads file from inside the .emacs.d directory"
  (let ((file (file-name-sans-extension
               (expand-file-name path user-emacs-directory))))
    (load file noerror)))

(mmm/load-file "init/system")
(mmm/load-file "init/packages")
(mmm/load-file "init/autoload")

(setq mmm-emacs-init-file
      (or load-file-name buffer-file-name))
(setq mmm-emacs-config-dir
      (file-name-directory mmm-emacs-init-file))
(setq user-emacs-directory mmm-emacs-config-dir)
(setq mmm-init-dir 
      (expand-file-name "init.d" mmm-emacs-config-dir))
(setq mmm-themes-dir 
      (expand-file-name "themes" mmm-emacs-config-dir))
(setq mmm-elisp-dir
      (expand-file-name "elisp" mmm-emacs-config-dir))

(setq custom-file
      (expand-file-name "customizations.el" mmm-emacs-config-dir))
(load custom-file)

(if (file-exists-p mmm-init-dir)
    (dolist (file (directory-files mmm-init-dir t "\\.el$"))
      (load file)))
