// This file automatically generated by create_export_module.py
#define NO_IMPORT_ARRAY 

#include <NumpyEigenConverter.hpp>

#include <boost/cstdint.hpp>


void import_3_4_uchar()
{
	NumpyEigenConverter<Eigen::Matrix< boost::uint8_t, 3, 4 > >::register_converter();
}

