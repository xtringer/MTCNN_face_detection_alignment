# MTCNN_face_detection_and_alignment

# Ver mxnet-python
An MXNet version by [pangyupo](https://github.com/pangyupo/mxnet_mtcnn_face_detection), intended to run on Linux.

Here are a few revisions for running on Windows:
* Simply using [pre-build windows binary](https://github.com/dmlc/mxnet/releases), and put `<pre-build_binary_folder_path>\python` in `PYTHONPATH` variable or use `sys.path.append` to load at run time.
* Causing endless loop if directly run, and may be resolved by putting the code inside a main function in `main.py`. Ref: [RuntimeError on windows trying python multiprocessing](http://stackoverflow.com/questions/18204782/runtimeerror-on-windows-trying-python-multiprocessing)
* It seems running slower than that on Linux(tested with WSL) in cpu mode.
* This MXNet version may get more false positives than the official one. 

# Ver mxnet-python-2
* [Seanlinx](https://github.com/Seanlinx/mtcnn)
---
## About

  This is a python/mxnet implementation of [Zhang](https://kpzhang93.github.io/)'s work **<Joint Face Detection and Alignment using Multi-task Cascaded Convolutional Neural Networks>**. it's fast and accurate,  see [link](https://github.com/kpzhang93/MTCNN_face_detection_alignment). 

  It should have **almost** the same output with the original work,  for mxnet fans and those can't afford matlab :)

[中文blog](https://pangyupo.github.io/2016/10/22/mxnet-mtcnn/)

## Requirement	  

- opencv 

  ​	I use cv2 for image io and resize(much faster than skimage), the input image's channel is acutally BGR

- mxnet 

  ​	**please update to the newest version, we need 'full' mode in Pooling operation**

Only tested on Linux and Mac

## Test

run:

 ``python main.py`` 

you can change `ctx` to `mx.gpu(0)` for faster detection

update 20161028

by setting ``num_worker=4``  ``accurate_landmark=False`` we can reduce the detection time by 1/4-1/3, the bboxes are still the same, but we skip the last landmark fine-tune stage( mtcnn_v1 ). 

## Results

![big4](http://7xsc78.com1.z0.glb.clouddn.com/face_mtcnn.png)



## License

MIT LICENSE



## Reference

K. Zhang and Z. Zhang and Z. Li and Y. Qiao Joint,  Face Detection and Alignment Using Multitask Cascaded Convolutional Networks, IEEE Signal Processing Letters
