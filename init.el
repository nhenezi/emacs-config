;;
;;; THEMES
(load-file "~/.emacs.d/color-theme/themes/tango.el")  ; loads tango color theme
(color-theme-tango)                                   ; sets color theme to tango

;; EDITING OPTIONS
(custom-set-variables '(standard-indent 2))           ; sets default indent to 2
(setq-default tab-width 2)                            ; set tab width to 2 for all buffers
(require 'uniquify)                                   ; requiered for unique names
(setq uniquify-buffer-name-style 'forward)            ; defines style for unique names
(setq uniquify-strip-common-suffix t)                 ; stripes slashes for faster switching
(require 'linum)                                      ; required for line numbering
(global-linum-mode)                                   ; enables line numbering 
(put 'dired-find-alternate-file 'disabled nil)        ; dired uses only one buffer

;; BINDINGS
(global-set-key (kbd "M-g") 'goto-line)
