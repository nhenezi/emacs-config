(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(standard-indent 2))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(load-file "~/.emacs.d/color-theme/themes/tango.el")
(color-theme-tango)
(setq default-directory "/var/www/" )
(setq-default tab-width 2) ; set tab width to 4 for all buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward) ;defines style for unique names
(setq uniquify-strip-common-suffix t) ;stripes slashes for faster switching
(require 'linum)
(global-linum-mode);enables line numbergin
