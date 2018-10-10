;;(package-initialize)

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/lisp/")
  (add-to-list 'load-path "~/.emacs.d/lisp/use-package")
  (require 'use-package)
 )
;;
(require 'init-packages)
(require 'init-ui)
(require 'init-keymaps)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(helm-ag-r multiple-cursors iedit helm auto-complete auto-compile smex company expand-region popwin use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
