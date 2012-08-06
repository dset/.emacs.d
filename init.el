;; Remove startup splashscreen.
(setq inhibit-splash-screen t)

;; Enable delete selection mode
(delete-selection-mode 1)

;; Add ace jump mode
(add-to-list 'load-path "~/.emacs.d/submodules/ace-jump-mode/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Add expand region
(add-to-list 'load-path "~/.emacs.d/submodules/expand-region/")
(require 'expand-region)
(define-key global-map (kbd "C-ä") 'er/expand-region)