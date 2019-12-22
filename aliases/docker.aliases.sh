alias swagger_editor='docker run -dit --rm -p 80:8080 swaggerapi/swagger-editor'
alias docker_stop_all='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
alias ubuntu='docker run -e http_proxy=${HTTP_PROXY} -it ubuntu:18.04'