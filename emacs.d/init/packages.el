(require 'package)

(dolist (repo '(("marmalade" . "http://marmalade-repo.org/packages/")
                ("ELPA"      . "http://tromey.com/elpa/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")
                ("org"       . "http://orgmode.org/elpa/")))
  (add-to-list 'package-archives repo))

(package-initialize)

;; el-get - see https://github.com/dimitri/el-get
(setq el-get-dir (expand-file-name "el-get" user-emacs-directory))

(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))
(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
                (lambda (s) (end-of-buffer) (eval-print-last-sexp))))

(setq mmm/packages
      '(el-get
        magit
        rvm
        rhtml-mode
        coffee-mode
        haml-mode
        inf-ruby
        scss-mode
        multi-term
        flymake-ruby
        neotree
	projectile
	flx
	smex
	ido-vertical-mode
	undo-tree
        smartparens
        yasnippet))

(el-get 'sync (mapcar 'prin1-to-string mmm/packages))
