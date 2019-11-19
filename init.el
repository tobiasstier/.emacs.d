;;; initfile --- Summary
	(setenv "PATH" (concat "/usr/local/bin:/opt/local/bin:/usr/bin:/bin" (getenv "PATH")))
	(setq exec-path (append exec-path '("/usr/local/bin")))
	(require 'cl)


	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Install use-package so we can install more packages
	(require 'package)
	(setq package-enable-at-startup nil)
	(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
	(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
	(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
	(package-initialize)

	(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

	(eval-when-compile
	(require 'use-package))

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; End of usepackage macro


	;; install spacemacs theme
	(use-package spacemacs-common
	:ensure spacemacs-theme
	:config (load-theme 'spacemacs-dark t))

	;; flycheck syntax checker
	(use-package flycheck
	:ensure flycheck
	:defer t
	:config (flycheck-mode 1))

	;; yasnippets for snippets
	(use-package yasnippet
	:defer t)

	(use-package haskell-mode
	:ensure haskell-mode
	:defer t)

	;; intero for haskell
	(use-package intero
	:ensure intero
	:init
	(add-hook 'haskell-mode-hook 'intero-mode))
	(intero-global-mode 1)


	;; magit
	(use-package magit
	:ensure magit
	:defer t)

	;; auto
	(use-package auto-complete
	:ensure auto-complete
	:defer t)
	(ac-config-default)

	(use-package auctex
	:ensure auctex
	:defer t)

	(use-package elpy
	:ensure elpy
	:defer t)

	;;Load IDO on startup
	(require 'ido)
	(ido-mode t)

	(require 'linum)
	(linum-mode 1)

	(electric-pair-mode 1)

	;;Load column number
	(setq column-number-mode t)

	;;Marking text
	(delete-selection-mode t)
	(transient-mark-mode t)
	(setq x-select-enable-clipboard t)

	;;replace "yes" and "no" with y and n
	(defalias 'yes-or-no-p 'y-or-n-p)


	;;Keybindings - fix 2 meta keys problem (2 ALT keys)
	(setq mac-option-key-is-meta t)
	(setq mac-right-option-modifier nil)
	(global-set-key (kbd "RET") 'newline-and-indent)
	(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
	(global-set-key (kbd "C-+") 'text-scale-increase)
	(global-set-key (kbd "C--") 'text-scale-decrease)

	;; indent options
	(setq tab-width 2
	indent-tabs-mode nil)

	;;Disable scrollbar and spalsh screen
	(scroll-bar-mode -1)
	(tool-bar-mode -1)
	(menu-bar-mode -1)
	(setq inhibit-splash-screen t)

	;; Highlight the line we are currently on
	(global-hl-line-mode t)

	;;Highlight Parenthesis
	(show-paren-mode t)

	;;Load column number
	(setq column-number-mode t)

	;; faster C- and M- messages and don't use dialogue boxes
	(setq echo-keystrokes 0.1
	use-dialog-box nil)

	;; tramp defaults
	'(tramp-default-host "server248.web-hosting.com#21098")
	'(tramp-default-method "ssh")
	'(tramp-default-user "stievbqu")


	
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (edts auto-dim-other-buffers doom-modeline god-mode smart-hungry-delete company-erlang erlang haskell flycheck use-package spacemacs-theme))))



	
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 
