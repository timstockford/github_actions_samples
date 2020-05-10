# github_actions_templates
Samples/templates for using Github actions and workflow

![Create zip release](https://github.com/timstockford/github_actions_templates/workflows/Create%20zip%20release/badge.svg)

---

## Repo Structure
Active workflow files located in: [.github/workflows](.github/workflows)

Templates and samples yml located in repo root

[/files](./files) contains test file structure to be compressed & zipped

## Multi-job Sample
[sample_multijob.yml](./sample_multijob.yml) - Sample git actions template with multiple jobs and steps.

---

## Zip & publish
![Create zip release](https://github.com/timstockford/github_actions_templates/workflows/Create%20zip%20release/badge.svg)


[CreateZipRelease.yml](.github/workflows/CreateZipRelease.yml) - Complete CI workflow to publish new ZIP file when a modification is made to ./files.

Latest generated .zip file is available from: [https://github.com/timstockford/github_actions_templates/releases/latest/download/myfiles.zip](https://github.com/timstockford/github_actions_templates/releases/latest/download/myfiles.zip)

### Objective
When files are updated in a particular repo folder, automatically zip the folder and publish as a resource, downloadable via http.


**use case:**
Azure Image Builder to download an (automatically maintained) package of scripts during customisation phase.

*note: in reality will use a Azure DevOps pipeline step to deliver the script artifacts from the repo.*


### Planned Features:
 - [X] When /files folder updated create artifact files.zip - [create_zip_artifact.yml](./create_zip_artifact.yml)
 - [X] Use Windows Container to create zip
 - [X] Test zip file extraction works, using dependancy on build job
 - [X] Create new **draft** release and upload zipfile as Asset
 - [X] Download Asset zip file from Release & test extraction
 - [X] Modify Release to make public
 - [X] Add badge to README.md for workflow status

