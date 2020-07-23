(use-package ibuffer
  :ensure nil ;; package is bundled with emacs

  :init
  ;; disable confirmation for killing unmodified buffers
  (setq ibuffer-expert t)

  ;; sort buffers by name
  (setq-default ibuffer-default-sorting-mode 'alphabetic)

  ;; hide empty filter groups
  (setq ibuffer-show-empty-filter-groups nil)

  ;; use ibuffer
  :bind (("C-x C-b" . ibuffer-other-window)
         :map ibuffer-mode-map
         ;; make C-o and o behave as in dired
         ("o" . ibuffer-visit-buffer-other-window)
         ("C-o" . ibuffer-visit-buffer-other-window-noselect)))

(use-package ibuffer-project
  :after (ibuffer project)

  ;; group buffers by project
  :hook (ibuffer-mode . (lambda () (setq ibuffer-filter-groups (ibuffer-project-generate-filter-groups)))))

(provide 'init-ibuffer)
