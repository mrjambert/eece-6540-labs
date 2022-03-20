__kernel void calc_pi(__local float* local_result, __local int* num_items, __global float* global_result)
{
    int indx = get_global_id(0);
    int i;
    float local_sum= 0.0f;
    local_result[indx] = 0.0f;
    barrier(CLK_LOCAL_MEM_FENCE);
    local_result[indx] = 1/(4*indx+1) - 1/(4*indx+3)
    barrier(CLK_LOCAL_MEM_FENCE);
    if(indx == 0) 
    {
        for (i=0; i<num_items; i++)
            global_result += local_result[i]
    }
    global_result = global_result*4.0;
}
        
