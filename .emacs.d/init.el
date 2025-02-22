;; Emacs directory
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))


;; Package management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)


(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))


;; Install evil
(package-install-with-refresh 'evil)

;; Enable Evil
(require 'evil)
(evil-mode 1)
