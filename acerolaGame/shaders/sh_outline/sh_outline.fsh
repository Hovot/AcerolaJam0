//
// Simple outline shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetX;
	offsetX.x = pixelW;
	
	vec2 offsetY;
	offsetY.y = pixelH;
	
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	vec4 newColor = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if ( alpha < 1.0 ) { newColor = vec4(1.0,0.9,0.1,1.0); } 
	
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);
	
	
    gl_FragColor = newColor;
	gl_FragColor.a = alpha;
}
