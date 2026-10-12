;;; -*- lexical-binding: t; -*-

(setq custom-file "~/.emacs.custom")
(load custom-file 'noerror 'nomessage)

;; silly stuff
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(setq display-line-numbers-type 'visual)

(global-display-line-numbers-mode 1)
(dolist (hook '(image-mode-hook
                doc-view-mode-hook
                pdf-view-mode-hook))
  (add-hook hook (lambda () (display-line-numbers-mode 0))))

(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/")
(load-theme 'system-col t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(setq use-package-always-ensure t)

(set-face-attribute 'default nil :family "Fira Code" :height 120)

;; packages

(use-package magit)
(use-package smex)

(use-package multiple-cursors)

(use-package move-text)

(use-package yasnippet)
(yas-global-mode 1)

;; programming modes
(use-package auctex)
(use-package sly)
(use-package haskell-mode)

;; Decoration

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode)
  :config  
  (set-face-foreground 'rainbow-delimiters-depth-1-face "#ff5555")
  (set-face-foreground 'rainbow-delimiters-depth-2-face "#ffaa00")
  (set-face-foreground 'rainbow-delimiters-depth-3-face "#f1fa00")
  (set-face-foreground 'rainbow-delimiters-depth-4-face "#50fa50")
  (set-face-foreground 'rainbow-delimiters-depth-5-face "#00e5ff")
  (set-face-foreground 'rainbow-delimiters-depth-6-face "#4488ff")
  (set-face-foreground 'rainbow-delimiters-depth-7-face "#bb66ff")
  (set-face-foreground 'rainbow-delimiters-depth-8-face "#ff66cc")
  (set-face-foreground 'rainbow-delimiters-depth-9-face "#ffffff"))

(setq initial-scratch-message (concat
";;    ____       ____ \n"
";;   /    )     (    \\ \n"
";;  /    (  ^_^  )    \\ \n"
";; |  {   \\('v')/   }  | \n"
";; |   {   /   \\   }   | \n"
";; |_)(   /\      \\   )(_| \n"
";; |)  (_ | \\|/  |_)  (| \n"
";; '     \"--^^^^--\"    ' \n"
";; \n \n"
""
))

;; Functions
(defun my/select-line ()
  (interactive)
  (beginning-of-line)
  (set-mark (point))
  (forward-line 1)
  (backward-char))

;; Keybinds

(global-set-key (kbd "C-z") #'my/select-line)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease) 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)
