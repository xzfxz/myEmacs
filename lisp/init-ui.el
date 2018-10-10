;;该配置文件，是emacs原生的package，没有依赖任何第三方package

;;可以直接打开图片
(setq auto-image-file-mode t)

;;关闭工具栏，菜单栏，滚动条
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;取消自动备份
(setq make-backup-files nil)

;;关闭自动保存
;;(setq auto-save-default nil)


;;打开最近打开历史
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;;替换选择文字
(delete-selection-mode 1)

;;关闭启动动画
(setq inhibit-splash-screen t)

;;显示当前行号
(global-linum-mode t)

;;改变光标显示
(setq-default cursor-type 'bar)

;;高亮当前行
(global-hl-line-mode t)
;;取消警告音
(setq ring-bell-function 'ignore)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)


;; 设置默认 Org Agenda 文件目录
(setq org-agenda-files '("~/emacs/org"))

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;; 你只需将你的 *.org 文件放入上面所指定的文件夹中就可以开始使用 Agenda 模式了。
;;    C-c C-s 选择想要开始的时间
;;    C-c C-d 选择想要结束的时间
;;    C-c a 可以打开 Agenda 模式菜单并选择不同的可视方式（ r ）
(provide 'init-ui)

;;自动加载外部修改文件
(global-auto-revert-mode 1)

;;yes or no 替换 y or n
(fset 'yes-or-no-p 'y-or-n-p)

;;Hippie 补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
;; 绑定快捷键
(global-set-key (kbd "s-/") 'hippie-expand)

;; 文件末尾
(provide 'init-ui)

;; F10 显示|隐藏菜单
;;(global-set-key (kbd "F10") 'menu-bar-mode)

;;commd+s 进入Shell M-x shell
;;(global-set-key (kbd "s-s") 'shell)
;; 递归 minibuffer
(setq enable-recursive-minibuffers t)
;; 当使用 M-x COMMAND之后，过1秒显示该COMMAND 绑定的键
(setq suggest-key-bindings 1)
;; 显示时间
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
;;显示列号
;;标题栏显示%f 缓冲区完整路径 %p页面百分比 %l行号
(setq frame-title-format "%f")
;;不生成临时文件
(setq-default make-backup-files nil)
;;只渲染当前屏幕语法高亮，加快显示速度
(setq font-lock-maximum-decoration t)
