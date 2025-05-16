# detmem_dockerfile
This repository simply contains a docker file for rerunning simulations present in the detmem paper. The original repository is here: https://github.com/CSL-KU/detmem 

To run the simulations clone this project and create a docker image using the following command in the same directory as the Dockerfile:
```
docker build -t detmem-image .
```
or
```
sudo docker build -t detmem-image .
```
After building the image, run a container using the following command:
```
docker run -it detmem-image
```
or 
```
sudo docker run -it detmem-image
```
Following these steps, go to the original github repository and follow the steps outlined in the ReadMe, starting with
```
cd gem5
scons build/ARM/gem5.opt -jN
```
