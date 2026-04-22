if status is-interactive
    set -l priv $__fish_config_dir/private

    test -d $priv/functions; and set -gp fish_function_path $priv/functions

    if test -d $priv/conf.d
        for f in $priv/conf.d/*.fish
            source $f
        end
    end
end
