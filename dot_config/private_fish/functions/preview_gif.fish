function preview_gif
    set file $argv[1]
    if file --mime-type $file | grep -qF image/
        set dimensions $FZF_PREVIEW_COLUMNS"x"$FZF_PREVIEW_LINES"@0x0"
        kitty icat --clear --transfer-mode=stream --stdin=no --place=$dimensions $file
    else
        bat --color=always $file
    end
end