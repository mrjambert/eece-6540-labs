__kernel void calc_pi( int num_items, __global float* global_result)
{
    int indx = get_global_id(0);
    int i;
    float local_sum= 0.0f;
    global_result[indx] = 0.0f;
    barrier(CLK_LOCAL_MEM_FENCE);
    global_result[indx] =4.0* (1.0/(4*indx+1) - 1.0/(4*indx+3));
    barrier(CLK_LOCAL_MEM_FENCE);
    if (indx==0)
    { for (int i=0; i<num_items; i++)
        printf("%3f ",global_result[i]);
     }
}
        
