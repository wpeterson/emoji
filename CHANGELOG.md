# Releases / Changes

## 1.0.7

* Adds `Emoji.replace_named_moji_with_unicode()` for Markdown
* Use configured Rails asset `path_prefix` for `Emoji.asset_path` prefix


## 1.0.6

* Adds `Emoji.replace_unicode_moji_with_name()` for Markdown

## 1.0.5

* Adds support for dynamic Emoji.asset_host as a proc (ala Rails.asset_host)

## 1.0.4

* Moved Homepage/repo to wpeterson/emoji

## 1.0.3

* Allow empty Emoji.asset_host and more asset_host formatting support

## 1.0.2

* Improved Emoji.asset_host configuration/handling
* Emoji::Index cleanup and find_by_unicode
* Plaintext alt tags (optional)

## 1.0.1

* Important html_safe security fix.

## 1.0.0

* Initial gem release