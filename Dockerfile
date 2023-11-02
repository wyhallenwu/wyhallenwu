FROM ros:iron
RUN apt-get update -y && apt-get install -y ~nros-iron-rqt* && apt-get install -y python-pip3

VOLUME ["/project"]

# how to build and run
# docker build -t ros2iron:v1 .
# docker run -it --gpus all -e NVIDIA_DRIVER_CAPABILITIES=all --privileged -v /dev:/dev ros2iron:v1
