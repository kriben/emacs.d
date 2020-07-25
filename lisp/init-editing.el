;; use zap-up-to-char instead of zap-to-char
(use-package misc
  :bind ("M-z" . zap-up-to-char))

;; enable subword-mode in prog-mode
(use-package subword
  :diminish subword-mode
  :hook ((prog-mode . subword-mode)))

;; find function definitions
(use-package find-func
  ;; make source files read-only when visiting
  :hook ((find-function-after . read-only-mode))

  :bind (("C-h C-f" . find-function-other-window)
         ("C-h C-k" . find-function-on-key)))

(defun show-file-name ()
  "Show the full path file name in the minibuffer and add it to the kill ring."
  (interactive)
  (when buffer-file-name
    (message buffer-file-name)
    (kill-new (file-truename buffer-file-name))))

;; source:
;; http://emacsredux.com/blog/2013/05/04/rename-file-and-buffer/
;; https://github.com/bbatsov/prelude/blob/master/core/prelude-core.el
(defun rename-buffer-and-file ()
  "Rename current buffer and if the buffer is visiting a file, rename it too."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (rename-buffer (read-from-minibuffer "New name: " (buffer-name)))
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))

;; C-x k kills current buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;; C-c w shows the path of the current file
(global-set-key (kbd "C-c w") 'show-file-name)

;; join line
(global-set-key (kbd "M-j") (lambda () (interactive) (join-line -1)))

;; C-c n renames the current buffer and file
(global-set-key (kbd "C-c n") 'rename-buffer-and-file)

;; C-- undoes
(global-set-key (kbd "C--") 'undo)

;; kill line also kills newline character
(setq kill-whole-line t)

(provide 'init-editing)
