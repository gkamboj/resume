# autoCV

### This repository is forked from https://github.com/jitinnair1/autoCV

A clean CV template in LaTeX along with a GitHub action that complies the `*.tex` file and publishes a new PDF version when new changes are pushed to the repo

## Template Design

The template is taken from https://www.overleaf.com/latex/templates/resume-public/hmhyxvxfspsw. It offers:
- Dedicated tex file for each section
- Multiple formatting options for most of the sections
- Header with Font Awesome icons
- Multipl font options
and much more.

This template can also be replaced with any other template of your choice.

## Quickstart
- Fork this repo (you can use the `Use this template` button)
- Modify the `resume.tex` file and push changes to your repo
- The complied PDF will be available under the `build` branch

You can get a direct link to the generated PDF which you can use on your website, LinkedIn etc. that will always point to the latest version of your CV. Once your site is published, your CV will be accessible at: `https://username.github.io/repo-name/`

For this, after editing your copy of `resume.tex` and pushing changes to your repo, under Settings -> Pages set your Github Pages source to the `build` directory

![](https://i.imgur.com/lwATw1o.png)

## This template on Overleaf

<a href="https://www.overleaf.com/latex/templates/resume-public/hmhyxvxfspsw"><img alt="Overleaf" src="https://img.shields.io/badge/Overleaf-47A141.svg?style=for-the-badge&logo=Overleaf&logoColor=white"/></a>

Also, if you have a premium subscription to Overleaf, you can use Overleaf's GitHub integration to push changes to your GitHub repo directly from Overleaf.

## Compiling the CV on your local computer
- type `make` in the root directory to produce file `cv.pdf`
- you can optionally type `make clean` or `make distclean` to remove intermediate files

## Detailed Instructions..

[.. are available here](https://github.com/jitinnair1/autoCV/wiki/How-to-use-autoCV:-Detailed-Instructions)

## More options
- If you'd like a custom URL like `cv.name.com` check out [this page](https://github.com/jitinnair1/autoCV/wiki/Custom-URL-for-your-CV)
- If you want to add use different versions of the CV for different langauges, you can modify the script [as seen here](https://github.com/MateusRosario/myAutoCV/blob/main/.github/workflows/build.yml) (from Mateus Rosario's [fork](https://github.com/MateusRosario/myAutoCV) of this repo)  


PS: If you liked the template, do star :star: the [original repository](https://github.com/jitinnair1/autoCV) ! Thanks!
