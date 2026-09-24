;;; -*- lexical-binding: t; -*-

;; State directories
(dolist (dir '("~/.local/state/emacs/backups/"
               "~/.local/state/emacs/auto-save-list/"))
  (make-directory (expand-file-name dir) t))

;; Backup files
(setq backup-directory-alist
      '(("." . "~/.local/state/emacs/backups/")))

;; Auto-save metadata
(setq auto-save-list-file-prefix
      "~/.local/state/emacs/auto-save-list/.saves-")

;; TRAMP state
(setq tramp-persistency-file-name
      "~/.local/state/emacs/tramp")

;; Line numbers
(global-display-line-numbers-mode 1)

;; Indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Ensure files end with a newline
(setq require-final-newline t)

;; Remove trailing whitespace and excessive blank lines
(add-hook 'before-save-hook #'delete-trailing-whitespace)
