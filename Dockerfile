# elixir v1.7.4 & erlang:21
FROM elixir:1.7.4

# define source code location
RUN mkdir /source

# define mountpoint for workdir
VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
