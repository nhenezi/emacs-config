(add-to-list 'load-path "~/.emacs.d/")                ; directory where config is

;;; THEMES
(require 'color-theme)                                ; loads color theme
(require 'color-theme-tango)                          ; loads tango color theme
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
(menu-bar-mode -1)                                    ; hides menu bar
(tool-bar-mode -1)                                    ; hides tool bar
(scroll-bar-mode -1)                                  ; hides scroll bar

;; FUNCTIONS
(defun toggle-fullscreen ()                           ; full screen mode
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))


;; BINDINGS
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key [(meta return)] 'toggle-fullscreen)


;; PYTHON
;; Python Hook
(add-hook 'python-mode-hook '(lambda () 
 (setq python-indent 2)))
