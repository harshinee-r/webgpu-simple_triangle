struct vout{
    @builtin(position) p:vec4<f32>,
    @location(0) col:vec4<f32>,
};
@vertex
fn vertexMain(@builtin(vertex_index) vi:u32)-> vout{
    var pos=array<vec2<f32>,3>(
        vec2(0.0,0.5),vec2(-0.5,-0.5),vec2(0.5,-0.5)
    );
    var colour=array<vec4<f32>,3>(
        vec4(1,0,0,1), vec4(0,1,0,1), vec4(0,0,1,1)
    );
    var vout1:vout;
    vout1.p= vec4f(pos[vi],0,1);
    vout1.col=colour[vi];
    return vout1;
}
@fragment
fn fragmentMain(v:vout)-> @location(0) vec4f{
    
    return v.col;
}