/*
 * Author The_Computerizer - 2024
*/
#version 330 compatibility

/*
 * Constants
*/

#define NUM_OCTAVES 5
#define PI 3.14159265359

const vec3 OUTLINE_COLOR = vec3(0.0,0.0,0.0);

/*
 * Uniforms
*/

//Texture sampler
uniform sampler2D texture;

//Equal to World#getgetWorldTime()%65536L from Minecraft#world or 1 if the world does not exist
uniform float time;
uniform float timeScale;
uniform float uvScale;
uniform float radius;
uniform float outlineThickness;
uniform float animationScale;
uniform float crackScale;


/*
 * Inputs passed from the vertex shader
*/

in vec4 vColor;
in vec2 vTexCoord;

/*
 * Gets the normalized position of the fragment between 0-1 by utilizng the texture coords.
 * Assumes the texture size is 16x16
*/
vec2 getNormalizedPosition() {
    return vTexCoord.xy*uvScale;
}

/*
 * Gets a pseudo-random float from 0-1 using the input vector as a seed
*/
float random(vec2 seed) {
    return fract(sin(dot(seed.xy,vec2(12.9898,78.233)))*43758.5453);
}

/*
 * Noise function from ChatGPT
 */
float noise(vec2 seed) {
    vec2 seedFloor = floor(seed);
    vec2 seedFract = fract(seed);
    vec2 w = seedFract*seedFract*(3.0-2.0*seedFract);

    //(0,0) -> (1,0)
    vec2 bottom = vec2(random(seedFloor),random(seedFloor+vec2(1.0,0.0)));
    //(1,0) -> (1,1)
    vec2 right = vec2(random(seedFloor+vec2(1.0,0.0)),random(seedFloor+vec2(1.0,1.0)));
    //(0,1) -> (1,1)
    vec2 top = vec2(random(seedFloor+vec2(0.0,1.0)),random(seedFloor+vec2(1.0,1.0)));
    //(0,0) -> (0,1)
    vec2 left = vec2(random(seedFloor),random(seedFloor+vec2(0.0,1.0)));

    vec2 bottomRight = mix(bottom,right,w.x);
    vec2 topLeft = mix(top,left,w.x);
    return mix(bottomRight.y,topLeft.y,w.y);
}

/*
 * Assume v.x is larger than v.y
 */
vec2 normalizeTo(vec2 vec, float max) {
    return vec2(max,max*(vec.y/ vec.x));
}

/*
 * Fractal brownian motion function modified from ChatGPT
 */
float fbm(vec2 seed) {
    float total = 0.0;
    float frequency = 1.0;
    float amplitude = 1.0;
    float lacunarity = 2.0;
    float gain = 0.5;
    int octaves = 3;
    for(int i=0; i<octaves; i++) {
        total+=noise(seed*frequency)*amplitude;
        frequency*=(lacunarity-(0.2*i));
        amplitude*=gain;
        seed*=2.0; // directional bias
    }
    return total;
}

/*
 * Crack function modified from ChatGPT
 */
vec4 crack(vec2 uv, float timeFactor, vec4 bgColor, vec4 crackColor) {
    float crackIntensity = 0.0;
    vec2 noiseOffset = vec2(0.0,0.1*timeFactor*0.01); // Time-based offset to animate the noise
    float scale = 20.0; // Adjust this scale to control the size of the cracks
    float threshold = 0.8; // Threshold to control crack visibility
    float randomness = 0.3; // Introduce some randomness in crack intensity

    float brownianFactor = fbm((uv+noiseOffset)*scale);

    // Apply randomness to the crack intensity
    crackIntensity = brownianFactor+(random(uv)-0.5)*randomness;

    // Apply threshold to emphasize cracks
    if(crackIntensity<threshold) crackIntensity = 0.0;

    // Apply the crack intensity to the background color
    return mix(bgColor,crackColor,crackIntensity);
}

/*
 * Shader entry point.
 * Any method or field calls must be built-in or defined above this
 */
void main() {
    //RGBA texture color vector
    vec4 texColor = texture2D(texture,vTexCoord);

    //Normalized fragment position between 0-1
    vec2 nPos = getNormalizedPosition();

    //Center position
    vec2 cPos = nPos-vec2(0.5);

    //Scaled time factor to adjust the animation speed
    float timeFactor = time*timeScale;

    //calculated color of the crack
    vec4 finalColor = crack(cPos,timeFactor,texColor,vec4(0.0,0.0,0.0,1.0));

    //Sets the color of the fragment
    gl_FragColor = finalColor;
}