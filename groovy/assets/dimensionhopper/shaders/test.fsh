#version 120
uniform sampler2D texture;
uniform float aberrationAmount;

void main() {
    vec2 uv = gl_TexCoord[0].st;

    vec4 color;
    color.r = texture2D(texture, uv + vec2(aberrationAmount, 0.0)).r;
    color.g = texture2D(texture, uv).g;
    color.b = texture2D(texture, uv - vec2(aberrationAmount, 0.0)).b;
    color.a = texture2D(texture, uv).a;

    gl_FragColor = color;
}