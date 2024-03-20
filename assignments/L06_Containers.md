## Prerequisite

Ensure that you are up to date with the upstream Github repo. Do the following before starting your assignment.

```
cd <to your github repo path>
git checkout main
git fetch upstream
git rebase upstream/main
git checkout -b [new branch] upstream/main
```

## Install podman dekstop on your laptop

Head to https://podman-desktop.io/ to download and install podman desktop. Follow the documentation at https://podman-desktop.io/docs/intro to get started.

Once podman machine has been started, you can use the GUI or follow the commands below to do it in your terminal as well.

## Write a Script or Program

Write a script or a program that gives you an output - it can be anything! You can write it in python, bash, C, Go etc.
We just want something that gives us an output that runs, but feel free to go all out and create something amazing!

## Create a Containerfile

Head to the directory **assignments/containerfiles** and create a directory there with your name in the format **FIRST-LAST**.
The directory should be **assignments/containerfiles/[FIRSTNAME-LASTNAME]** so you can add your Containerfile and script there.


Create a Containerfile to package the script you just wrote. Set the **CMD** of your container image to call your executable file.

```
...
CMD ./path/to/your/executable
...
```

This is what an example Containerfile looks like
```
FROM alpine
WORKDIR mydir
ADD joke.sh /mydir
RUN chmod +x /mydir/joke.sh
RUN apk add curl
CMD ./joke.sh
```
Head to https://docs.docker.com/get-started/02_our_app/ for a quick tutorial on Containerfiles/Dockerfiles. Google is your friend, use it!

Look at https://github.com/DS219/spark-seprep/tree/main/assignments/containerfiles/urvashi-mohnani as an example!

## Build and tag your container image

```
$ cd assignments/containerfiles/[FIRSTNAME-LASTNAME]
$ podman build -t [image-name] -f [path/to/containerfile] .
```

## Create a free account on Docker hub if you don't already have one

Head to Docker hub (https://hub.docker.com/) and create a free account there. Make sure to remember your username and password!

## Push the built container image to your docker hub account

Login to the docker hub account you created above with podman and enter the username and password when prompted.
```
$ podman login docker.io
```

Now you can push the image you built to your docker hub account.
```
$ podman push [image-name] docker.io/[username]/[image-name]
```

Add a link to your container image to this doc https://forms.gle/uY2vXxaLbhox4WF17

Make sure to run your container image with podman to ensure it runs successfully!
```
podman run [image-name]
```

## Run a classmate's container image locally

Look through the doc above and pick a container image that one of your classmate's built. Pull it down and run it locally on your machine.

```
$ podman pull [classmate-image]
$ podman run [classmate-image]
```

Create your PR on Github and answer the questions in this form https://forms.gle/uY2vXxaLbhox4WF17 and hit submit!
