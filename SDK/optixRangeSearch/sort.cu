#include <thrust/sort.h>
#include <thrust/device_vector.h>
#include <thrust/sequence.h>

#include <iostream>

void sortByKey( unsigned int numPrims, unsigned int knn, void* data, thrust::host_vector<unsigned int>* h_vec_key, thrust::host_vector<unsigned int>* h_vec_val, thrust::device_vector<unsigned int>* d_vec_key, thrust::device_vector<unsigned int>* d_vec_val ) {
  thrust::sort_by_key(d_vec_key->begin(), d_vec_key->end(), d_vec_val->begin());

  thrust::copy(d_vec_key->begin(), d_vec_key->end(), h_vec_key->begin());
  thrust::copy(d_vec_val->begin(), d_vec_val->end(), h_vec_val->begin());
}
