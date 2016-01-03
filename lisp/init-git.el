(c42:require-packages 'magit 'diff-hl)

(c42:after-initializing
 (global-diff-hl-mode t)
 (global-set-key (kbd "C-c g") 'magit-status))

(provide 'init-git)
