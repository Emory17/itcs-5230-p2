varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = v_vColour * vec4(texColor.r*3.0, texColor.g, texColor.b, texColor.a);
}


