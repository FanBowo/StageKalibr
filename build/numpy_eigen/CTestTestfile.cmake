# CMake generated Testfile for 
# Source directory: /home/fanzhuzhi/kalibr_workspace/src/Kalibr/Schweizer-Messer/numpy_eigen
# Build directory: /home/fanzhuzhi/kalibr_workspace/build/numpy_eigen
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_numpy_eigen_nosetests_test.numpy_eigen_tests.py "/home/fanzhuzhi/kalibr_workspace/build/numpy_eigen/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/fanzhuzhi/kalibr_workspace/build/numpy_eigen/test_results/numpy_eigen/nosetests-test.numpy_eigen_tests.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/fanzhuzhi/kalibr_workspace/build/numpy_eigen/test_results/numpy_eigen" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/fanzhuzhi/kalibr_workspace/src/Kalibr/Schweizer-Messer/numpy_eigen/test/numpy_eigen_tests.py --with-xunit --xunit-file=/home/fanzhuzhi/kalibr_workspace/build/numpy_eigen/test_results/numpy_eigen/nosetests-test.numpy_eigen_tests.py.xml")
subdirs("gtest")
