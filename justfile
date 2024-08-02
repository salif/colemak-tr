#!/usr/bin/just -f

mod? bg '../colemak-bg/justfile'

_:
	@just --list

config_yml:
	../colemak-bg/justfile \
		key_readme="This is my attempt to make a keyboard layout based on Colemak, adapted for the Turkish language" \
		key_image="./media/preview.png" key_linux="Follow these instructions" config_yml
