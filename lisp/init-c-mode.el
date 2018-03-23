;; install package
(require-package 'clang-format)

;; Enable company mode for c++ (will use clang backend)
(add-hook 'c++-mode-hook 'company-mode)

(defun clang-format-before-save ()
  (interactive)
  (when (eq major-mode 'c++-mode) (clang-format-buffer)))


;; Install hook to use clang-format on save
(add-hook 'before-save-hook 'clang-format-before-save)

;; Sane defaults
(setq-default c-default-style "k&r"
              c-basic-offset 2
              indent-tabs-mode nil)

(provide 'init-c-mode)
