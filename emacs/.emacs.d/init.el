;; Backup files
(setq backup-directory-alist
      '(("." . "~/.local/state/emacs/backups")))

;; Line numbers
(global-display-line-numbers-mode 1)

;; Intendation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; Ensure files end with a newline
(setq require-final-newline t)

;; Remove trailing whitespace and excessive blank lines
(add-hook 'before-save-hook #'delete-trailing-whitespace)
