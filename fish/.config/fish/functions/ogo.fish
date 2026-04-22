function ogo -d "sort uncategorised notes into proper tags"
    set -l vault_dir "/Users/metinyalcinkaya/Documents/Obsidian/Main"
    set -l source_dir "uncategorised"
    set -l dest_dir "notes"

    find $vault_dir/$source_dir -type f -name "*.md" | while read -l file
        echo "processing $file"
        set -l tag (awk '/^tag:/{print $2; exit;}' "$file" | string trim)
        if string length -q -- $tag
            set -l target_dir "$vault_dir/$dest_dir/$tag"
            mkdir -p $target_dir
            mv $file $target_dir
            echo "moved $file to $target_dir"
        else
            echo "no tag found for $file"
        end
    end
    echo "done!"
end
