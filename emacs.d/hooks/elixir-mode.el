;; show junk whitespace
(whitespace-mode)

(linum-mode)

;; activate character pairing
(smartparens-mode)

;; alchemist
(alchemist-mode)

;; autocomplete
(company-mode)

;; do some spell checking (requires:  brew install aspell --lang=en)
(flyspell-prog-mode)

(local-set-key (kbd "C-c v s") 'mmm/toggle-program-spelling)

(local-set-key (kbd "C-c =") 'mmm/align=)

(local-set-key (kbd "C-c t s") 'mmm/toggle-string-type)
