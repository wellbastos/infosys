#!/bin/bash
function down_app_container() {
    echo "Deleting latest running image"
    docker-compose rm -svf
}

function build_docker_image() {
    echo "Building docker image..."
    docker-compose build 
}

function up_app_container() {
    echo "Running docker compose"
    docker-compose up --force-recreate &
}

time (down_app_container)
time (build_docker_image)
time (up_app_container)

exit 0