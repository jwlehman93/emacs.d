;;; init-docker.el --- Work with Docker and its tools -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package docker
  :ensure t
  :init
  (fullframe docker-images tablist-quit)
  (fullframe docker-machines tablist-quit)
  (fullframe docker-volumes tablist-quit)
  (fullframe docker-networks tablist-quit)
  (fullframe docker-containers tablist-quit)
  :bind ("C-c d" . docker)
  :config
  (use-package dockerfile-mode :ensure t)
  (use-package docker-compose-mode :ensure t))

(provide 'init-docker)
;;; init-docker.el ends here
