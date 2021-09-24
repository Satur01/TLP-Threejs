#define PI 3.1415926535897932384626433832795

varying vec2 vUv;
uniform vec3 uColor;
uniform float uTime;
uniform float uFrequency;
uniform float uPowerExponent;

void main()
{   
    float opacity = 0.5 - distance(vUv,vec2(0.5));

    float ripple = sin(length(vUv - 0.5) * uFrequency + uTime * 10.0);    
    ripple = pow(ripple, uPowerExponent);
    vec3 strength = vec3(ripple) * uColor;

    gl_FragColor = vec4(strength, opacity);
}