;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))
(require-package 'pip-requirements)

(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  (define-key elpy-mode-map (kbd "M-.") 'elpy-goto-definition-or-rgrep))

(defun elpy-goto-definition-or-rgrep ()
  "Go to the definition of the symbol at point, if found.  Otherwise, run `elpy-rgrep-symbol'."
  (interactive)
  (ring-insert find-tag-marker-ring (point-marker))
  (condition-case nil (elpy-goto-definition)
    (error (elpy-rgrep-symbol
            (concat "\\(def\\|class\\)\s" (thing-at-point 'symbol) "(")))))



(provide 'init-python)
;;; init-python.el ends here
