#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/darth/Desktop/sc2_ros/src/map_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/darth/Desktop/sc2_ros/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/darth/Desktop/sc2_ros/install/lib/python2.7/dist-packages:/home/darth/Desktop/sc2_ros/build/map_manager/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/darth/Desktop/sc2_ros/build/map_manager" \
    "/usr/bin/python" \
    "/home/darth/Desktop/sc2_ros/src/map_manager/setup.py" \
    build --build-base "/home/darth/Desktop/sc2_ros/build/map_manager" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/darth/Desktop/sc2_ros/install" --install-scripts="/home/darth/Desktop/sc2_ros/install/bin"
