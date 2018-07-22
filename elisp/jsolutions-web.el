;;; jsolutions-web --- Summary

;;; Commentary:

;; This is code that is used to assist in exporting
;; the org files making up the jsolutions web site
;; to HTML.
;;
;; This file should be added to the load path in your
;; emacs init file as follows:
;;
;; (add-to-list 'load-path "<clone-dir>/elisp")
;; (require 'jsolutions-web)
;;

;;; Code:

(require 'org)

;; SET THE HOME DIRECTORY

(defvar jsolutions-home-dir "~/dev/org/blog")

;; Include the parent folder in the org mode agenda list.

(setq org-agenda-files
      (append org-agenda-files
              `(,jsolutions-home-dir)))

;; Add the parent folder to the org mode publish projects
;; (setq org-publish-project-alist '())
(setq org-publish-project-alist
      (append org-publish-project-alist
              `(("jsolutions"
                 :base-directory ,jsolutions-home-dir
                 :publishing-directory ,jsolutions-home-dir
                 :publishing-function org-html-publish-to-html
                 :section-numbers nil
                 :recursive t
                 :auto-sitemap t
                 :sitemap-filename "index.org"
                 :sitemap-title "Home"
                 :html-preamble "<div id=\"my-header\"><h2>John's Draft Blog | <a href=\"/index.html\">home</a></h2></div>"
                 :html-head "<link rel=\"stylesheet\"
                         href=\"/css/solarized-dark.css\"
                         type=\"text/css\"/>"))))



(provide 'jsolutions-web)

;;; jsolutions-web.el ends here
