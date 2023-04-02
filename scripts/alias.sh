alias pandoc="docker run --rm --volume $PWD/docs:/data --user $(id -u):$(id -g) pandoc/latex"
alias composer="docker run --rm -itv $PWD/src:/app composer"
alias dc="docker-compose"
alias d="docker"