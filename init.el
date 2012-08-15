;; Remove startup splashscreen.
(setq inhibit-splash-screen t)

;; Enable delete selection mode
(delete-selection-mode 1)

;; Add ace jump mode
(add-to-list 'load-path "~/.emacs.d/submodules/ace-jump-mode/")
(require 'ace-jump-mode)
(define-key global-map (kbd "C-ö") 'ace-jump-mode)

;; Add expand region
(add-to-list 'load-path "~/.emacs.d/submodules/expand-region/")
(require 'expand-region)
(define-key global-map (kbd "C-ä") 'er/expand-region)

;; Add hardcore mode
(add-to-list 'load-path "~/.emacs.d/submodules/hardcore-mode/")
(require 'hardcore-mode)
(global-hardcore-mode 1)

;; Add yasnippets
(add-to-list 'load-path "~/.emacs.d/submodules/yasnippet/")
(require 'yasnippet)
(yas/global-mode 1)

;; Add magit
(require 'magit)

;; Add color theme
(add-to-list 'load-path "~/.emacs.d/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-billw)))

;; Use shell-like backspace C-h, rebind help to F1
(define-key key-translation-map [?\C-h] [?\C-?])
(global-set-key (kbd "<f1>") 'help-command)

(defun ansi-term-bash ()
  (interactive)
  (ansi-term "/bin/bash")
  )

;; Add key binding for ansi terminal.
(global-set-key (kbd "C-c t") 'ansi-term-bash)

;; M-x => C-c C-m
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Add line numbers
(global-linum-mode 1)

;; Remove GUI
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)