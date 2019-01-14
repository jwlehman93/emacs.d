;;; init-helm.el --- The C calls to me -*- lexical-binding:t -*-

;;; Commentary:

;;; Code:

(require-package 'helm)
(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(setq helm-split-window-in-side-p t
      helm-ff-file-name-history-use-recentf t)

(setq helm-autoresize-max-height 0
      helm-autoresize-min-height 20)
(helm-mode 1)
;;; use helm for projectile
(require-package 'helm-projectile)
(require-package 'helm-ag)
(require-package 'helm-company)
(helm-projectile-on)
(provide 'init-helm)
;;; init-helm.el ends here
