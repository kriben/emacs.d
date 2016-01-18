;; install package
(require-package 'web-mode)

(require 'web-mode)

;; assume jinja2 template syntax in .html files
(setq web-mode-engines-alist '(("jinja2" . "\\.html\\'")))

;; use web-mode for .htm, .html and .css
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))

;; Configuration
(defun my-web-mode-hook()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 4))

(add-hook 'web-mode-hook 'my-web-mode-hook)

(provide 'init-web-mode)
