;;;; Output of mkerrcodes.awk.  DO NOT EDIT.

;;; Copyright (C) 2006 g10 Code GmbH
;;;
;;; This file is part of libgpg-error.
;;;
;;; libgpg-error is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU Lesser General Public License
;;; as published by the Free Software Foundation; either version 2.1 of
;;; the License, or (at your option) any later version.
;;;
;;; libgpg-error is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Lesser General Public License for more details.
;;;
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with libgpg-error; if not, write to the Free
;;; Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
;;; 02111-1307, USA.

(in-package :gpg-error)

;;; The error code type gpg-err-code-t.

;;; This is used for system error codes.
(defconstant +gpg-err-system-error+ (ash 1 15))

;;; This is one more than the largest allowed entry.
(defconstant +gpg-err-code-dim+ 65536)

;;; A helper macro to have the keyword values evaluated.
(defmacro defcenum-eval (type doc &rest vals)
  `(defcenum ,type ,doc
    ,@(loop for v in vals
            collect `(,(first v) ,(eval (second v))))))

(defcenum-eval gpg-err-code-t
    "The GPG error code type."
  (:gpg-err-no-error 0)
  (:gpg-err-general 1)
  (:gpg-err-unknown-packet 2)
  (:gpg-err-unknown-version 3)
  (:gpg-err-pubkey-algo 4)
  (:gpg-err-digest-algo 5)
  (:gpg-err-bad-pubkey 6)
  (:gpg-err-bad-seckey 7)
  (:gpg-err-bad-signature 8)
  (:gpg-err-no-pubkey 9)
  (:gpg-err-checksum 10)
  (:gpg-err-bad-passphrase 11)
  (:gpg-err-cipher-algo 12)
  (:gpg-err-keyring-open 13)
  (:gpg-err-inv-packet 14)
  (:gpg-err-inv-armor 15)
  (:gpg-err-no-user-id 16)
  (:gpg-err-no-seckey 17)
  (:gpg-err-wrong-seckey 18)
  (:gpg-err-bad-key 19)
  (:gpg-err-compr-algo 20)
  (:gpg-err-no-prime 21)
  (:gpg-err-no-encoding-method 22)
  (:gpg-err-no-encryption-scheme 23)
  (:gpg-err-no-signature-scheme 24)
  (:gpg-err-inv-attr 25)
  (:gpg-err-no-value 26)
  (:gpg-err-not-found 27)
  (:gpg-err-value-not-found 28)
  (:gpg-err-syntax 29)
  (:gpg-err-bad-mpi 30)
  (:gpg-err-inv-passphrase 31)
  (:gpg-err-sig-class 32)
  (:gpg-err-resource-limit 33)
  (:gpg-err-inv-keyring 34)
  (:gpg-err-trustdb 35)
  (:gpg-err-bad-cert 36)
  (:gpg-err-inv-user-id 37)
  (:gpg-err-unexpected 38)
  (:gpg-err-time-conflict 39)
  (:gpg-err-keyserver 40)
  (:gpg-err-wrong-pubkey-algo 41)
  (:gpg-err-tribute-to-d-a 42)
  (:gpg-err-weak-key 43)
  (:gpg-err-inv-keylen 44)
  (:gpg-err-inv-arg 45)
  (:gpg-err-bad-uri 46)
  (:gpg-err-inv-uri 47)
  (:gpg-err-network 48)
  (:gpg-err-unknown-host 49)
  (:gpg-err-selftest-failed 50)
  (:gpg-err-not-encrypted 51)
  (:gpg-err-not-processed 52)
  (:gpg-err-unusable-pubkey 53)
  (:gpg-err-unusable-seckey 54)
  (:gpg-err-inv-value 55)
  (:gpg-err-bad-cert-chain 56)
  (:gpg-err-missing-cert 57)
  (:gpg-err-no-data 58)
  (:gpg-err-bug 59)
  (:gpg-err-not-supported 60)
  (:gpg-err-inv-op 61)
  (:gpg-err-timeout 62)
  (:gpg-err-internal 63)
  (:gpg-err-eof-gcrypt 64)
  (:gpg-err-inv-obj 65)
  (:gpg-err-too-short 66)
  (:gpg-err-too-large 67)
  (:gpg-err-no-obj 68)
  (:gpg-err-not-implemented 69)
  (:gpg-err-conflict 70)
  (:gpg-err-inv-cipher-mode 71)
  (:gpg-err-inv-flag 72)
  (:gpg-err-inv-handle 73)
  (:gpg-err-truncated 74)
  (:gpg-err-incomplete-line 75)
  (:gpg-err-inv-response 76)
  (:gpg-err-no-agent 77)
  (:gpg-err-agent 78)
  (:gpg-err-inv-data 79)
  (:gpg-err-assuan-server-fault 80)
  (:gpg-err-assuan 81)
  (:gpg-err-inv-session-key 82)
  (:gpg-err-inv-sexp 83)
  (:gpg-err-unsupported-algorithm 84)
  (:gpg-err-no-pin-entry 85)
  (:gpg-err-pin-entry 86)
  (:gpg-err-bad-pin 87)
  (:gpg-err-inv-name 88)
  (:gpg-err-bad-data 89)
  (:gpg-err-inv-parameter 90)
  (:gpg-err-wrong-card 91)
  (:gpg-err-no-dirmngr 92)
  (:gpg-err-dirmngr 93)
  (:gpg-err-cert-revoked 94)
  (:gpg-err-no-crl-known 95)
  (:gpg-err-crl-too-old 96)
  (:gpg-err-line-too-long 97)
  (:gpg-err-not-trusted 98)
  (:gpg-err-canceled 99)
  (:gpg-err-bad-ca-cert 100)
  (:gpg-err-cert-expired 101)
  (:gpg-err-cert-too-young 102)
  (:gpg-err-unsupported-cert 103)
  (:gpg-err-unknown-sexp 104)
  (:gpg-err-unsupported-protection 105)
  (:gpg-err-corrupted-protection 106)
  (:gpg-err-ambiguous-name 107)
  (:gpg-err-card 108)
  (:gpg-err-card-reset 109)
  (:gpg-err-card-removed 110)
  (:gpg-err-inv-card 111)
  (:gpg-err-card-not-present 112)
  (:gpg-err-no-pkcs15-app 113)
  (:gpg-err-not-confirmed 114)
  (:gpg-err-configuration 115)
  (:gpg-err-no-policy-match 116)
  (:gpg-err-inv-index 117)
  (:gpg-err-inv-id 118)
  (:gpg-err-no-scdaemon 119)
  (:gpg-err-scdaemon 120)
  (:gpg-err-unsupported-protocol 121)
  (:gpg-err-bad-pin-method 122)
  (:gpg-err-card-not-initialized 123)
  (:gpg-err-unsupported-operation 124)
  (:gpg-err-wrong-key-usage 125)
  (:gpg-err-nothing-found 126)
  (:gpg-err-wrong-blob-type 127)
  (:gpg-err-missing-value 128)
  (:gpg-err-hardware 129)
  (:gpg-err-pin-blocked 130)
  (:gpg-err-use-conditions 131)
  (:gpg-err-pin-not-synced 132)
  (:gpg-err-inv-crl 133)
  (:gpg-err-bad-ber 134)
  (:gpg-err-inv-ber 135)
  (:gpg-err-element-not-found 136)
  (:gpg-err-identifier-not-found 137)
  (:gpg-err-inv-tag 138)
  (:gpg-err-inv-length 139)
  (:gpg-err-inv-keyinfo 140)
  (:gpg-err-unexpected-tag 141)
  (:gpg-err-not-der-encoded 142)
  (:gpg-err-no-cms-obj 143)
  (:gpg-err-inv-cms-obj 144)
  (:gpg-err-unknown-cms-obj 145)
  (:gpg-err-unsupported-cms-obj 146)
  (:gpg-err-unsupported-encoding 147)
  (:gpg-err-unsupported-cms-version 148)
  (:gpg-err-unknown-algorithm 149)
  (:gpg-err-inv-engine 150)
  (:gpg-err-pubkey-not-trusted 151)
  (:gpg-err-decrypt-failed 152)
  (:gpg-err-key-expired 153)
  (:gpg-err-sig-expired 154)
  (:gpg-err-encoding-problem 155)
  (:gpg-err-inv-state 156)
  (:gpg-err-dup-value 157)
  (:gpg-err-missing-action 158)
  (:gpg-err-module-not-found 159)
  (:gpg-err-inv-oid-string 160)
  (:gpg-err-inv-time 161)
  (:gpg-err-inv-crl-obj 162)
  (:gpg-err-unsupported-crl-version 163)
  (:gpg-err-inv-cert-obj 164)
  (:gpg-err-unknown-name 165)
  (:gpg-err-locale-problem 166)
  (:gpg-err-not-locked 167)
  (:gpg-err-protocol-violation 168)
  (:gpg-err-inv-mac 169)
  (:gpg-err-inv-request 170)
  (:gpg-err-unknown-extn 171)
  (:gpg-err-unknown-crit-extn 172)
  (:gpg-err-locked 173)
  (:gpg-err-unknown-option 174)
  (:gpg-err-unknown-command 175)
  (:gpg-err-unfinished 199)
  (:gpg-err-buffer-too-short 200)
  (:gpg-err-sexp-inv-len-spec 201)
  (:gpg-err-sexp-string-too-long 202)
  (:gpg-err-sexp-unmatched-paren 203)
  (:gpg-err-sexp-not-canonical 204)
  (:gpg-err-sexp-bad-character 205)
  (:gpg-err-sexp-bad-quotation 206)
  (:gpg-err-sexp-zero-prefix 207)
  (:gpg-err-sexp-nested-dh 208)
  (:gpg-err-sexp-unmatched-dh 209)
  (:gpg-err-sexp-unexpected-punc 210)
  (:gpg-err-sexp-bad-hex-char 211)
  (:gpg-err-sexp-odd-hex-numbers 212)
  (:gpg-err-sexp-bad-oct-char 213)
  (:gpg-err-ass-general 257)
  (:gpg-err-ass-accept-failed 258)
  (:gpg-err-ass-connect-failed 259)
  (:gpg-err-ass-inv-response 260)
  (:gpg-err-ass-inv-value 261)
  (:gpg-err-ass-incomplete-line 262)
  (:gpg-err-ass-line-too-long 263)
  (:gpg-err-ass-nested-commands 264)
  (:gpg-err-ass-no-data-cb 265)
  (:gpg-err-ass-no-inquire-cb 266)
  (:gpg-err-ass-not-a-server 267)
  (:gpg-err-ass-not-a-client 268)
  (:gpg-err-ass-server-start 269)
  (:gpg-err-ass-read-error 270)
  (:gpg-err-ass-write-error 271)
  (:gpg-err-ass-too-much-data 273)
  (:gpg-err-ass-unexpected-cmd 274)
  (:gpg-err-ass-unknown-cmd 275)
  (:gpg-err-ass-syntax 276)
  (:gpg-err-ass-canceled 277)
  (:gpg-err-ass-no-input 278)
  (:gpg-err-ass-no-output 279)
  (:gpg-err-ass-parameter 280)
  (:gpg-err-ass-unknown-inquire 281)
  (:gpg-err-user-1 1024)
  (:gpg-err-user-2 1025)
  (:gpg-err-user-3 1026)
  (:gpg-err-user-4 1027)
  (:gpg-err-user-5 1028)
  (:gpg-err-user-6 1029)
  (:gpg-err-user-7 1030)
  (:gpg-err-user-8 1031)
  (:gpg-err-user-9 1032)
  (:gpg-err-user-10 1033)
  (:gpg-err-user-11 1034)
  (:gpg-err-user-12 1035)
  (:gpg-err-user-13 1036)
  (:gpg-err-user-14 1037)
  (:gpg-err-user-15 1038)
  (:gpg-err-user-16 1039)
  (:gpg-err-missing-errno 16381)
  (:gpg-err-unknown-errno 16382)
  (:gpg-err-eof 16383)

  ;; The following error codes map system errors.
  (:gpg-err-e2big (logior +gpg-err-system-error+ 0))
  (:gpg-err-eacces (logior +gpg-err-system-error+ 1))
  (:gpg-err-eaddrinuse (logior +gpg-err-system-error+ 2))
  (:gpg-err-eaddrnotavail (logior +gpg-err-system-error+ 3))
  (:gpg-err-eadv (logior +gpg-err-system-error+ 4))
  (:gpg-err-eafnosupport (logior +gpg-err-system-error+ 5))
  (:gpg-err-eagain (logior +gpg-err-system-error+ 6))
  (:gpg-err-ealready (logior +gpg-err-system-error+ 7))
  (:gpg-err-eauth (logior +gpg-err-system-error+ 8))
  (:gpg-err-ebackground (logior +gpg-err-system-error+ 9))
  (:gpg-err-ebade (logior +gpg-err-system-error+ 10))
  (:gpg-err-ebadf (logior +gpg-err-system-error+ 11))
  (:gpg-err-ebadfd (logior +gpg-err-system-error+ 12))
  (:gpg-err-ebadmsg (logior +gpg-err-system-error+ 13))
  (:gpg-err-ebadr (logior +gpg-err-system-error+ 14))
  (:gpg-err-ebadrpc (logior +gpg-err-system-error+ 15))
  (:gpg-err-ebadrqc (logior +gpg-err-system-error+ 16))
  (:gpg-err-ebadslt (logior +gpg-err-system-error+ 17))
  (:gpg-err-ebfont (logior +gpg-err-system-error+ 18))
  (:gpg-err-ebusy (logior +gpg-err-system-error+ 19))
  (:gpg-err-ecanceled (logior +gpg-err-system-error+ 20))
  (:gpg-err-echild (logior +gpg-err-system-error+ 21))
  (:gpg-err-echrng (logior +gpg-err-system-error+ 22))
  (:gpg-err-ecomm (logior +gpg-err-system-error+ 23))
  (:gpg-err-econnaborted (logior +gpg-err-system-error+ 24))
  (:gpg-err-econnrefused (logior +gpg-err-system-error+ 25))
  (:gpg-err-econnreset (logior +gpg-err-system-error+ 26))
  (:gpg-err-ed (logior +gpg-err-system-error+ 27))
  (:gpg-err-edeadlk (logior +gpg-err-system-error+ 28))
  (:gpg-err-edeadlock (logior +gpg-err-system-error+ 29))
  (:gpg-err-edestaddrreq (logior +gpg-err-system-error+ 30))
  (:gpg-err-edied (logior +gpg-err-system-error+ 31))
  (:gpg-err-edom (logior +gpg-err-system-error+ 32))
  (:gpg-err-edotdot (logior +gpg-err-system-error+ 33))
  (:gpg-err-edquot (logior +gpg-err-system-error+ 34))
  (:gpg-err-eexist (logior +gpg-err-system-error+ 35))
  (:gpg-err-efault (logior +gpg-err-system-error+ 36))
  (:gpg-err-efbig (logior +gpg-err-system-error+ 37))
  (:gpg-err-eftype (logior +gpg-err-system-error+ 38))
  (:gpg-err-egratuitous (logior +gpg-err-system-error+ 39))
  (:gpg-err-egregious (logior +gpg-err-system-error+ 40))
  (:gpg-err-ehostdown (logior +gpg-err-system-error+ 41))
  (:gpg-err-ehostunreach (logior +gpg-err-system-error+ 42))
  (:gpg-err-eidrm (logior +gpg-err-system-error+ 43))
  (:gpg-err-eieio (logior +gpg-err-system-error+ 44))
  (:gpg-err-eilseq (logior +gpg-err-system-error+ 45))
  (:gpg-err-einprogress (logior +gpg-err-system-error+ 46))
  (:gpg-err-eintr (logior +gpg-err-system-error+ 47))
  (:gpg-err-einval (logior +gpg-err-system-error+ 48))
  (:gpg-err-eio (logior +gpg-err-system-error+ 49))
  (:gpg-err-eisconn (logior +gpg-err-system-error+ 50))
  (:gpg-err-eisdir (logior +gpg-err-system-error+ 51))
  (:gpg-err-eisnam (logior +gpg-err-system-error+ 52))
  (:gpg-err-el2hlt (logior +gpg-err-system-error+ 53))
  (:gpg-err-el2nsync (logior +gpg-err-system-error+ 54))
  (:gpg-err-el3hlt (logior +gpg-err-system-error+ 55))
  (:gpg-err-el3rst (logior +gpg-err-system-error+ 56))
  (:gpg-err-elibacc (logior +gpg-err-system-error+ 57))
  (:gpg-err-elibbad (logior +gpg-err-system-error+ 58))
  (:gpg-err-elibexec (logior +gpg-err-system-error+ 59))
  (:gpg-err-elibmax (logior +gpg-err-system-error+ 60))
  (:gpg-err-elibscn (logior +gpg-err-system-error+ 61))
  (:gpg-err-elnrng (logior +gpg-err-system-error+ 62))
  (:gpg-err-eloop (logior +gpg-err-system-error+ 63))
  (:gpg-err-emediumtype (logior +gpg-err-system-error+ 64))
  (:gpg-err-emfile (logior +gpg-err-system-error+ 65))
  (:gpg-err-emlink (logior +gpg-err-system-error+ 66))
  (:gpg-err-emsgsize (logior +gpg-err-system-error+ 67))
  (:gpg-err-emultihop (logior +gpg-err-system-error+ 68))
  (:gpg-err-enametoolong (logior +gpg-err-system-error+ 69))
  (:gpg-err-enavail (logior +gpg-err-system-error+ 70))
  (:gpg-err-eneedauth (logior +gpg-err-system-error+ 71))
  (:gpg-err-enetdown (logior +gpg-err-system-error+ 72))
  (:gpg-err-enetreset (logior +gpg-err-system-error+ 73))
  (:gpg-err-enetunreach (logior +gpg-err-system-error+ 74))
  (:gpg-err-enfile (logior +gpg-err-system-error+ 75))
  (:gpg-err-enoano (logior +gpg-err-system-error+ 76))
  (:gpg-err-enobufs (logior +gpg-err-system-error+ 77))
  (:gpg-err-enocsi (logior +gpg-err-system-error+ 78))
  (:gpg-err-enodata (logior +gpg-err-system-error+ 79))
  (:gpg-err-enodev (logior +gpg-err-system-error+ 80))
  (:gpg-err-enoent (logior +gpg-err-system-error+ 81))
  (:gpg-err-enoexec (logior +gpg-err-system-error+ 82))
  (:gpg-err-enolck (logior +gpg-err-system-error+ 83))
  (:gpg-err-enolink (logior +gpg-err-system-error+ 84))
  (:gpg-err-enomedium (logior +gpg-err-system-error+ 85))
  (:gpg-err-enomem (logior +gpg-err-system-error+ 86))
  (:gpg-err-enomsg (logior +gpg-err-system-error+ 87))
  (:gpg-err-enonet (logior +gpg-err-system-error+ 88))
  (:gpg-err-enopkg (logior +gpg-err-system-error+ 89))
  (:gpg-err-enoprotoopt (logior +gpg-err-system-error+ 90))
  (:gpg-err-enospc (logior +gpg-err-system-error+ 91))
  (:gpg-err-enosr (logior +gpg-err-system-error+ 92))
  (:gpg-err-enostr (logior +gpg-err-system-error+ 93))
  (:gpg-err-enosys (logior +gpg-err-system-error+ 94))
  (:gpg-err-enotblk (logior +gpg-err-system-error+ 95))
  (:gpg-err-enotconn (logior +gpg-err-system-error+ 96))
  (:gpg-err-enotdir (logior +gpg-err-system-error+ 97))
  (:gpg-err-enotempty (logior +gpg-err-system-error+ 98))
  (:gpg-err-enotnam (logior +gpg-err-system-error+ 99))
  (:gpg-err-enotsock (logior +gpg-err-system-error+ 100))
  (:gpg-err-enotsup (logior +gpg-err-system-error+ 101))
  (:gpg-err-enotty (logior +gpg-err-system-error+ 102))
  (:gpg-err-enotuniq (logior +gpg-err-system-error+ 103))
  (:gpg-err-enxio (logior +gpg-err-system-error+ 104))
  (:gpg-err-eopnotsupp (logior +gpg-err-system-error+ 105))
  (:gpg-err-eoverflow (logior +gpg-err-system-error+ 106))
  (:gpg-err-eperm (logior +gpg-err-system-error+ 107))
  (:gpg-err-epfnosupport (logior +gpg-err-system-error+ 108))
  (:gpg-err-epipe (logior +gpg-err-system-error+ 109))
  (:gpg-err-eproclim (logior +gpg-err-system-error+ 110))
  (:gpg-err-eprocunavail (logior +gpg-err-system-error+ 111))
  (:gpg-err-eprogmismatch (logior +gpg-err-system-error+ 112))
  (:gpg-err-eprogunavail (logior +gpg-err-system-error+ 113))
  (:gpg-err-eproto (logior +gpg-err-system-error+ 114))
  (:gpg-err-eprotonosupport (logior +gpg-err-system-error+ 115))
  (:gpg-err-eprototype (logior +gpg-err-system-error+ 116))
  (:gpg-err-erange (logior +gpg-err-system-error+ 117))
  (:gpg-err-eremchg (logior +gpg-err-system-error+ 118))
  (:gpg-err-eremote (logior +gpg-err-system-error+ 119))
  (:gpg-err-eremoteio (logior +gpg-err-system-error+ 120))
  (:gpg-err-erestart (logior +gpg-err-system-error+ 121))
  (:gpg-err-erofs (logior +gpg-err-system-error+ 122))
  (:gpg-err-erpcmismatch (logior +gpg-err-system-error+ 123))
  (:gpg-err-eshutdown (logior +gpg-err-system-error+ 124))
  (:gpg-err-esocktnosupport (logior +gpg-err-system-error+ 125))
  (:gpg-err-espipe (logior +gpg-err-system-error+ 126))
  (:gpg-err-esrch (logior +gpg-err-system-error+ 127))
  (:gpg-err-esrmnt (logior +gpg-err-system-error+ 128))
  (:gpg-err-estale (logior +gpg-err-system-error+ 129))
  (:gpg-err-estrpipe (logior +gpg-err-system-error+ 130))
  (:gpg-err-etime (logior +gpg-err-system-error+ 131))
  (:gpg-err-etimedout (logior +gpg-err-system-error+ 132))
  (:gpg-err-etoomanyrefs (logior +gpg-err-system-error+ 133))
  (:gpg-err-etxtbsy (logior +gpg-err-system-error+ 134))
  (:gpg-err-euclean (logior +gpg-err-system-error+ 135))
  (:gpg-err-eunatch (logior +gpg-err-system-error+ 136))
  (:gpg-err-eusers (logior +gpg-err-system-error+ 137))
  (:gpg-err-ewouldblock (logior +gpg-err-system-error+ 138))
  (:gpg-err-exdev (logior +gpg-err-system-error+ 139))
  (:gpg-err-exfull (logior +gpg-err-system-error+ 140))
)
