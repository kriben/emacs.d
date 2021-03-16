;;; init-theme.el --- configure theme
;;; Commentary:
;;; Code:

(use-package doom-themes
  :ensure t
  :if (display-graphic-p)
  :config
  (load-theme 'doom-one t)

  ;; make title bar use same style as theme on mac
  (when (eq system-type 'darwin)
    (setq default-frame-alist '((ns-appearance . dark)
                                (ns-transparent-title-bar . t)))))

(provide 'init-theme)

;;; init-theme.el ends here
