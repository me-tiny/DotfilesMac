function lc -d "quick compile and run last-edited solution"
    set -l file (fd --glob "sol.cpp" problems -x stat -c "%Y.%09X %n" | sort -rn | head -1 | cut -d' ' -f2)
    if not test -f "$file"
        echo "no solution file found"
        return 1
    end
    echo "── Running: $file ──"
    make run F=$file
end
