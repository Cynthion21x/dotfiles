;;; -*- lexical-binding: t; -*-

(deftheme system-col "Auto Generated")

(let ((bg      "#060906")
      (fg      "#e6f2e6")
      (bg2     "#000000")
      (accent  "#55eb34")
      (accentd  "#3bb01f")
      (accent2 "#2a8019")
      (accent2d "#1b5510")
      (c0  "#060906")  (c1  "#ff5f56")  (c2  "#55eb34")  (c3  "#e3c565")
      (c4  "#4fa3e0")  (c5  "#a78bda")  (c6  "#3fd7c4")  (c7  "#c8d8c8")
      (c8  "#4d7347"))
  (custom-theme-set-faces
   'system-col
   ;; basics
   `(default             ((t (:background ,bg :foreground ,fg))))
   `(cursor              ((t (:background ,accent))))
   `(region              ((t (:background ,c8))))
   `(fringe              ((t (:background ,bg))))
   `(vertical-border     ((t (:foreground ,c8))))
   `(minibuffer-prompt   ((t (:foreground ,accent :weight bold))))
   `(link                ((t (:foreground ,c4 :underline t))))
   ;; line numbers
   `(line-number              ((t (:foreground ,c8 :background ,bg))))
   `(line-number-current-line ((t (:foreground ,accent :background ,bg))))
   ;; mode line
   `(mode-line           ((t (:background ,accent2d :foreground ,fg))))
   `(mode-line-inactive  ((t (:background ,accent2d :foreground ,fg))))
   ;; syntax highlighting
   `(font-lock-keyword-face        ((t (:foreground ,c5))))
   `(font-lock-function-name-face  ((t (:foreground ,c4))))
   `(font-lock-variable-name-face  ((t (:foreground ,accent2))))
   `(font-lock-string-face         ((t (:foreground ,c2))))
   `(font-lock-comment-face        ((t (:foreground ,c8 :slant italic))))
   `(font-lock-type-face           ((t (:foreground ,c3))))
   `(font-lock-constant-face       ((t (:foreground ,c6))))
   `(font-lock-builtin-face        ((t (:foreground ,c6))))
   `(font-lock-warning-face        ((t (:foreground ,c1 :weight bold))))
   ;; search, parens, ido
   `(isearch             ((t (:background ,accent :foreground ,bg))))
   `(lazy-highlight      ((t (:background ,c8 :foreground ,fg))))
   `(show-paren-match    ((t (:background ,c8 :weight bold))))
   `(ido-first-match     ((t (:foreground ,accent :weight bold))))
   `(ido-only-match      ((t (:foreground ,c2))))
   `(ido-subdir          ((t (:foreground ,c4))))
   ;; status
   `(error               ((t (:foreground ,c1 :weight bold))))
   `(warning             ((t (:foreground ,c3 :weight bold))))
   `(success             ((t (:foreground ,c2 :weight bold))))))

(provide-theme 'system-col)
