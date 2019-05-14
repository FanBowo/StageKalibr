list(APPEND suitesparse_INCLUDE_DIRS ${suitesparse_DIR}/../../../include/suitesparse)


list(APPEND suitesparse_LIBRARIES 
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libspqr${CMAKE_STATIC_LIBRARY_SUFFIX}
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libcholmod${CMAKE_STATIC_LIBRARY_SUFFIX} 
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libccolamd${CMAKE_STATIC_LIBRARY_SUFFIX} 
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libcamd${CMAKE_STATIC_LIBRARY_SUFFIX} 
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libcolamd${CMAKE_STATIC_LIBRARY_SUFFIX} 
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libamd${CMAKE_STATIC_LIBRARY_SUFFIX} 
  lapack
  blas
  /home/fanzhuzhi/kalibr_workspace/devel/lib/libsuitesparseconfig${CMAKE_STATIC_LIBRARY_SUFFIX} )

if(NOT APPLE)
  list(APPEND suitesparse_LIBRARIES rt )
endif()
