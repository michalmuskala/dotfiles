
(require 'package)
(add-to-list 'package-archives 
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("ELPA" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives 
             '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; el-get - see https://github.com/dimitri/el-get
(setq el-get-dir (expand-file-name "el-get" user-emacs-directory))

(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))
(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
                (lambda (s) (end-of-buffer) (eval-print-last-sexp))))

; Other el-get sources
;(setq el-get-sources
;      '((:name column-maker :type emacswiki)))

;(defun mmm-require-package (name)
;  (unless (package-installed-p name)
;    (package-install name)))

(setq mmm-packages
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
	undo-tree))

(el-get 'sync (mapcar 'prin1-to-string mmm-packages))
