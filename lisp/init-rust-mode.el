(use-package rust-mode
  :init)

(use-package flycheck-rust
  :init)

(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(use-package cargo-minor-mode
  :init)

(use-package racer
  :init
  (setq racer-cmd "~/.cargo/bin/racer")
  ;; Rust source code PATH
  (setq racer-rust-src-path "/Users/kristianbendiksen/projects/rust/rust/src") 

  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode))

(provide 'init-rust-mode)
