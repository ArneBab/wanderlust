;; -*- coding: iso-2022-jp -*-
(require 'lunit)

;; Emacs 21
(unless (and (fboundp 'find-coding-system) (find-coding-system 'utf-16))
  (ignore-errors (require 'un-define)))
(require 'utf7)

;; Emacs 21.3.50 to 22
(when (fboundp 'utf-translate-cjk-mode)
  (utf-translate-cjk-mode 1))

(luna-define-class test-utf7 (lunit-test-case))

(luna-define-method test-utf7-encode-string ((case test-utf7))
  (lunit-assert
   (string=
    "+ZeVnLIqe-"
    (utf7-encode-string "$BF|K\8l(B"))))	; FIXME!!: don't care coding system

(luna-define-method test-utf7-decode-string ((case test-utf7))
  (lunit-assert
   (string=
    "$BF|K\8l(B"				; FIXME!!: don't care coding system
    (utf7-decode-string "+ZeVnLIqe-"))))
