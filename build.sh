#!/bin/sh

user=${DOCKERUSER:-binaryanalysisplatform}
repo=$user/bap-artifacts
build_dir="build"

function name_of_path() {
    tag=""
    IFS='/' read -ra array <<< $base
    for a in "${array[@]}"; do
        if [ "$tag" == "" ]; then
            tag="$a"
        else
            tag="$tag-$a"
        fi
    done
    echo "$repo:$tag"
}

function create_image() {
    base=`dirname $f`
    image_name=$(name_of_path $base)
    docker image build $base -t $image_name
}

function create_main_images() {
    for f in `find $build_dir -name Dockerfile`; do
        create_image $f
    done
}

function create_rest_images() {
    for f in `ls -l`; do
        if [ -d $f ] && [ $f != "$build_dir" ]; then
            for f in `find $f -name Dockerfile`; do
                create_image $f
            done
        fi
    done
}

function create_all() {
    create_main_images
    create_rest_images
}

function push_all () {
    for tag in `docker images $repo --format "{{.Tag}}" | grep -v $build_dir`; do
        docker image push "$repo:$tag"
    done
}

if [ "$1" == "" ]; then
    create_all
elif [ "$1" == "push" ]; then
    push_all
else
    echo "don't know what to do with $1"
    exit 1
fi
