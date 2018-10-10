;; 因为在init.el的文件中加载了use-package，所以使用use-package安装和配置第三方插件
;;安装第三方package
;;M-x package-list-packages

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)





;;
;;(package-initialize)
;;i 安装
;;U 升级 
;;x 执行
;;d 删除


;; 使用use-package 安装第三方插件 栗子
;;(use-package foo
;;  :init
;;  (setq foo-variable t)
;;  :config
;;  (foo-mode 1))

;; web-mode 前端开发
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;;代码折叠打开
;;(require 'semantic-tag-folding nil 'noerror)  
;;(global-semantic-tag-folding-mode 1)
;;快捷键操作
;;(define-key semantic-tag-folding-mode-map (kbd "C-c , -") 'semantic-tag-folding-fold-block)  
;;(define-key semantic-tag-folding-mode-map (kbd "C-c , =") 'semantic-tag-folding-show-block)  


;; popwin 插件可以自动将光标移动到，新创建的窗口中
(require 'popwin)
(popwin-mode 1)

;;安装expand-region 支持
;;(setq alphabet-start "abc def")
;;(require 'expand-region)
;;(global-set-key (kbd "S-w") 'er/expand-region)

;;让输入命令变得飞快 
(require 'smex)
(smex-initialize)

;;helm 
;; M-x package-list-package

;; configure
(require 'helm-config)
(require 'helm)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;(global-set-key (kbd "C-x j") 'helm-top)


;;iedit
(require 'iedit)


;; 使用auto-company
;; 基本配置
(ac-config-default)

;;multiple-cursors
;;多光标模式
(require 'multiple-cursors)
;;常用快捷键，在光标的上下行插入光标
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

;;暂时没有理解
;;(global-set-key (kbd "C-=") 'mc/mark-all-like-this)
;;(global-set-key (kbd "C-S-l") 'mc/edit-lines)

;;自动完成,在其上有插件完成具体功能
(require 'ido)
(ido-mode t)
;;安装helm


;;dired模式下默认递归删除
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;;选中光标附近的词组，重构该词组
(require 'iedit)
(global-set-key (kbd "C-;") 'iedit-mode)

;;打造前端插件
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))


;;注意这行中的F8 , 可以改成你想要的按键，调整emacs
(global-set-key [(f8)] 'loop-alpha)  
(setq alpha-list '((65 45) (100 100)))    
(defun loop-alpha ()    
  (interactive)    
  (let ((h (car alpha-list)))                    
    ((lambda (a ab)    
       (set-frame-parameter (selected-frame) 'alpha (list a ab))    
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))    
       ) (car h) (car (cdr h)))    
    (setq alpha-list (cdr (append alpha-list (list h))))    
    )    
) 
   


;; 使用黑色背景
(set-background-color "black")
;; 使用白色前景
(set-foreground-color "white")
;; 区域前景颜色设为绿色
(set-face-foreground 'region "green")
;; 区域背景色设为蓝色
(set-face-background 'region "blue") 


;; 文件末尾
(provide 'init-packages)
