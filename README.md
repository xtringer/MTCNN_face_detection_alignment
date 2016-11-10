# MTCNN_face_detection_alignment
Joint Face Detection and Alignment using Multi-task Cascaded Convolutional Neural Networks

# Ver mtcnn-caffe-C++
A caffe C++ version by [DaFuCoding](https://github.com/DaFuCoding/MTCNN_Caffe)

# Ver mtcnn-caffe-C++-2
A caffe C++ version by [wowo200](https://github.com/wowo200/MTCNN)
1. put the source folder under compiled `<caffe_root>/examples` and build with `make examples`
2. as a standalone project, edit `CMakeLists.txt`
  * add `<caffe_root>/include`, `<caffe_root>/build/src` and `/usr/include/hdf5/serial` to `include_directories` 
  * add `<caffe_root>/build/lib`, and `/usr/lib/x86_64-linux-gnu/hdf5/serial` to `link_directories` 
  * set compiler to `g++` or `nvcc` accordingly

# Ver mtcnn-caffe-C++-3
A caffe C++ version by [imistyrain](https://github.com/imistyrain/MTCNN-VS)
