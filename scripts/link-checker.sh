exit_code=0

# Find all markdown files
markdown_files=$(find ../ -name \*.md)

for markdown_file in $markdown_files; do
    # For each markdown file, check the links. link-checker-config.json excludes certain links (like example.com)
    # If broken links are found, output them along with the file path.
    if markdown-link-check -q -c link-checker-config.json $markdown_file > links.log; then
        # Do nothing if the file doesn't have any broken links.
        :
    else
        # If broken links are found, output them along with the file path.
        cat links.log
        exit_code=1
    fi
    rm links.log
done

exit $exit_code
