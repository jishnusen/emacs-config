;;; catpuccin-mocha-theme.el -*- lexical-binding: t; no-byte-compile: t; -*-

(require 'doom-themes)
(require 'doom-one-theme)


;;
;;; Variables

;;
;;; Theme definition

(def-doom-theme catppuccin-mocha
  "A dark theme inspired by Atom One Dark."

  ;; name        default   256           16
  ((cat-rosewater '("#f5e0dc" nil nil))
   (cat-flamingo '("#f2cdcd" nil nil))
   (cat-pink '("#f5c2e7" nil nil))
   (cat-mauve '("#cba6f7" nil nil))
   (cat-red '("#f38ba8" nil nil))
   (cat-maroon '("#eba0ac" nil nil))
   (cat-peach '("#fab387" nil nil))
   (cat-yellow '("#f9e2af" nil nil))
   (cat-green '("#a6e3a1" nil nil))
   (cat-teal '("#94e2d5" nil nil))
   (cat-sky '("#89dceb" nil nil))
   (cat-sapphire '("#74c7ec" nil nil))
   (cat-blue '("#89b4fa" nil nil))
   (cat-lavender '("#b4befe" nil nil))
   (cat-text '("#cdd6f4" nil nil))
   (cat-subtext1 '("#bac2de" nil nil))
   (cat-subtext0 '("#a6adc8" nil nil))
   (cat-overlay2 '("#9399b2" nil nil))
   (cat-overlay1 '("#7f849c" nil nil))
   (cat-overlay0 '("#6c7086" nil nil))
   (cat-surface2 '("#585b70" nil nil))
   (cat-surface1 '("#45475a" nil nil))
   (cat-surface0 '("#313244" nil nil))
   (cat-base '("#1e1e2e" nil nil))
   (cat-mantle '("#181825" nil nil))
   (cat-crust '("#11111b" nil nil))

   (bg         '("#1e1e2e" "black"       "black"  ))
   (fg         '("#cdd6f4" "#bfbfbf"     "brightwhite"  ))

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#181925" "black"       "black"        ))
   (fg-alt     '("#bac2de" "#2d2d2d"     "white"        ))

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      cat-crust)
   (base1      '("#1e2030" "#1e1e1e"     "brightblack"  ))
   (base2      '("#1e2030" "#2e2e2e"     "brightblack"  ))
   (base3      '("#232634" "#262626"     "brightblack"  ))
   (base4      cat-surface2)
   (base5      cat-overlay0)
   (base6      cat-overlay1)
   (base7      cat-overlay2)
   (base8      cat-subtext0)

   (grey       base4)
   (red        cat-red)
   (orange     cat-peach)
   (green      cat-green)
   (teal       cat-teal)
   (yellow     cat-yellow)
   (blue       cat-blue)
   (dark-blue  cat-lavender)
   (magenta    cat-mauve)
   (violet     cat-mauve)
   (cyan       cat-sky)
   (dark-cyan  cat-sapphire)

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      cat-blue)
   (vertical-bar   cat-mantle)
   (selection      cat-dark-blue)
   (builtin        cat-yellow)
   (comments       cat-overlay0)
   (doc-comments   cat-overlay1)
   (constants      cat-peach)
   (functions      cat-blue)
   (keywords       cat-mauve)
   (methods        cat-blue)
   (operators      cat-sky)
   (type           cat-yellow)
   (strings        cat-green)
   (variables      cat-text)
   (numbers        cat-peach)
   (region         cat-surface1)
   (error          cat-red)
   (warning        cat-yellow)
   (success        cat-green)
   (vc-modified    cat-orange)
   (vc-added       cat-green)
   (vc-deleted     cat-red)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              cat-text)
   (modeline-fg-alt          cat-surface1)
   (modeline-bg              cat-mantle)
   (modeline-bg-alt          cat-mantle)
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr cat-base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-one-padded-modeline
      (if (integerp doom-one-padded-modeline) doom-one-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override)
    :background 'unspecified)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-one-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)
   ;;;; doom-modeline
   (doom-modeline-bar :background highlight)
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")
   ;;;; ivy
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground green)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-lighten base1 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground orange)
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt))))

  ;;;; Base theme variable overrides-
  ())

;;; catppuccin-mocha-theme.el ends here
