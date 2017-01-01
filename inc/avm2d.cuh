#ifndef __AVM2D_CUH__
#define __AVM2D_CUH__


#include "std_include.h"
#include <cuda_runtime.h>

#include "cu_functions.h"
#include "indexer.h"
#include "gpubox.h"

//!Initialize the GPU's random number generator
bool gpu_initialize_curand(curandState *states,
                    int N,
                    int Timestep,
                    int GlobalSeed
                    );

bool gpu_avm_geometry(
                    Dscalar2 *d_p,
                    Dscalar2 *d_v,
                    int      *d_nn,
                    int      *d_n,
                    Dscalar2 *d_AP,
                    int      N, 
                    Index2D  &n_idx, 
                    gpubox   &Box);

#endif
