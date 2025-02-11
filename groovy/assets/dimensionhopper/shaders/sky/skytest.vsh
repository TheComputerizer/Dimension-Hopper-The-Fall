/*
 * Author The_Computerizer - 2024
*/
#version 330 compatibility

/*
 * Constants
*/

const vec4 DEFAULT_COLOR = vec4(1.0,1.0,1.0,1.0);

/*
 * Outputs passed to the fragment shader
*/

out vec4 vColor;
out vec2 vTexCoord;

/*
 * Shader entry point.
 * Any method or field calls must be built-in or defined above this
*/
void main() {
    //Sets the vertex color to be mixed after fragment shader color is calculated
    vColor = DEFAULT_COLOR;

    //Sets the texture coordinates
    vTexCoord = gl_MultiTexCoord0.xy;

    //TODO Figure out exactly what this means and how it can be used to render 3D effects
    gl_Position = gl_ModelViewProjectionMatrix*gl_Vertex;
}