# capo

Cool experiments using OpenCL libraries.

## Setting up the environment (Fedora)

Install `clinfo`:

```shell
sudo dnf install clinfo
```

Install OpenCL driver for your architecture.
E.g. for Intel:

```shell
# Currently there are no official packages on Fedora, so we get them via copr
sudo dnf copr enable jdanecki/intel-opencl
# Install
sudo dnf install intel-opencl
```

CLInfo should now recognize the hardware, e.g.:

```shell
$ clinfo -l
Platform #0: Intel(R) OpenCL HD Graphics
 `-- Device #0: Intel(R) Gen9 HD Graphics NEO
```

Install OpenCL header files:

```shell
sudo dnf install ocl-icd-devel
```

# Running

When running you get:

```shell
$ make run
g++ -lOpenCL -o capo capo.cpp
time ./capo
Running on GPU
final result: 1.000000
4.10user 0.63system 0:05.09elapsed 92%CPU (0avgtext+0avgdata 4832404maxresident)k
20720inputs+0outputs (32major+1193708minor)pagefaults 0swaps
$ 
$ 
$ make run-cpu
g++ -lOpenCL -o capo -DRUN_ON_CPU capo.cpp
time ./capo
Running on CPU
final result: 1.000000
4.04user 0.54system 0:04.60elapsed 99%CPU (0avgtext+0avgdata 2481384maxresident)k
0inputs+0outputs (0major+605733minor)pagefaults 0swaps
```
