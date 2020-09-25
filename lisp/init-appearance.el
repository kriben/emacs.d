;; disable splash
(setq inhibit-startup-message t)

;; hide menubar when not on os x
(when (and (fboundp 'menu-bar-mode) (not (eq system-type 'darwin)))
  (menu-bar-mode -1))

;; hide toolbar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; hide scrollbar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; disable dialogs
(setq use-dialog-box nil)

;; highlight current line
(use-package hl-line
  :config
  (global-hl-line-mode 1))

;; highlight matching parentheses
(use-package paren
  :config
  (show-paren-mode 1))

;; highlight trailing whitespace in prog-mode
(add-hook 'prog-mode-hook (lambda () (setq-local show-trailing-whitespace t)))

;; disable word wrapping
(setq-default truncate-lines t)

;; display line and column numbers in mode-line
(setq line-number-mode t
      column-number-mode t)

(provide 'init-appearance)
