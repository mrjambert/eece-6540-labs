__kernel void calc_pi( int num_items, __global float* global_result)
{
    printf("are we even here");
    int indx = get_global_id(0);
    int i;
    __local float local_sum= 0.0f;
    global_result[indx] = 0.0f;
    barrier(CLK_LOCAL_MEM_FENCE);
    global_result[indx] = 5
    barrier(CLK_LOCAL_MEM_FENCE);
    if (indx==0)
    { 
        for (int i=0; i<num_items; i++)
            printf("%3f ",global_result[i]);
     }
}
        
