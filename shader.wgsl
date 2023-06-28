struct vout{
    @builtin(position) p:vec4<f32>,
    @location(0) @interpolate(flat) vii:u32,
};
@vertex
fn vertexMain(@builtin(vertex_index) vi:u32)-> vout{
    var pos=array<vec2<f32>,3>(
        vec2(0.0,0.5),vec2(-0.5,-0.5),vec2(0.5,-0.5)
    );
    var vout1:vout;
    vout1.p= vec4f(pos[vi],0,1);
    vout1.vii=vi;
    return vout1;
}
@fragment
fn fragmentMain(v:vout)-> @location(0) vec4f{
    
    if (v.vii == 0u ){
        return vec4f(1,0,0,1);
    }
     else if (v.vii == 1u)
     {
         return vec4f(0,1,0,1);

        }
     return vec4f(0,0,1,1);
}