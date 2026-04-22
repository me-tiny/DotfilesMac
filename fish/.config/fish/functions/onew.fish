function onew -d "new note with template"
    if test (count $argv) -ne 1
        echo "usage: $(status current-command) \"file name\""
        return 1
    end
    set -l title "$argv[1]"
    set -l file_name (string replace -ar '[ \\/]' '-' $title)
    set -l id "$file_name"_$(date "+%Y-%m-%d")
    set -l formatted_file_name "$id.md"

    set -l vault_dir "/Users/metinyalcinkaya/Documents/Obsidian/Main"
    set -l template_file "$vault_dir/templates/note.md"
    set -l dest "$vault_dir/inbox/$formatted_file_name"

    set -l date_str $(date "+%Y-%m-%d")

    sed -e "s|{{title}}|$title|g" -e "s|{{date}}|$date_str|g" -e "s|{{id}}|$id|g" "$template_file" > "$dest"

    nvim $dest
end
