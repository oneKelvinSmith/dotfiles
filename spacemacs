;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     dash
     development
     elixir
     emacs-lisp
     erlang
     git
     html
     javascript
     markdown
     osx
     react
     ruby
     ruby-on-rails
     shell-scripts
     sql
     syntax-checking
     version-control
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '( ;; monokai
                         solarized-light
                         solarized-dark
                         spacemacs-light
                         spacemacs-dark
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("DejaVu Sans Mono for Powerline"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; Default value is `cache'.
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  )

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (global-linum-mode)
  (setq-default css-indent-offset 2
                js-indent-level 2
                js2-basic-offset 2
                js2-indent-switch-body t
                web-mode-attr-indent-offset 2
                web-mode-code-indent-offset 2
                web-mode-css-indent-offset 2
                web-mode-enable-auto-indentation t
                web-mode-indent-style 2
                web-mode-markup-indent-offset 2
                web-mode-scss-indent-offset 2)
  (setq-default neo-theme 'ascii)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(custom-safe-themes
   (quote
    ("be4d154c7d5e559f6cd3591b9d7f927f41d988270110d439bd0d8cb8c29595fb" "dc8d47c55082181915356dce49f59572ee44a862f3ea93a7e487486fcd4487ca" "194353a809dec3bba224aa7980041687e4091a58cb6f99106a13f3ed6ef78804" "8b0f4b7c82a34ce3e57295d013b40490958c42a80f9d53653ed6f0feb2218697" "dc4eb73e31a5b2f0a637ffc11048ffe4dec79a31cdd8e00e6a9f0b3ec784cfec" "c321a90c760489fd762abf8262ec4ae0cc341b5f4246d7c8dea75616c3f22506" "8edeaac98c2c2d3392d19bb21fb4d70740b532398c3352d3dcc120b49d503a2b" "3f4b75046b5df3cba67d7837bde34291c3c9a2ad4253a712840423fc9ab60ffe" "434caaaf4d9fbb019621a9d01e160a5fae6db3a8ea71f1b38b19b827ff753fd7" "5b85f7a0c1160a64b824d2357b5fd0c8c201c7180356fc31ae1e92021d94535b" "cb26297b1627b14246646aa1a5e4edd08e9484affb667364fee046c5fd9d35be" "e31e628d0eddc9151e815ccd3841ee51929b1728f6f215d469e2e53dde7d6da5" "78886e8a32de970ebdf4b7c46595d4bb0cc1a2ffa706d7f07847be4a74388a8a" "abf8a050dc4e942c3f64a944016bad2a6966fdae3e62a6f7d61aa01eef6630ff" "754631310251400bccfdeefcea9107d0174a9a2c48fb46abe115b4fbc98cea79" "698f2e4aa820e849729006e114ef2908334e37bd6553c85b4995728a650ec927" "4e32fd9d26ebe044fd038a21d6cfee3ebbb89815975d3aec2e2ada1607a48f76" "62e2fc3f0a948d24d3e35c5de18873062971c5ee752d44a1ff162e46b8a78ce2" "dad034198ca6a4b05ff1caca01a7195ad2698f4ff3f9a8bb5584fa5b50456b46" "8f11d6c614014bc97e835b6f507cdfb1a705bbabc4776fc69bc06af0489ff506" "3f2d0f3477b5c5aede6381c85d5e5f423b207e0bc5fe5d8e87bc44832ee91c25" "ae7b469b9fed59e719ddc4f98a64c356e380cbd99e6142eddfb445ef57899e3e" "8e0a698eb3291cc941c8de1f72f0f72c6252599823ff6674c78f648875a585e4" "3228dcedfd869ec4a11ae01f12d307df5817182777710ccac73528c5d99113ca" "c02d1c750fa1400afe30d87713417a083c8f738d815fae638bbcb5cd9547793a" "2db54b2ce81f4e37d69d2dd78711883a43c65f19017227cf0d5b7f3e494579a8" "5ba228856aa4f305bceffc6f59931e7850fd222ecbfef009f19361483752cd5b" "508dc39720b815a20b0d07ae9abbd22ff1a2c6b82ce4c3916c99e9b3bc125e91" "7e77fd52066dd208428b42a76e25ee1b6e6acc4ba6dc736702ac5ca8e591639c" "b7a9d11b725eb6ca7e684bd125df1208f803bbbfd22dec316f15d0f6b81a5cea" "5cbf2598dd6bb394e4c6641f2415c7a8d27d6903e1e7871c857f9b3e4fe542f0" "f1a3dcc4df828cd18018bd3568b48b646a2483123448cb8f781dd833c5ac20af" "77317e03c507e8f53039002f3b08a0701c426c97e95a113668f603ea3d86f712" "531c2f6ae8d488f76446ff69dc26d0fc2cc458115708030152628d8dd95f665c" "d3ffa9a1bf6b456cadc0a6bcaaff6f2ddf4027aed4d03148cdbce45b4054e227" "56751c07151afeaaa563f463441484d4289a078728e125d3760578b3d19e650f" "2d83a62fa13ee60abbeaf042caff0591498a37f112eff1c734649c3ffaf42a5a" "400208741d54176800dbb65419039e4a19a71638de47634f1bfda45d28ad2579" "9f13cb55d7747213ad7511fbe28af278b37de485d517f5c8251d930d1f2b5bc9" "55aacab90bc59774f1e327382aff78ee1a0b788b7c492bf3114f028ea9f90a4f" "22e4242f7db84f8478f244cad98f1dd3946e4941048f09ad75978fe2249da318" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "8780cdb8f35a879f6baaff24b1ccc90082e272df6a037861f951777d5849ab28" "159ebd3387259949ba2a2ec99c36da73b64c2b8d936c5ef311ec76ee14ee3596" "b536d54f8a18ca4e0393443a370fcb1410399ac4fa13e02ddbd0b6c1417ed123" "c97630b355568bfab496d0b6cf8434b304b720a94a3e0719c4c77a1d16f70615" "02fffe53ea30d00d88f72340ddbdf5fa66c42bc3952ef9f99d7ab12535c6d0e5" "950a765c7883f9b4257bababc488a9aa1426046f2ac4da712a3193513faf932a" "b03837c08f2f6f39dc32481451f79fd1d1f5e45b678cea8f78cd9a2bf08e2c3b" "3c427ec8e43de07bb4382cd348c141b824d655ea3a98ff039f292bb9183983db" "fcebd9a97017d79d474b0796c2cf6c27177aa61387ec4e1acaf06b15b6eb2c36" "6232fb8c3e7f1b2ddc0616a23b37afeecd9fce30a46e62593a6d394d7b86ddf2" "579b1080933ec70e71f61ce6a7b3618541ed9c606e6b3bf255026853218a5489" "e053027ae6d9077bf44da3e7787af8fbe0cbc9d13e88acfde86227324933e1ee" "46b0151e57c65aa5378dc8c154dcb9a8c43e5be61527f121506b7ab2b7733d45" "8278b647836c08f1bec998661e9a89d5fc3624d52903ab52d986cc7d2b4f297a" "47caf183d377df116958690ff0e6431d8c2264848321e0bf851211476dba2719" "76abb5264351b9713861d12c1799fc0516f0d87c27082f0e9f59519f516f5af4" "722c71fef949a15a95178cf5599775e3e05ec8edd008551f4dadc07aed6c786f" "4c827922f565681ba9cb20fcfca486db233628954e09408d80d19cc4bdf244c8" "24f55558f31ae9a1f20b951bdac70d9519ed846468e777d2e7d23396f610a441" "6c3424a42274647588bc21206c7e48d7f33e563e2b8040c3b5c2c686cd020fa9" "35af06bf01d089317fc93999cc84e6fbd0a68c36f2292092013eb5516f1ddd2d" "f1564570ea5c68e433954d6f4b936608a34c5a6bb930edf0f8016b9fb6633515" "a02618cc1c870c717267c27f65e722a176330892c3389acfe0ddaf4d2ffb9133" "59430d64694a12a28310873151698b61ba27f807f6ab7530e647188cd61ee51e" "f1ca3877ae2f09ddbf14fb426e2c7737b56062a0100196a621b70d12fdcfe887" "586c3c075922c8a5beae2b4fb6c2978372ad6ad8d9980aa0a9986e76e3604b74" "7288b0020736838e6bedf188538207969ee6cd56bf67ef8ef005b5dfb0ca70a4" "5dfa4ae65cf8298e89b0864f195376aed27f6143fb25823424a0b28b16e4a180" "14bb7b7d3b491fd47604b6b83b7aae6d543928db5295afb05b79e5ebe815b5eb" "2dd74dca30874d0c835a0bd84c8def0e06ded1896500c38ee5c11a19562b8b7b" "c3fc5672e82e1005d8f701539647a79332bddd7ca13736cf382650f59dcd15f7" "82e1ed552aab47a53d96386c68f919b98c3c9ca602d9615f5e63815de62e547b" "8f9d4a41c5d48d8ea6e9f3fd768c7d82871bf7def0378931fcd2d70b2fb36b7e" "eb64cd84e250d27c59a77b4974087ccb06f6fcc68ae035d193f166a134b5aa39" "81e5c5bcf85e09df5d5c8a708c5b7d7cff6cdfe4f637fcd985dbf85579ab8f88" "26593a7eb734ff905f79c36d6fd516b397944d4fde25fae12061c0db85475577" "7f45303a5cd090d2079c541c6f53ef08ec9cbebdafbcd433051cd14535adc864" "9472d8425c6680fb81c0710440fc290d3299fe9e572bfc97f2eb69003692c6eb" "13342368a5147b7e5b8607b4ab3c082c071b0806956a7abdd00673c687a155d9" "8bdb50f871cf2e84ee67dd77bbabbdfc0aa1359ea8e2e244b4a13480bfc2ccd0" "7a056643f9250bf65ee16ee98e0e872d17425ede77d8c28b62d98debde03e962" "4cb926039fe8f3407788a42946250848f0712417eefc66ee2acb69950ae4e6a2" "cdf50b309884345960f7704a288af6430c3cf7b58565d5c6095dde1c666bc238" "33d5f0b942e55ec0b674fdaa710d1b02ec92202ab0a973af7028465ea0e39e9e" "e2f88d6d8b84186215ddc3e986a8f3a8854181332aa5c1c69df91221e9aae6a9" "249afe357d5c1034112759025800511610d33c90d8fed9eb6caaedc246b68dfb" "535354556e45bee1397a2f04a6329d1ea87b57010b8c456d7f1c6fa379b8bfae" "8b7aadd0ee47df765547419b974f7b1e4c7910655454bdb276fb21e4da659aab" "c5e84d49ceda2a051eef81d2e049330e597fd8ebb91843582d4610138155fcef" "045a34cab89fa9f482ecf9b5c75ee84f6c4f175f6646b6a238bf8e413fe90d1f" default)))
 '(dynamic-completion-mode t)
 '(paradox-github-token t)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 257)) (:foreground "#F8F8F2" :background "#272822" :family "DejaVu Sans Mono for Powerline" :foundry "nil" :slant normal :weight normal :height 120 :width normal)) (((class color) (min-colors 89)) (:foreground "#F5F5F5" :background "#1B1E1C" :family "DejaVu Sans Mono for Powerline" :foundry "nil" :slant normal :weight normal :height 120 :width normal))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
