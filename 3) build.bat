@echo off
:: Cleaning old files.
rmdir beta /s /q
:: Merging two modpacks
xcopy base\*.* beta\ /e
xcopy mod\*.* beta\ /e /y
:: Removing unused files.
del beta\README.md
del beta\.gitattributes
del beta\.packwizignore
:: Pack Additions
cd beta
packwiz refresh
packwiz remove xaeros-minimap
packwiz cf install xaeros-minimap-fair-play-edition
packwiz refresh --build
@pause