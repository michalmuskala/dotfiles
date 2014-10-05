;; show wrap guide
(require 'fill-column-indicator)
(setq fci-rule-column mmm/wrap-limit)
(fci-mode)

(local-set-key (kbd "C-c v w") 'fci-mode)

;; show line numbers
(linum-mode)

;; show junk whitespace
(whitespace-mode)

;; activate character pairing
(smartparens-mode)
