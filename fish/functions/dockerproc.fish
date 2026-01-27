function dockerproc --wraps='docker compose -f ../devops/docker-compose.yml' --description 'alias dockerproc docker compose -f ../devops/docker-compose.yml'
    docker compose -f ../devops/docker-compose.yml $argv
end
