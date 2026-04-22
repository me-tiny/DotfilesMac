function lcs -d "list all leetcode problems"
    ls -d problems/*/ 2>/dev/null | string replace "problems/" "" | string replace "/" "" | column
end
