;; Let's use el-get

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-recipes")

(setq c42:el-get-packages '())
(defvar c42:initialized-hook nil)

(defun c42:require-packages (&rest packages)
  (setq c42:el-get-packages
	(append c42:el-get-packages packages)))

(defmacro c42:after-initializing (&rest body) 
  `(add-hook 'c42:initialized-hook
     (lambda ()
       ,@body)))

(provide 'init-package)
