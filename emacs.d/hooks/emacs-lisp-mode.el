;; configure sexp editor
(require 'paredit)
(paredit-mode)

(local-set-key (kbd "C-c f") 'paredit-forward-slurp-sexp)
(local-set-key (kbd "C-c F") 'paredit-forward-barf-sexp)
(local-set-key (kbd "C-c e") 'mmm/eval-and-replace)

;; show line numbers
(linum-mode)

;; show junk whitespace
(whitespace-mode)

;; Autocomplete
(company-mode)

;; do some spell checking
(flyspell-prog-mode)

(local-set-key (kbd "C-c v s") 'mmm/toggle-program-spelling)
