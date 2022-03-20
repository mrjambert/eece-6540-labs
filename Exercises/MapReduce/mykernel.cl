__kernel void calc_pi( int num_items, __global float* global_result)
{
    int indx = get_global_id(0);
    int i;
    int num_times = num_items;
    float local_sum= 0.0f;
    global_result[indx] = 0.0f;
    barrier(CLK_LOCAL_MEM_FENCE);
    global_result[indx] =4.0f*(1/(4*indx+1) - 1/(4*indx+3));
    barrier(CLK_LOCAL_MEM_FENCE);
}
        
