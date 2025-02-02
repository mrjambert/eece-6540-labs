__kernel void calc_pi(__global float* global_result)
{
    int indx = get_global_id(0);
    float f_indx= indx;
    global_result[indx] = 0.0f;
    barrier(CLK_LOCAL_MEM_FENCE);
    global_result[indx]=4.0* (1.0/(8.0*f_indx+1.0) - 1.0/(8.0*f_indx+3.0) + 1.0/(8.0*f_indx+5.0) - 1.0/(8.0*f_indx+7.0));
    barrier(CLK_LOCAL_MEM_FENCE);  
}
        
