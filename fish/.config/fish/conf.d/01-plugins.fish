set -l plugins_dir $__fish_config_dir/plugins

test -d $plugins_dir; or exit 0

for plugin in $plugins_dir/*/
    test -d $plugin/functions; and set -gp fish_function_path $plugin/functions
    test -d $plugin/completions; and set -gp fish_complete_path $plugin/completions
    if test -d $plugin/conf.d
        for f in $plugin/conf.d/*.fish
            source $f
        end
    end
end
