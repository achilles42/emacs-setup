;; 14 - Start the game already!

;; No menubar, toolbar, scrollbar or startup message
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-startup-message t)

;; Load path
;; Package definitions
(setq settings-dir
      (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path settings-dir)

;; Custom settings
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))
(add-to-list 'load-path user-settings-dir)

;; Emacs on OS X?
(setq *is-mac* (equal system-type 'darwin))

;; Init packages
(require 'init-package)
(require 'init-backups)
(require 'init-theme)
(require 'init-sublime)

;; Editor
(require 'init-base)
(require 'init-git)

;; Languages
(require 'init-clojure)
(require 'init-go)
(require 'init-ruby)

;; Sync packages
(el-get 'sync c42:el-get-packages)
(run-hooks 'c42:initialized-hook)

;; Local customizations
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Conclude init by setting up specifics for the current user
(when (file-exists-p user-settings-dir)
  (mapc 'load (directory-files user-settings-dir nil "^[^#].*el$")))
