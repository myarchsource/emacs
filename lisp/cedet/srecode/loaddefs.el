;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "srecode/compile" "compile.el" "acfe9477fc67d2685419372e0379975f")
;;; Generated autoloads from compile.el

(autoload 'srecode-compile-templates "srecode/compile" "\
Compile a semantic recode template file into a mode-local variable." t nil)

;;;***

;;;### (autoloads nil "srecode/cpp" "cpp.el" "c4be246160d15c6e195753239ea23ccf")
;;; Generated autoloads from cpp.el

(autoload 'srecode-semantic-handle-:c "srecode/cpp" "\
Add macros into the dictionary DICT based on the current C file.
Adds the following:
FILENAME_SYMBOL - filename converted into a C compat symbol.
HEADER - Shown section if in a header file.

\(fn DICT)" nil nil)

(autoload 'srecode-semantic-handle-:cpp "srecode/cpp" "\
Add macros into the dictionary DICT based on the current c file.
Calls `srecode-semantic-handle-:c'.
Also adds the following:
 - nothing -

\(fn DICT)" nil nil)

;;;***

;;;### (autoloads nil "srecode/document" "document.el" "b9505a6389e0ac0eb6b5547aad67469a")
;;; Generated autoloads from document.el

(autoload 'srecode-document-insert-comment "srecode/document" "\
Insert some comments.
Whack any comments that may be in the way and replace them.
If the region is active, then insert group function comments.
If the cursor is in a comment, figure out what kind of comment it is
  and replace it.
If the cursor is in a function, insert a function comment.
If the cursor is on a one line prototype, then insert post-fcn comments." t nil)

(autoload 'srecode-document-insert-function-comment "srecode/document" "\
Insert or replace a function comment.
FCN-IN is the Semantic tag of the function to add a comment too.
If FCN-IN is not provided, the current tag is used instead.
It is assumed that the comment occurs just in front of FCN-IN.

\(fn &optional FCN-IN)" t nil)

(autoload 'srecode-document-insert-variable-one-line-comment "srecode/document" "\
Insert or replace a variable comment.
VAR-IN is the Semantic tag of the function to add a comment too.
If VAR-IN is not provided, the current tag is used instead.
It is assumed that the comment occurs just after VAR-IN.

\(fn &optional VAR-IN)" t nil)

(autoload 'srecode-document-insert-group-comments "srecode/document" "\
Insert group comments around the active between BEG and END.
If the region includes only parts of some tags, expand out
to the beginning and end of the tags on the region.
If there is only one tag in the region, complain.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads nil "srecode/el" "el.el" "fe573232e53c303746b59252c4f8d278")
;;; Generated autoloads from el.el

(autoload 'srecode-semantic-handle-:el "srecode/el" "\
Add macros into the dictionary DICT based on the current Emacs Lisp file.
Adds the following:
  PRENAME - The common name prefix of this file.

\(fn DICT)" nil nil)

(autoload 'srecode-semantic-handle-:el-custom "srecode/el" "\
Add macros into the dictionary DICT based on the current Emacs Lisp file.
Adds the following:
  GROUP - The `defgroup' name we guess you want for variables.
  FACEGROUP - The `defgroup' name you might want for faces.

\(fn DICT)" nil nil)

;;;***

;;;### (autoloads nil "srecode/expandproto" "expandproto.el" "4c423ff2122b7fd570323a02b62a3f86")
;;; Generated autoloads from expandproto.el

(autoload 'srecode-insert-prototype-expansion "srecode/expandproto" "\
Insert get/set methods for the current class." t nil)

;;;***

;;;### (autoloads nil "srecode/getset" "getset.el" "71f8f03a3b169611a734b6f6b30b40f4")
;;; Generated autoloads from getset.el

(autoload 'srecode-insert-getset "srecode/getset" "\
Insert get/set methods for the current class.
CLASS-IN is the semantic tag of the class to update.
FIELD-IN is the semantic tag, or string name, of the field to add.
If you do not specify CLASS-IN or FIELD-IN then a class and field
will be derived.

\(fn &optional CLASS-IN FIELD-IN)" t nil)

;;;***

;;;### (autoloads nil "srecode/insert" "insert.el" "8e63c3e8ea1ba8c7f4b7ee654b237f56")
;;; Generated autoloads from insert.el

(autoload 'srecode-insert "srecode/insert" "\
Insert the template TEMPLATE-NAME into the current buffer at point.
DICT-ENTRIES are additional dictionary values to add.

\(fn TEMPLATE-NAME &rest DICT-ENTRIES)" t nil)

;;;***

;;;### (autoloads nil "srecode/java" "java.el" "df96f0ed4ee77c125c883e8ecfc8112e")
;;; Generated autoloads from java.el

(autoload 'srecode-semantic-handle-:java "srecode/java" "\
Add macros into the dictionary DICT based on the current java file.
Adds the following:
FILENAME_AS_PACKAGE - file/dir converted into a java package name.
FILENAME_AS_CLASS - file converted to a Java class name.

\(fn DICT)" nil nil)

;;;***

;;;### (autoloads nil "srecode/map" "map.el" "2910465005070a7a87e3f7b08d63807f")
;;; Generated autoloads from map.el

(autoload 'srecode-get-maps "srecode/map" "\
Get a list of maps relevant to the current buffer.
Optional argument RESET forces a reset of the current map.

\(fn &optional RESET)" t nil)

;;;***

;;;### (autoloads nil "srecode/mode" "mode.el" "92839df0bdfeadecc49843802024ab78")
;;; Generated autoloads from mode.el

(autoload 'srecode-minor-mode "srecode/mode" "\
Toggle srecode minor mode.

If called interactively, enable Srecode minor mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\\{srecode-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-srecode-minor-mode nil "\
Non-nil if Global Srecode minor mode is enabled.
See the `global-srecode-minor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-srecode-minor-mode'.")

(custom-autoload 'global-srecode-minor-mode "srecode/mode" nil)

(autoload 'global-srecode-minor-mode "srecode/mode" "\
Toggle global use of srecode minor mode.

If called interactively, enable Global Srecode minor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called from
Lisp, also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "srecode/srt" "srt.el" "73efd15bab1769a126c57ce3354b484a")
;;; Generated autoloads from srt.el

(autoload 'srecode-semantic-handle-:srt "srecode/srt" "\
Add macros into the dictionary DICT based on the current SRT file.
Adds the following:
ESCAPE_START - This files value of escape_start
ESCAPE_END - This files value of escape_end
MODE - The mode of this buffer.  If not declared yet, guess.

\(fn DICT)" nil nil)

;;;***

;;;### (autoloads nil "srecode/template" "template.el" "aca79ccd6134a23439bfd9739031bcaa")
;;; Generated autoloads from template.el

(autoload 'srecode-template-setup-parser "srecode/template" "\
Setup buffer for parse." nil nil)

;;;***

;;;### (autoloads nil "srecode/texi" "texi.el" "d5593a42d6e9bae1fc490ba533856d82")
;;; Generated autoloads from texi.el

(autoload 'srecode-semantic-handle-:texi "srecode/texi" "\
Add macros into the dictionary DICT based on the current texinfo file.
Adds the following:
  LEVEL - chapter, section, subsection, etc
  NEXTLEVEL - One below level

\(fn DICT)" nil nil)

(autoload 'srecode-semantic-handle-:texitag "srecode/texi" "\
Add macros into the dictionary DICT based on the current :tag file.
Adds the following:
  TAGDOC - Texinfo formatted doc string for :tag.

\(fn DICT)" nil nil)

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
