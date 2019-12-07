;;; p-test.el --- Test definitions for p  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>
;; License: AGPL-3.0
;; Homepage: https://github.com/conao3/p.el

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU Affero General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; See the GNU Affero General Public License for more details.

;; You should have received a copy of the GNU Affero General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Test definitions for `p'.


;;; Code:

(require 'buttercup)
(require 'p)

(defconst p-test-dir (file-name-directory
                            (cond
                             (load-in-progress load-file-name)
                             ((and (boundp 'byte-compile-current-file)
                                   byte-compile-current-file)
                              byte-compile-current-file)
                             (:else (buffer-file-name)))))

(describe "A suite"
  (it "contains a spec with an expectation"
    (expect t :to-be t)))

;; (provide 'p-test)

;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; p-test.el ends here
