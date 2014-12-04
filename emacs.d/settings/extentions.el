;; Markdown
(add-to-list 'auto-mode-alist '("\\.markdn\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'"  . markdown-mode))

;; Ruby
(add-to-list 'auto-mode-alist '("Rakefile\\'"   . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'"    . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'"    . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))

;; Yaml
(add-to-list 'auto-mode-alist '("\\.yml.erb\\'" . yaml-mode))

;; Erb
(add-to-list 'auto-mode-alist '("\\.html.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'"      . web-mode))

;; Reactjs
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
