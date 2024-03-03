
# My Profile Academia

This is a fork of [Academic Pages](https://github.com/academicpages/academicpages.github.io) to build my personal academic profile.

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

You can customize your academic profile by editing the files in the `_data` and `_pages` directories. You can also change the theme by editing the `_config.yml` file.
