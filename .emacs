;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/")))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(custom-set-faces
 '(linum ((t (:inherit (shadow default))))))

;; enable global column number mode
(setq column-number-mode t)

;; color theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(color-theme-initialize)
(color-theme-tty-dark)

;; global line numbers
(global-linum-mode 1)

;; make line numbers look sexy
(setq linum-format "%4d \u2502")

;; go to specified line
(global-set-key (kbd "C-c g") 'goto-line)

;; comment marked region
(global-set-key (kbd "C-c n") 'comment-region)

;; uncomment marked region
(global-set-key (kbd "C-c m") 'uncomment-region)

;; display current time
(display-time)

;; get rid of the menu bar
(menu-bar-mode 0)