__kernel void calc_pi( int num_items, __global float* global_result)
{
    printf("are we even here");
    int indx = get_global_id(0);
    int i;
    global_result[indx] = 0.0f;
    barrier(CLK_LOCAL_MEM_FENCE);
    global_result[indx] = 5.0;
    barrier(CLK_LOCAL_MEM_FENCE);  
}
        
