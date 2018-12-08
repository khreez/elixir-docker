# Elixir 1.7.4 Docker image

Try and experiment with [Elixir](https://elixir-lang.org/) in a convenient way without polluting the host environment

## Build the image

```sh
$ cd elixir-docker
$ docker build -t elixir-docker .
```

## Usage

Mount local source directory into container

```sh
$ docker run --rm -it -v $(pwd):/source elixir-docker
```

Run code inside container

```sh
$ elixir foo.exs
```

Run Elixir’s interactive shell (IEx)

```sh
$ iex
```

Execute a script after container starts and quit

```sh
$ docker run --rm -it -v $(pwd):/source elixir-docker elixir foo.exs
```

### Keep container running in the background

```sh
$ docker run -d --rm -it -v $(pwd):/source --name <some name> elixir-docker
```

Access via shell when container is running in the background

```sh
$ docker exec -it <some name> sh
```

Stop container execution

```sh
$ docker stop <some name>
```


#### Inspired from https://github.com/schickling/dockerfiles
