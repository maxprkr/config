;; Hide splash-screen and startup-message
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(menu-bar-mode 0)       ; disable menu bar
(tool-bar-mode 0)       ; disable the tool-bar

(load-theme 'wheatgrass) ; dark background
(global-linum-mode t)    ; show line number on the left
(split-window-right)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(recentf-mode 1)
(setq recentf-max-menu-items 100)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(setq system-time-locale "LOCALE")


(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

;;;;;;;;   Packages: ;;;;;;;;;;;;;;;
(package-initialize)  ;; !! mandatory to keep this before loading the packages
(require 'projectile)
(projectile-global-mode)

(require 'auto-complete-config) ;; might be heavy load on resources...
(ac-config-default)
(require 'jedi)
(add-to-list 'ac-sources 'ac-source-jedi-direct)
(add-hook 'python-mode-hook 'jedi:setup)

(setq kill-buffer-query-functions
      (delq 'process-kill-buffer-query-function kill-buffer-query-functions))

(require 'flx-ido)
    (ido-mode 1)
    (ido-everywhere 1)
    (flx-ido-mode 1)
    (setq ido-enable-flex-matching t)
    (setq ido-use-faces nil)    ;; disable ido faces to see flx highlights.


;;;;;;;;;;;;;;;;;  Key Bindings   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-1") 'shell-command) ; Alt+1 easier than Alt-! 
(global-set-key (kbd "C-q") 'keyboard-quit) ; eases C-g
;(define-key isearch-mode-map "C-q" 'isearch-abort)   ;; isearch
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-x M-f") 'global-magit-file-modep)
(global-set-key (kbd "C-v") 'yank) ; eases C-y

(require 'org)
(global-set-key (kbd "C-c s") 'org-iswitchb)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-log-done t)
(setq org-agenda-files (list "~/projects/docs/org/sportly.org"
                             "~/projects/docs/org/applied.org"
			     "~/projects/docs/org/hacking.org" 
                             "~/projects/docs/org/homefamily.org"))


;;;;;;;;;;;;;;;;;  Open Files at start-up  ;;;;;;;;;;;;;;;;;;;
(find-file "~/.emacs.d/init.el")
;;(find-file "~/projects/Caffe2Proj/MyTut/Karpathy/JedyTest.py")


;;;;;;;;;;;;;;;;;  INITIAL MESSAGES ;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq initial-scratch-message " ")

(defun display-startup-echo-area-message ()
  (message "Run, Forest, Run!!"))


