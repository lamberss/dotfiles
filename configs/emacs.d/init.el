(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(setq vc-follow-symlinks t)
(setq visible-bell nil)
(setq custom-safe-themes t)

(defvar backup-dir "~/.emacs.d/backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))
(setq make-backup-files nil)

(require 'init-elpa)
(require 'init-global-functions)
(require 'init-evil)
(require 'init-color-theme)
(require 'init-org)
(require 'init-powerline)
