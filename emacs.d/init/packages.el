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
        coffee-mode
        haml-mode
        inf-ruby
        scss-mode
        multi-term
        flymake-ruby
        neotree
        flx
        smex
        ido-vertical-mode
        undo-tree
        smartparens
        yasnippet
        fill-column-indicator
        markdown-mode
        elixir
        web-mode
        sublime-themes
        move-text
        paredit
        multiple-cursors
        yaml-mode
        company-mode
        expand-region
        robe-mode
        rust-mode
        git-gutter-fringe+))

;; Custom recipies
(push '(:name yasnippet
              :website "https://github.com/capitaomorte/yasnippet.git"
              :description "YASnippet is a template system for Emacs."
              :type github
              :pkgname "capitaomorte/yasnippet"
              :features "yasnippet"
              :compile "yasnippet.el")
      el-get-sources)

(el-get 'sync (mapcar 'prin1-to-string mmm/packages))

(mmm/load-file "vendor/rcodetools")
