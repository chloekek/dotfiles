{ pkgs, ... }:

{
    i18n.inputMethod.enabled = "fcitx";
    i18n.inputMethod.fcitx.engines = [
        pkgs.fcitx-engines.libpinyin  # Chinese
        pkgs.fcitx-engines.mozc       # Japanese
    ];
}
