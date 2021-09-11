#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }

    // SDR-style Bloom
    for(int i = 0; i < 3; i++){
        color[i] += min(0.12, ((color[i] * color[i])));
    }

    // Atmosphere
    float atmosphereStart = FogStart * 0.7;
    if( atmosphereStart > 60 && vertexDistance > atmosphereStart ){
        color[0] += (0.8 * FogColor[0] - color[0]) * ((vertexDistance - atmosphereStart)/(FogStart * 0.8));
        color[1] += (1.1 * FogColor[1] - color[1]) * ((vertexDistance - atmosphereStart)/(FogStart * 0.8));
        color[2] += (1.3 * FogColor[2] - color[2]) * ((vertexDistance - atmosphereStart)/(FogStart * 0.8));
    }

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
