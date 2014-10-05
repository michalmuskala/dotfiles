(defun mmm/load-file (path &optional noerror)
  "This loads file from inside the .emacs.d directory"
  (let ((file (file-name-sans-extension
               (expand-file-name path user-emacs-directory))))
    (load file noerror)))

(setq custom-file
      (expand-file-name "customizations.el" user-emacs-directory))
(load custom-file)

(mmm/load-file "init/system")
(mmm/load-file "init/packages")
(mmm/load-file "init/autoload")
(mmm/load-file "init/autohooks")
