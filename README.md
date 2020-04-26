# github_actions_samples
Samples for using Github actions and workflow

---

## Repo Structure
Active workflow files located in: [.github/workflows](.github/workflows)

Templates and samples yml located in repo root

[/files](./files) contains test file structure to be compressed & zipped

---

## Zip & publish
### Objective
When files are updated in a particular repo folder, automatically zip the folder and publish as a resource, downloadable via http.


**use case:**
Azure Image Builder to download an (automatically maintained) package of scripts during customisation phase.  

### Planned Features:
 - [ ] When /files folder updated create artifact files.zip
 - [ ] Test zip file extraction works, using dependancy on build job
 - [ ] Upload zip file to releases as new version
 - [ ] Download zip file from Releases url with latest
 - [ ] Add badge to RADME.md for workflow status

