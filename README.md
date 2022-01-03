# Instalação do Moodle do IFRN

Exemplo de instalação do Moodle do IFRN usando a [imagem Docker 'moodle__image'](https://github.com/cte-zl-ifrn/moodle__image) criada e disponbilizada pela CTE do IFRN.

## How to buid at local host?

```bash
./build.sh 3.11.4_001
```

## How to buid and release to Docker Hub using GitHub Action?

Open `Dockerfile` and upgrade FROM version, create a new tag with Moodle version name.

## How to use?

### Using docker image

Run new image

```bash
docker run -p 8080:80 ctezlifrn/moodle:3.11.4_001
```


### Using Dockerfile

Create a `Dockerfile`

```Dockerfile
FROM ctezlifrn/moodle:3.11.4_001
```

Build the `Dockerfile`

```bash
docker build . -t my/moodle:3.11.4_001
```

Run new image

```bash
docker run -p 8080:80 my/moodle:3.11.4_001
```


