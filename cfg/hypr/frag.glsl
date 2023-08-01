precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main()
{
	vec4 col = texture2D(tex, v_texcoord);
	col.b = .1;
	gl_FragColor = col;
}
