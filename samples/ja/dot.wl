;;;							-*- emacs-lisp -*-
;;; ~/.wl (setting file for Wanderlust)
;;;

;; $B$^$:!$<!$N@_Dj$r(B ~/.emacs $B$J$I$K=q$$$F$/$@$5$$!#(B
;; $B$3$3$+$i(B
(require 'mime-setup)
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
;; $B$3$3$^$G(B

;;; [[ $B8D?M>pJs$N@_Dj(B ]]

;; From $B$N@_Dj(B
;(setq wl-from "Your Name <e-mail-address>")
;; Organization $B$N@_Dj(B
;(setq wl-organization "")

;;; [[ $B4pK\E*$J@_Dj(B ]]

;; $B%a%C%;!<%8%G!<%?%Y!<%9$r:n$k%G%#%l%/%H%j(B
(setq elmo-msgdb-dir "~/.elmo")

;; MH (localdir) $B$N%[!<%`(B
(setq elmo-localdir-folder-path "~/Mail")
;; IMAP4$B%5!<%P$N@_Dj(B
(setq elmo-default-imap4-server "localhost")
;; POP$B%5!<%P$N@_Dj(B
(setq elmo-default-pop3-server "localhost")
;; $B%K%e!<%9%5!<%P$N@_Dj(B
(setq elmo-default-nntp-server "localhost")
;; $BEj9F@h$N(B $B%K%e!<%9%5!<%P(B
(setq wl-nntp-posting-server elmo-default-nntp-server)
;; $B%a!<%k$rAw?.$9$k@h$N(B (SMTP)$B%5!<%P(B
(setq wl-smtp-posting-server "localhost")

;; $B%"%$%3%s$rCV$/%G%#%l%/%H%j(B (XEmacs $B$N$_(B)
;; (XEmacs $B$N(B package $B$H$7$F%$%s%9%H!<%k$5$l$F$$$k>l9g!"I,MW$"$j$^$;$s(B)
;(setq wl-icon-dir "~/work/wl/etc")

;; (system-name) $B$,(BFQDN$B$rJV$5$J$$>l9g!"(B
;; $B0J2<$r%[%9%HL>$r=|$$$?%I%a%$%sL>$r@_Dj$7$F$/$@$5$$!#(B
;; ((system-name)  "." wl-local-domain $B$,(B Message-ID $B$N:n@.!"(B
;; SMTP $B$N(B HELO $B$K;HMQ(B $B$5$l$^$9!#(B)
;(setq wl-local-domain "localdomain")
;; Message-ID $B$N%I%a%$%s%Q!<%H$r6/@)E*$K;XDj(B
;(setq wl-message-id-domain "localhost.localdomain")

;(setq wl-default-folder "+inbox")   ;; wl-summary-goto-folder $B$N;~$KA*Br$9$k(B
				     ;; $B%G%U%)%k%H$N%U%)%k%@(B
;(setq wl-default-spec "+")	     ;; $B%U%)%k%@L>Jd40;~$K;HMQ$9$k(B
				     ;; $B%G%U%)%k%H$N%9%Z%C%/(B

;(setq wl-fcc "+outbox")	     ;; Folder Carbon Copy

(setq wl-interactive-exit t)	     ;; $B=*N;;~$K3NG'$9$k(B
(setq wl-interactive-send t)	     ;; $B%a!<%kAw?.;~$K$O3NG'$9$k(B

(setq wl-auto-select-first t)	     ;; $B%5%^%j0\F08e$K@hF,%a%C%;!<%8$rI=<($9$k(B
(setq wl-auto-select-next t)	     ;; $B%5%^%jFb$N0\F0$GL$FI%a%C%;!<%8$,$J$$$H(B
				     ;; $B<!$N%U%)%k%@$K0\F0$9$k(B
;(setq wl-auto-select-next 'skip-no-unread)
				     ;; $BL$FI$,$J$$%U%)%k%@$OHt$P$9(B
				     ;; SPC$B%-!<$@$1$GFI$_?J$a$k>l9g$OJXMx(B
(setq wl-summary-move-order 'unread) ;; $BL$FI%a%C%;!<%8$rM%@hE*$KFI$`(B
(setq wl-thread-insert-opened t)     ;; thread$B:n@.;~$O>o$K(Bopen$B$K$9$k(B

;(setq wl-stay-folder-window t)	     ;; $B%5%^%j$K0\F0$7$?$H$-$K%U%)%k%@%P%C%U%!(B
				     ;; $B$N1&$K%5%^%j$N%P%C%U%!$rI=<($9$k(B

;; $B%U%)%k%@<oJL$4$H$N%-%c%C%7%e$N@_Dj(B
;; (localdir, localnews, maildir $B$O%-%c%C%7%e$7$J$$(B)
;(setq elmo-archive-use-cache nil)
;(setq elmo-nntp-use-cache t)
;(setq elmo-imap4-use-cache t)
;(setq elmo-pop3-use-cache t)

;; $B%*%U%i%$%s(B(unplugged)$BA`:n$rM-8z$K$9$k(B($B8=:_$O(BIMAP$B%U%)%k%@$N$_(B)
;(setq elmo-enable-disconnected-operation t)

;; unplugged $B>uBV$GAw?.$9$k$H!$%-%e!<(B(`wl-queue-folder')$B$K3JG<$9$k(B
(setq wl-draft-enable-queuing t)
;; unplugged $B$+$i(B plugged $B$KJQ$($k$H!$%-%e!<$K$"$k%a%C%;!<%8$rAw?.$9$k(B
(setq wl-auto-flush-queue t)

;; $B5/F0;~$O%*%U%i%$%s>uBV$K$9$k(B
;(setq wl-plugged nil)
;; $B5/F0;~$K%]!<%H$4$H$N(Bplug$B>uBV$rJQ99$9$k(B
;(add-hook 'wl-make-plugged-hook
;	  '(lambda ()
;	     ;; server,port$B$N(Bplug$B>uBV$r?75,DI2C$b$7$/$OJQ99$9$k(B
;	     (elmo-set-plugged plugged$BCM(B(t/nil) server port)
;	     ;; port $B$r>JN,$9$k$H(Bserver$B$NA4(Bport$B$,JQ99$5$l$k(B
;	     ;; (port $B$r>JN,$7$F?75,$NDI2C$O$G$-$J$$(B)
;	     (elmo-set-plugged plugged$BCM(B(t/nil) server)
;	     ))


;; highlight$B$N@_Dj(B ($BL@$k$$GX7J?'$N>l9g$G$9(B)

;; $B%0%k!<%W$rL$FI?t$K$h$j?'J,$1$7$J$$!#3+JD>uBV$K$h$j?'J,$1$9$k!#(B
;(setq wl-highlight-group-folder-by-numbers nil)

(setq wl-highlight-message-header-alist
      '(("Subject[ \t]*:" . wl-highlight-message-subject-header-contents)
	("From[ \t]*:" . wl-highlight-message-from-header-contents)
	("\\(.*To\\|Cc\\|Newsgroups\\)[ \t]*:" . wl-highlight-message-important-header-contents)
	("\\(User-Agent\\|X-Mailer\\|X-Newsreader\\)[ \t]*:" .
	 wl-highlight-message-unimportant-header-contents)
	))
;; $B0zMQ%l%Y%k$G?'J,$1$7$J$$(B
;(setq wl-highlight-citation-face-list
;      '(wl-highlight-message-cited-text-1))

(defun my-wl-set-face (face spec)
  (make-face face)
  (cond ((fboundp 'face-spec-set)
	 (face-spec-set face spec))
	(t
	 (wl-declare-face face spec))))

;; $B%a%C%;!<%8%X%C%@(B
(my-wl-set-face 'wl-highlight-message-subject-header-contents
		'((t (:foreground "blue" :bold t))))
(my-wl-set-face 'wl-highlight-message-from-header-contents
		'((t (:foreground "red" :bold t))))
(my-wl-set-face 'wl-highlight-message-important-header-contents
		'((t (:foreground "purple" :bold t))))
(my-wl-set-face 'wl-highlight-message-unimportant-header-contents
		'((t (:foreground "RoyalBlue" :bold t))))
(my-wl-set-face 'wl-highlight-message-headers
		'((t (:foreground "magenta3" :bold t))))
(my-wl-set-face 'wl-highlight-message-header-contents
		'((t (:foreground "brown" :bold nil))))
(my-wl-set-face 'wl-highlight-message-signature
		'((t (:foreground "blue"))))
;; $B0zMQ(B
(my-wl-set-face 'wl-highlight-message-citation-header
		'((t (:foreground "DarkGreen"))))
(my-wl-set-face 'wl-highlight-message-cited-text-1
		'((t (:foreground "forest green"))))
(my-wl-set-face 'wl-highlight-message-cited-text-2
		'((t (:foreground "SaddleBrown"))))
(my-wl-set-face 'wl-highlight-message-cited-text-3
		'((t (:foreground "orchid3"))))
(my-wl-set-face 'wl-highlight-message-cited-text-4
		'((t (:foreground "purple1"))))
(my-wl-set-face 'wl-highlight-message-cited-text-5
		'((t (:foreground "MediumPurple1"))))
(my-wl-set-face 'wl-highlight-message-cited-text-6
		'((t (:foreground "PaleVioletRed"))))
(my-wl-set-face 'wl-highlight-message-cited-text-7
		'((t (:foreground "LightPink"))))
(my-wl-set-face 'wl-highlight-message-cited-text-8
		'((t (:foreground "salmon"))))
(my-wl-set-face 'wl-highlight-message-cited-text-9
		'((t (:foreground "SandyBrown"))))
(my-wl-set-face 'wl-highlight-message-cited-text-10
		'((t (:foreground "wheat"))))
;; $B%5%^%j(B
(my-wl-set-face 'wl-highlight-summary-important-face
		'((t (:foreground "purple"))))
(my-wl-set-face 'wl-highlight-summary-new-face
		'((t (:foreground "tomato"))))
(my-wl-set-face 'wl-highlight-summary-unread-face
		'((t (:foreground "RoyalBlue"))))
(my-wl-set-face 'wl-highlight-summary-deleted-face
		'((t (:foreground "gray"))))
(my-wl-set-face 'wl-highlight-summary-refiled-face
		'((t (:foreground "blue"))))
(my-wl-set-face 'wl-highlight-summary-temp-face
		'((t (:foreground "salmon"))))
(my-wl-set-face 'wl-highlight-summary-displaying-face
		'((t (:bold t :underline t))))
;; ($B%9%l%C%I(B)
(my-wl-set-face 'wl-highlight-summary-thread-top-face
		'((t (:foreground "green4"))))
(my-wl-set-face 'wl-highlight-summary-normal-face
		'((t (:foreground "SeaGreen"))))
;; $B%U%)%k%@(B
(my-wl-set-face 'wl-highlight-folder-unknown-face
		'((t (:foreground "RoyalBlue"))))
(my-wl-set-face 'wl-highlight-folder-killed-face
		'((t (:foreground "gray50"))))
(my-wl-set-face 'wl-highlight-folder-unread-face
		'((t (:foreground "brown"))))
(my-wl-set-face 'wl-highlight-folder-zero-face
		'((t (:foreground "blue4"))))
(my-wl-set-face 'wl-highlight-folder-few-face
		'((t (:foreground "tomato"))))
(my-wl-set-face 'wl-highlight-folder-many-face
		'((t (:foreground "HotPink1"))))
;; $B%0%k!<%W(B
(my-wl-set-face 'wl-highlight-folder-opened-face
		'((t (:foreground "forest green"))))
(my-wl-set-face 'wl-highlight-folder-closed-face
		'((t (:foreground "DarkOliveGreen4"))))
;; $B%9%?!<%H%"%C%W%G%b(B
(my-wl-set-face 'wl-highlight-demo-face
		'((t (:foreground "blue2"))))


;;; [[ $BFC<l$J@_Dj(B ]]

;; jka-compr $B$rMxMQ$7$F(B ~/elmo/SPEC/ $B0J2<$N%G!<%?%Y!<%9$r05=L$9$k(B
;(setq elmo-msgdb-overview-filename "overview.gz")
;(setq elmo-msgdb-number-filename "number.gz")
;(setq wl-summary-cache-file ".wl-summary-cache.gz")
;(setq wl-thread-top-file ".wl-thread-top.gz")


;; $B%0%k!<%W$r(Bcheck$B$7$?8e$KL$FI$,$"$k%U%)%k%@$N%0%k!<%W$r<+F0E*$K3+$/(B
(add-hook 'wl-folder-check-entity-hook
	  '(lambda ()
	     (wl-folder-open-unread-folder entity)
	     ))

;; $B<+J,$N%a!<%k%"%I%l%9$N%j%9%H(B
(setq wl-user-mail-address-list
      (list (wl-address-header-extract-address wl-from)
	    ;;"e-mail2@bbb.com" ...
	    ))

;; $B<+J,$N;22C$7$F$$$k%a!<%j%s%0%j%9%H$N%j%9%H(B
(setq wl-subscribed-mailing-list
      '("wl@lists.airs.net"
	"apel-ja@m17n.org"
	;;"ml@example.com" ...
	))

;; $B%5%^%jI=<(4X?t$rJQ99$9$k(B

;; $B%5%^%jI=<($K$*$$$F;HMQ$9$k>pJs$r;}$D%U%#!<%k%I$r(Boverview$B>pJs$K(B
;; $BF~$l$k@_Dj(B($B$?$@$7!$(Blocal$B%U%)%k%@$N$_(B)
;; $B<+F0%j%U%!%$%k$KI,MW$J%U%#!<%k%I$b@_Dj(B
(setq elmo-msgdb-extra-fields '("newsgroups"
				"x-ml-name"
				"x-mail-count" "x-ml-count"
				"x-sequence"
				"mailing-list"))

;;; ML $B$N%a%C%;!<%8$G$"$l$P!$%5%^%j$N(B Subject $BI=<($K(B
;;; ML$BL>(B $B$d(B ML$B$K$*$1$k%a%C%;!<%8HV9f$bI=<($9$k(B
(setq wl-summary-subject-func 'my-wl-summary-subject-func-ml)
(defun my-wl-summary-subject-func-ml (subject-string)
  (let ((folder wl-summary-buffer-folder-name)
	(subj subject-string) (sequence) (ml-name) (ml-count))
    (setq sequence (elmo-msgdb-overview-entity-get-extra-field
		    entity "x-sequence")
	  ml-name (or (elmo-msgdb-overview-entity-get-extra-field
		       entity "x-ml-name")
		      (and sequence
			   (car (split-string sequence " "))))
	  ml-count (or (elmo-msgdb-overview-entity-get-extra-field
			entity "x-mail-count")
		       (elmo-msgdb-overview-entity-get-extra-field
			entity "x-ml-count")
		       (and sequence
			    (cadr (split-string sequence " ")))))
    (if (string-match
	 "^\\s(\\(.+\\)[ :]\\([0-9]+\\)\\s)[ \t]*"
	 subject-string)
	(progn
	  (setq subj (substring subject-string (match-end 0)))
	  (if (not ml-name) (setq ml-name (match-string 1 subject-string)))
	  (if (not ml-count) (setq ml-count (match-string 2 subject-string)))))
    (if (and ml-name ml-count)
	(if (string= folder wl-default-folder)
	    (format "(%s %05d) %s"
		    (car (split-string ml-name " "))
		    (string-to-int ml-count)
		    subj)
	  (format "#%05d %s"
		  (string-to-int ml-count) subj))
      subj)))

;; imput $B$K$h$jHsF14|$GAw?.$9$k(B
;; (utils/im-wl.el $B$r%$%s%9%H!<%k$7$F$*$/I,MW$,$"$j$^$9!#(B
;;  $B$^$?!$(B~/.im/Config $B$N@_Dj(B(Smtpservers)$B$rK:$l$J$$$3$H$H!$(B
;;  wl-draft-enable-queuing $B$N5!G=$,F/$+$J$/$J$k$3$H$KCm0U!#(B)
;(autoload 'wl-draft-send-with-imput-async "im-wl")
;(setq wl-draft-send-func 'wl-draft-send-with-imput-async)

;; $B%F%s%W%l!<%H$N@_Dj(B
(setq wl-template-alist
      '(("default"
	 ("From" . wl-from)
	 ("Organization" . "~/.wl sample")
	 (body . "  $B!{!{$G$9!#(B\n"))		;; $BK\J8(B
	("report"
	 ("To" . "boss@company.jp")
	 ("Subject" . "$BJs9p(B")
	 (top . "$B:#=5$NJs9p$G$9!#(B\n")		;; $BK\J8@hF,$X$NA^F~(B
;;	 (file-bottom . "~/work/report.txt")	;; $BK\J8KvHx$X%U%!%$%k$NA^F~(B
	 )
	))

;; $B%I%i%U%H%P%C%U%!$NFbMF$K$h$j(B From $B$d(B Organization $B$J$I$N%X%C%@$r<+(B
;; $BF0E*$KJQ99$9$k(B
(setq wl-draft-config-alist
      '((reply			;; $BJV?.85$N%P%C%U%!$r8+$k(B
	 "^To: .*\\(test-notsend-wl@lists.airs.net\\)"
	 (template . "default"))		;; $B%F%s%W%l!<%H(B
	("^To: .*\\(test-notsend-wl@lists.airs.net\\)"
	 wl-ml-draft-config-func		;; $B4X?t(B
	 ("From" . wl-from)			;; $BJQ?t(B
	 ("Organization" . "~/.wl sample"))	;; $BJ8;zNs(B
	("^Newsgroups: test.*"
	 ("Organization" . "$B%K%e!<%9Ej9F;~$NAH?%L>(B"))
	))
;; $B%I%i%U%H:n@.;~(B($BJV?.;~(B)$B$K!$<+F0E*$K%X%C%@$rJQ99$9$k(B
; (add-hook 'wl-mail-setup-hook
;           '(lambda ()
;              (unless wl-draft-reedit    ;; $B:FJT=8;~$OE,MQ$7$J$$(B
;                (wl-draft-config-exec wl-draft-config-alist))))

;; $B%a!<%k$NJV?.;~$K08@h$rIU$1$kJ}?K$N@_Dj(B

;; $B2<5-JQ?t$N(B alist $B$NMWAG(B
;; ('$BJV?.85$KB8:_$9$k%U%#!<%k%I(B' .
;;   ('To$B%U%#!<%k%I(B' 'Cc$B%U%#!<%k%I(B' 'Newsgroups$B%U%#!<%k%I(B'))

;; "a" (without-argument)$B$G$O(B Reply-To $B$d(B From $B$J$I$G;XDj$5$l$?M#0l?M(B
;; $B$^$?$OM#0l$D$NEj9F@h$KJV?.$9$k!#$^$?!$(BX-ML-Name $B$H(B Reply-To $B$,$D$$(B
;; $B$F$$$k$J$i(B Reply-To $B08$K$9$k!#(B
; (setq wl-draft-reply-without-argument-list
;       '((("X-ML-Name" "Reply-To") . (("Reply-To") nil nil))
; 	("X-ML-Name" . (("To" "Cc") nil nil))
; 	("Followup-To" . (nil nil ("Followup-To")))
; 	("Newsgroups" . (nil nil ("Newsgroups")))
; 	("Reply-To" . (("Reply-To") nil nil))
; 	("Mail-Reply-To" . (("Mail-Reply-To") nil nil))
; 	("From" . (("From") nil nil))))
; 
;; "C-u a" (with-argument)$B$G$"$l$P4X78$9$kA4$F$N?M!&Ej9F@h$KJV?.$9$k!#(B
; (setq wl-draft-reply-with-argument-list
;       '(("Followup-To" . (("From") nil ("Followup-To")))
; 	("Newsgroups" . (("From") nil ("Newsgroups")))
; 	("Mail-Followup-To" . (("Mail-Followup-To") nil ("Newsgroups")))
; 	("From" . (("From") ("To" "Cc") ("Newsgroups")))))


;; X-Face $B$rI=<($9$k(B ($BMW(B x-face (and x-face-mule))

(when (and window-system
	   (module-installed-p 'x-face))
  (cond (wl-on-xemacs				;; for XEmacs
	 (autoload 'x-face-xmas-wl-display-x-face "x-face" nil t)
	 (setq wl-highlight-x-face-func
	       'x-face-xmas-wl-display-x-face))
	((module-installed-p 'x-face-mule)	;; for Mule (GNU Emacs)
	 ;; x-face-mule 0.20$B0J8e(B
	 (setq wl-highlight-x-face-func
	       (function
		(lambda (&optional beg end) ; for compatibility
		  (x-face-decode-message-header))))
	 (setq x-face-mule-highlight-x-face-style 'xmas)
	 (require 'x-face-mule)
	 )))

;; $B<+F0%j%U%!%$%k$N%k!<%k@_Dj(B
;(setq wl-refile-rule-alist
;      '(
;     	("x-ml-name"
;     	 ("^Wanderlust" . "+wl")
;     	 ("^Elisp" . "+elisp"))
;     	("From"
;     	 ("teranisi@isl.ntt.co.jp" . "+teranisi"))))

;; $B<+F0%j%U%!%$%k$7$J$$1JB3%^!<%/$r@_Dj(B
;; $BI8=`$G$O(B "N" "U" "!" $B$K$J$C$F$*$j!"L$FI%a%C%;!<%8$r<+F0%j%U%!%$%k$7(B
;; $B$^$;$s!#(Bnil $B$G$9$Y$F$N%a%C%;!<%8$,BP>]$K$J$j$^$9!#(B
;(setq wl-summary-auto-refile-skip-marks nil)

;; $B%9%3%"5!G=$N@_Dj(B
;; wl-score-folder-alist $B$N@_Dj$K4X$o$i$:I,$:(B "all.SCORE" $B$O;HMQ$5$l$k!#(B
; (setq wl-score-folder-alist
;       '(("^-comp\\."
; 	 "news.comp.SCORE"
; 	 "news.SCORE")
; 	("^-"
; 	 "news.SCORE")))
;; $B%9%3%"%U%!%$%k$rCV$/%G%#%l%/%H%j(B
; (setq wl-score-files-directory "~/.elmo/")

;;;
;;; end of file
;;;
