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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bojan/uuv_simulator_ws/src/geographic_info/geodesy"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/bojan/uuv_simulator_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bojan/uuv_simulator_ws/install/lib/python2.7/dist-packages:/home/bojan/uuv_simulator_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bojan/uuv_simulator_ws/build" \
    "/usr/bin/python2" \
    "/home/bojan/uuv_simulator_ws/src/geographic_info/geodesy/setup.py" \
    egg_info --egg-base /home/bojan/uuv_simulator_ws/build/geographic_info/geodesy \
    build --build-base "/home/bojan/uuv_simulator_ws/build/geographic_info/geodesy" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/bojan/uuv_simulator_ws/install" --install-scripts="/home/bojan/uuv_simulator_ws/install/bin"
