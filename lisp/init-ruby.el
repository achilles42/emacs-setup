(c42:require-packages 'rspec-mode 'ruby-tools 'yaml-mode 'ruby-electric)

(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

(provide 'init-ruby)
