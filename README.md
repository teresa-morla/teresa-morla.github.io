
# My Profile Academia

This project is a fork of [academicpages](https://github.com/academicpages/academicpages.github.io) and [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes), designed for creating and showcasing an academic profile. It includes sections for storing and displaying data such as your curriculum, conferences, papers, books, and scientific reports.

## Features

- Clean and minimalistic design
- Easy customization for your academic profile
- Sections for curriculum, conferences, papers, books, and more
- Dockerfile and Docker Compose for easy setup and running with Docker
- Makefile for simplified commands: `make`, `make build`, `make run`

## Requirements

- Docker
- Git

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/teresa-morla/teresa-morla.github.io.git
    ```

2. Change to the repository directory:

    ```bash
    cd teresa-morla.github.io
    ```

3. Build the Docker image:

    ```bash
    make build
    ```

4. Run the Docker container:

    ```bash
    make run
    ```

5. Open your browser and go to `http://localhost:4000` to see your academic profile.

## Customization

You can customize your academic profile by editing the `_config.yml` file.

### Publicactions

You can add your publications by creating a new Markdown file in the `_publications` directory. The file should be named `YYYY-MM-DD-title.md` and contain the following [front matter](https://jekyllrb.com/docs/front-matter/):

- title: The title of the publication
- collection: publications
- permalink: The friendly URL of the publication
- date: in the format YYYY-MM-DD
- excerpt: A short description of the publication
- venue: The publication venue
- pages: The publication pages
- citation: The citation of the publication with authors, year, title.
- paperurl: The URL to the publication
- category: The category of the publication that must be "paper", "book", or "report".

Below the front matter, you can add the abstract of the publication.

From the metadata configured in the front matter, the recommended citation format will be generated in APA style, so it is important to fill the fields: citation, venue, pages, and paperurl properly.

Example of a `/_publications/page.md` file:

```markdown
---
title: 'Conflicte Educatiu a les Balears'
collection: publications
permalink: /publication/2014-05-17-conflicte-educatiu-a-les-balears
date: 2014-05-17
excerpt: "Conflicte Educatiu a les Balears: Cronologia de la movilització de l'educació a les Illes Balears."
venue: 'Anuari del conflicte social 2013'
pages: '836-845'
citation: 'Morlà, T. (2014). Conflicte Educatiu a les Balears: Cronologia.'
paperurl: 'https://revistes.ub.edu/index.php/ACS/article/view/10362'
category: 'paper'
---

Abstract
```

### Conferences

Similar to publications, you can add your conferences by creating a new Markdown file in the `_conferences` directory. The file should be named `YYYY-MM-DD-title.md` and contain the following front matter:

- title: The title of the conference
- collection: Conferences
- type: The type of the conference that must be "national" or "international".
- permalink: The friendly URL of the conference under the `/conferences` directory
- venue: The conference venue
- date: in the format YYYY-MM-DD
- location: The conference location, city and country between parentheses
- citation: The full recommended citation.

Example

```markdown
---
title: "La importancia de la familia y de las interacciones sociales en la trata de seres humanos con fines de explotación sexual"
collection: Conferences
type: "national"
permalink: /conferences/2019-07-06-la-importancia-de-la-familia-y-de-las-interacciones-sociales-en-la-trata-de-seres-humanos-con-fines-de-explotacion-sexual
venue: "FES 2019"
date: 2019-07-06
location: "Valencia, Spain"
citation: "Merodio, G., & Morlà, T. (2019). FES 2019. La importancia de la familia y de las interacciones sociales en la trata de seres humanos con fines de explotación sexual (3-6 juliol, Valencia)"
---

```

### Teaching

To be completed