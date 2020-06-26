# Scripts

## Link Checker

Files:

- [link-checker.sh](./link-checker.sh): Main script to check each markdown file for broken external links and relative links. Uses [markdown-link-check](https://www.npmjs.com/package/markdown-link-check).
- [link-checker-config.json](./link-checker-config.json): Configuration file for [markdown-link-check](https://www.npmjs.com/package/markdown-link-check). Used to exclude certain links so that they are not checked. This could be done for example links or links to websites that are sometimes down or timeout.