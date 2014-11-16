;; configure sexp editor
(require 'paredit)
(paredit-mode)

(local-set-key (kbd "C-c f") 'paredit-forward-slurp-sexp)
(local-set-key (kbd "C-c F") 'paredit-forward-barf-sexp)

;; show wrap guide
(require 'fill-column-indicator)
(setq fci-rule-column mmm/wrap-limit)
(fci-mode)

(local-set-key (kbd "C-c v w") 'fci-mode)

;; show line numbers
(linum-mode)

;; show junk whitespace
(whitespace-mode)

;; do some spell checking
(flyspell-prog-mode)

(local-set-key (kbd "C-c v s") 'mmm/toggle-program-spelling)
