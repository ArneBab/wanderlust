;;; elmo-version.el -- Version information for ELMO.

;; Copyright (C) 2000 Yuuichi Teranishi <teranisi@gohome.org>
;; Copyright (C) 2000 TAKAHASHI Kaoru <kaoru@kaisei.org>

;; Author: Yuuichi Teranishi <teranisi@gohome.org>
;;	TAKAHASHI Kaoru <kaoru@kaisei.org>
;; Keywords: mail, net news

;; This file is part of ELMO (Elisp Library for Message Orchestration).

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;

;;; Commentary:
;; 

;;; Code:
;; 
(require 'product)
(provide 'elmo-version)			; before product-provide

;; product-define in the first place
(product-provide 'elmo-version
  (product-define "ELMO" nil '(2 5 0)))

;; For APEL 10.2 or earlier.
(defun-maybe product-version-as-string (product)
  "Return version number of product as a string.
PRODUCT is a product structure which returned by `product-define'.
If optional argument UPDATE is non-nil, then regenerate
`produce-version-string' from `product-version'."
  (setq product (product-find product))
  (or (product-version-string product)
      (and (product-version product)
           (product-set-version-string product
                                       (mapconcat (function int-to-string)
                                                  (product-version product)
                                                  ".")))))

;; set version-string
(product-version-as-string 'elmo-version)

(defun elmo-version ()
  "Return ELMO version."
  (product-string-1 'elmo-version))


;; for backward compatibility
(defconst elmo-appname (product-name (product-find 'elmo-version)))
(make-obsolete-variable
 'elmo-appname
 "use (product-name (product-find 'elmo-version)) insteaed.")

(defconst elmo-version (product-version-string (product-find 'elmo-version)))
(make-obsolete-variable
 'elmo-version
 "use (product-version-string (product-find 'elmo-version)) instead.")

;;; elmo-version.el ends here
