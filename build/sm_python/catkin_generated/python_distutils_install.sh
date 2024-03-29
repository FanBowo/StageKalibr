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

echo_and_run cd "/home/fanzhuzhi/kalibr_workspace/src/Kalibr/Schweizer-Messer/sm_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/fanzhuzhi/kalibr_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/fanzhuzhi/kalibr_workspace/install/lib/python2.7/dist-packages:/home/fanzhuzhi/kalibr_workspace/build/sm_python/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/fanzhuzhi/kalibr_workspace/build/sm_python" \
    "/usr/bin/python2" \
    "/home/fanzhuzhi/kalibr_workspace/src/Kalibr/Schweizer-Messer/sm_python/setup.py" \
    build --build-base "/home/fanzhuzhi/kalibr_workspace/build/sm_python" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/fanzhuzhi/kalibr_workspace/install" --install-scripts="/home/fanzhuzhi/kalibr_workspace/install/bin"
