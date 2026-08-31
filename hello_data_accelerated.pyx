#cython: language_level=3
import pandas as pd
cimport numpy as cnp
import numpy as np

def run_cython_accelerated():
    scores=pd.DataFrame({"name":["Ada","Line","Sam"],"score":[85,91,88]})
    #Extract raw numpy array and specify the view type for memory fetch speed
    cdef long[:] score_view=scores['score'].values
    cdef int num_rows=score_view.shape[0]
    cdef long total_score=0
    cdef int i

    #Fast C-level execution loop
    for i in range(num_rows):
        total_score+=score_view[i]

    cdef double avg_score=<double>total_score/num_rows
    return num_rows, avg_score
