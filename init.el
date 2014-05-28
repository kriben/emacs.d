;; add ~/.emacs.d/lisp to load path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; load files
(require 'init-package)
(require 'init-appearance)
(require 'init-sane-defaults)
(require 'init-backup)
(when (eq system-type 'darwin)
  (require 'init-mac))
(require 'init-ido)
(require 'init-server)
(require 'init-go-mode)
(require 'init-yaml-mode)
(require 'init-markdown-mode)
(require 'init-org)
(require 'init-js2-mode)
(require 'init-rainbow-delimiters)
(require 'init-ibuffer)
(require 'init-sessions)
(require 'init-git-mode)
(require 'init-clojure-mode)
(require 'init-crontab)
(require 'init-editing)
