;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(use-package pip-requirements :ensure t)
(use-package poetry :ensure t)

(use-package python-mode
  :init
  (use-package company-jedi
    :ensure t
    :init
    (setq jedi:complete-on-dot))
  (use-package elpy
    :ensure t
    :after (python-mode)
    :init
    (elpy-enable)
    (define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition-or-rgrep))
  :hook
  (jedi:setup))


(defun elpy-goto-definition-or-rgrep ()
  "Go to the definition of the symbol at point, if found.  Otherwise, run `elpy-rgrep-symbol'."
  (interactive)
  (ring-insert find-tag-marker-ring (point-marker))
  (condition-case nil (elpy-goto-definition)
    (error (elpy-rgrep-symbol
            (concat "\\(def\\|class\\)\s" (thing-at-point 'symbol) "(")))))



(provide 'init-python)
;;; init-python.el ends here
