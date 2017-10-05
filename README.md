# blue-land-app

An application written with Go.

Notes:

Using [Dep](https://github.com/golang/dep) for dependency management.

Commands:

* `dep init` to start the project.
* `dep ensure` picks up new dependencies and places them in the *vendor* directory.

Getting the docker image build and running.

`docker build -t blue-land-app .`

Then run the container.

`docker run --publish 8080:8080 --name test --rm blue-land-app`
