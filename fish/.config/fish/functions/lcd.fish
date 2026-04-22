function lcd -d "quick compile and run with sanitisers"
    set -l file (fd --glob "sol.cpp" problems -x stat -c "%Y.%09X %n" | sort -rn | head -1 | cut -d' ' -f2)
    echo $file
    if not test -f "$file"
        echo "no solution file found"
        return 1
    end
    echo "── Running w/ sanitisers: $file ──"
    make run F=$file D=1
end
