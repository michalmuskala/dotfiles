;; show wrap guide
(require 'fill-column-indicator)
(setq fci-rule-column mmm/wrap-limit)
(fci-mode)

(local-set-key (kbd "C-c v w") 'fci-mode)

;; show junk whitespace
(whitespace-mode)

(linum-mode)

;; activate character pairing
(smartparens-mode)

(sp-with-modes (list major-mode)
  ; remove pairs I use snippets for
  (sp-local-pair "do"     nil :actions :rem)
  (sp-local-pair "begin"  nil :actions :rem)
  (sp-local-pair "def"    nil :actions :rem)
  (sp-local-pair "class"  nil :actions :rem)
  (sp-local-pair "module" nil :actions :rem)
  (sp-local-pair "case"   nil :actions :rem)
  (sp-local-pair "for"    nil :actions :rem)
  (sp-local-pair "if"     nil :actions :rem)
  (sp-local-pair "unless" nil :actions :rem)
  (sp-local-pair "while"  nil :actions :rem)
  (sp-local-pair "until"  nil :actions :rem))

;; autocomplete
(company-mode)

;; do some spell checking (requires:  brew install aspell --lang=en)
(flyspell-prog-mode)

(local-set-key (kbd "C-c v s") 'mmm/toggle-program-spelling)

(local-set-key (kbd "C-c =") 'mmm/align=)

(local-set-key (kbd "C-c t s") 'mmm/toggle-string-type)

;(local-set-key (kbd "C-c t t") 'mmm/toggle-ruby-test)
(local-set-key (kbd "C-c t b") 'mmm/toggle-ruby-block-type)
(local-set-key (kbd "C-c t r") 'mmm/toggle-ruby-regex-type)
(local-set-key (kbd "C-c t S") 'mmm/toggle-ruby-string-and-symbol)
(local-set-key (kbd "C-c t h") 'mmm/toggle-ruby-hash-type)

(local-set-key (kbd "C-c x") 'xmp)  ; (requires:  gem install rcodetools)
