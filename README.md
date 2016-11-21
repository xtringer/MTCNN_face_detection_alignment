# MTCNN_face_detection_alignment
Joint Face Detection and Alignment using Multi-task Cascaded Convolutional Neural Networks

# Ver mtcnn-caffe-windows-c++-/Python
A caffe C++/Pyhton version by [happynear](https://github.com/happynear/MTCNN_face_detection_alignment)
*Build follow the instructions in `/code/codes/vs`*

# Ver mtcnn-caffe-C++
A caffe C++ version by [DaFuCoding](https://github.com/DaFuCoding/MTCNN_Caffe)  
0. build as examples  
0. or as a standalone proect, ref `mtcnn-caffe-C++-2`

# Ver mtcnn-caffe-C++-2
A caffe C++ version by [wowo200](https://github.com/wowo200/MTCNN)  
0. put the source folder under compiled `<caffe_root>/examples` and build with `make examples`  
0. as a standalone project, edit `CMakeLists.txt`
  * add `<caffe_root>/include`, `<caffe_root>/build/src` and `/usr/include/hdf5/serial` to `include_directories` 
  * add `<caffe_root>/build/lib`, and `/usr/lib/x86_64-linux-gnu/hdf5/serial` to `link_directories` 
  * set compiler to `g++` or `nvcc` accordingly
  * for building `Release` mode, add `SET(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall")` and do `cmake -DCMAKE_BUILD_TYPE=Release ..`
  * Ref:http://blog.sina.com.cn/s/blog_534497fd0102wf2t.html

# Ver mtcnn-caffe-C++-3
A caffe C++ version by [imistyrain](https://github.com/imistyrain/MTCNN-VS)
