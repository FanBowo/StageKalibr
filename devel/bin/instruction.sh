./kalibr_calibrate_cameras --target ../../../dynamic/april_6x6.yaml --bag ../../../dynamic/dynamic.bag --models pinhole-equi --topics /cam0/image_raw

./kalibr_calibrate_imu_camera --target ../../../dynamic/april_6x6.yaml --bag ../../../dynamic/dynamic.bag --cams ./camchain-....dynamicdynamic.yaml --imu ../../../dynamic/imu_adis16448.yaml

./kalibr_bagextractor --image-topics /cam0/image_raw /cam1/image_raw --imu-topics /imu0 --output-folder /home/fanzhuzhi/dynamic --bag /home/fanzhuzhi/dynamic/dynamic.bag

./kalibr_bagcreater --folder /home/fanzhuzhi/dynamic/dataset --output-bag awsome.bag