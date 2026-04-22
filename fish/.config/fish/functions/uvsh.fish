function uvsh -d "Activate a uv venv"
    set -l venv_name (string replace -a / '' (count $argv > 0 && echo $argv[1] || echo '.venv'))
    set -l activator "$venv_name/bin/activate.fish"

    if not test -f $activator
        echo "[ERROR] Python venv not found: $venv_name"
        return 1
    end

    echo "[INFO] Activated Python venv: $venv_name (via $activator)"
    source $activator
end
