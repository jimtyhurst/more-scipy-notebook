
# Creates and runs a container named 'more-scipy' from the image
# named 'more-scipy-notebook'.
# The container is removed when it is stopped.
# Mounts the current working directory to the 'work' directory
# in the container, so that Jupyter can access notebooks on the
# local machine where this script is executed.
docker run -it --rm --name more-scipy -p 8888:8888 -v "$PWD":/home/jovyan/work more-scipy-notebook
