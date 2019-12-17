;;; init-clojure-cider.el --- Cider support for clojure -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'init-clojure)

(when (maybe-require-package 'cider)
  (setq nrepl-popup-stacktraces nil)

  (after-load 'cider
    (add-hook 'cider-repl-mode-hook 'subword-mode)
    (add-hook 'cider-repl-mode-hook 'paredit-mode)

    ;; nrepl isn't based on comint
    (add-hook 'cider-repl-mode-hook 'mxzl/no-trailing-whitespace)
    (add-hook 'cider-mode-hook 'eldoc-mode))

  (require-package 'flycheck-clojure)
  (after-load 'clojure-mode
    (after-load 'cider
      (after-load 'flycheck
        (flycheck-clojure-setup)))))

(defun cider-start-http-server ()
  "Start web server in cider."
  (interactive)
  (cider-load-current-buffer)
  (let ((ns (cider-current-ns)))
    (cider-repl-set-ns ns)
    (cider-interactive-eval (format "(println '(def server (%s/start))) (println 'server)" ns))
    (cider-interactive-eval (format "(def server (%s/start)) (println server)" ns))))


(defun cider-refresh ()
  "Refresh cider."
  (interactive)
  (cider-interactive-eval (format "(user/reset)")))

(defun cider-user-ns ()
  "Set cider user namespace."
  (interactive)
  (cider-repl-set-ns "user"))

(eval-after-load 'cider
  '(progn
     (define-key clojure-mode-map (kbd "C-c C-v") 'cider-start-http-server)
     (define-key clojure-mode-map (kbd "C-M-r") 'cider-refresh)
     (define-key clojure-mode-map (kbd "C-c u") 'cider-user-ns)
     (define-key cider-mode-map (kbd "C-c u") 'cider-user-ns)))

(provide 'init-clojure-cider)
;;; init-clojure-cider.el ends here
