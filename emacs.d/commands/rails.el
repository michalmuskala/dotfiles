(require 'cl-macs)

;;;###autoload
(defun mmm/rails-console ()
  "Invoke inf-ruby with Rails environment loaded."
  (interactive)
  (let ((config (mmm/find-in-path "config/environment.rb")))
    (if config
        (let ((binstub (concat (file-name-directory
                                (substring (file-name-directory config) 0 -1))
                               "bin/rails")))
          (if (file-exists-p binstub)
              (run-ruby (concat binstub " console") "rails")
            (run-ruby "bundle exec rails console" "rails"))))))
