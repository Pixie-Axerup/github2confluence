# github2confluence

##About
This is a GitHub Action for Creating and Updating Confluence pages from GitHub markdown pages. It uses [md2cf](https://pypi.org/project/md2cf/).

Currently it uses the following parameters:
```
--host
--token
--parent_id
--space
--preface-markdown "Content on this page is auto-generated from Github repository; do not edit here."
--strip-top-header
and folder or file
```
- The action takes the top header as the name of the Confluence page.

To use this Action, create a GitHub Action workflow file looking like this, and place it in folder .github/workflows:

```
name: GitHub 2 Confluence

on:
  push:
    paths:
      - "confluence/**"    #If you want Action to run when a specific folder is updated
    branches:
      - main
  workflow_dispatch:       #This is so you can run Action manually for testing

env:
  CONFLUENCE_TOKEN: ${{ secrets.ATLASSIAN_CLOUD_TOKEN }}     #Either have your Confluence token in Github Secret, or some other Secret manager.

jobs:
  setup-build-publish:
    name: Translate and publish
    runs-on: ubuntu-latest

    steps:
      # Checkout sources
      - uses: actions/checkout@v3

      - name: Run action gh2cf
        uses: Pixie-Axerup/github2confluence@v0.1
        with:
          github_f: " "         #Github folder or file to sync. Files must be markdown.
          space: " "            #Confluence Space (https://your-confluence/display/SPACE/page-name).
          parent_id: " "        #Not mandatory, but if you have pages and sub-pages in Confluence, you can specify what page it should be under.
          confluence_host: " "  #Confluence API address.
          confluence_token: ${{ env.CONFLUENCE_TOKEN }}  #Your Confluence Token. 

```

## Some constraints on the markdown

### Images
For images use 
```
![alt text](images/image.png)
```
And resize your images before uploading them to GitHub.


## Contributing
Please read [CONTRIBUTING](./CONTRIBUTING.md) for more details about making a contribution to this project.
