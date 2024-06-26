;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

(package! aas :recipe (:host github :repo "ymarco/auto-activating-snippets")
  :pin "e92b5cffa4e87c221c24f3e72ae33959e1ec2b68")
(package! laas :pin "a00f0aba237b85b3e5fd60cf84de5759d1bf5d48")
(package! elcord :pin "d0c9ace493d088bc70f7422705ff27dfcf162cca")
(package! catppuccin-theme :pin "1e9bdb0c19bf13c27a32b1adeabcace45fcbfd15")
;; (package! perfect-margin :pin "bd15823219c93261536966b4dc65c1ae45a404cf")
(package! modus-themes)

;; (package! org :recipe
;;   (:host nil :repo "https://git.tecosaur.net/mirrors/org-mode.git" :remote "mirror" :fork
;;    (:host nil :repo "https://git.tecosaur.net/tec/org-mode.git" :branch "dev" :remote "tecosaur")
;;    :files
;;    (:defaults "etc")
;;    :build t :pre-build
;;    (with-temp-file "org-version.el"
;;      (require 'lisp-mnt)
;;      (let
;;          ((version
;;            (with-temp-buffer
;;              (insert-file-contents "lisp/org.el")
;;              (lm-header "version")))
;;           (git-version
;;            (string-trim
;;             (with-temp-buffer
;;               (call-process "git" nil t nil "rev-parse" "--short" "HEAD")
;;               (buffer-string)))))
;;        (insert
;;         (format "(defun org-release () \"The release version of Org.\" %S)\n"
;;                 version)
;;         (format "(defun org-git-version () \"The truncate git commit hash of Org mode.\" %S)\n"
;;                 git-version)
;;         "(provide 'org-version)\n"))))
;;   :pin nil)

;; (unpin! org)
