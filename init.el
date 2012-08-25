(add-to-list 'load-path "~/.emacs.d/")         ; directory where config is

;; THEMES
(require 'color-theme)                         ; loads color theme
(require 'color-theme-tango)                   ; loads tango color theme
(color-theme-tango)                            ; sets color theme to tango

;; EDITING OPTIONS
(custom-set-variables '(standard-indent 2))    ; sets default indent to 2
(setq-default tab-width 2)                     ; set tab width to 2 for all buffers
(setq-default indent-tabs-mode nil)            ; use spaces for indent
(require 'uniquify)                            ; requiered for unique names
(setq uniquify-buffer-name-style 'forward)     ; defines style for unique names
(setq uniquify-strip-common-suffix t)          ; stripes slashes for faster switching
(require 'linum)                               ; required for line numbering
(global-linum-mode)                            ; enables line numbering 
(put 'dired-find-alternate-file 'disabled nil) ; dired uses only one buffer
(menu-bar-mode -1)                             ; hides menu bar
(tool-bar-mode -1)                             ; hides tool bar
(scroll-bar-mode -1)                           ; hides scroll bar
(setq x-select-enable-clipboard t)             ; copy outside emacs
(setq make-backup-files nil)                   ; disables backup files


;; Fast moving trough windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; C/C++
(setq c-default-style "bsd"
          c-basic-offset 2)
(c-set-offset 'substatement-open 0)

;; FUNCTIONS
(defun toggle-fullscreen ()                    ; full screen mode
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

;; JAVASCRIPT
(setq js-indent-level 2)

;; COFFEESCRIPT
(require 'coffee-mode)
;(add-hook 'coffee-mode-hook '(lambda () (coffee-cos-mode t))) ;compile on save for coffee mode

;; CSS
(require 'less-css-mode)

;; PHP
(autoload 'php-mode "php-mode" "Major mode for php." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode ))

;; MarkDown
(autoload 'markdown-mode "markdown.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Haskell
(load "~/.emacs.d/haskell-mode/haskell-site-file")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'font-lock-mode)
