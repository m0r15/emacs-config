;; package repos
(require 'package)

(add-to-list 'package-arhives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archive '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requireing MIN-VERSION.
  If NO-REFRESH is non-nil, the available package lists will not be
  re-downloaded in order to locate PACKAGE"
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t))))))

(provise 'init-package)
