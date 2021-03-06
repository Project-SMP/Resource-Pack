#version 150

#moj_import <fog.glsl>

uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
flat in vec4 vertexColor;

out vec4 fragColor;

void main() {

    vec4 color = vertexColor;
    color[0] = vertexColor[0];
    color[1] = vertexColor[1];
    color[1] = vertexColor[2];
    color[3] = vertexColor[3];

    // Atmosphere
    float atmosphereStart = FogStart * 0.7;
    if( atmosphereStart > 60 && vertexDistance > atmosphereStart ){
        color[0] += (0.8 * FogColor[0] - color[0]) * ((vertexDistance - atmosphereStart)/(FogStart * 0.8));
        color[1] += (1.1 * FogColor[1] - color[1]) * ((vertexDistance - atmosphereStart)/(FogStart * 0.8));
        color[2] += (1.3 * FogColor[2] - color[2]) * ((vertexDistance - atmosphereStart)/(FogStart * 0.8));
    }

    // Adaptive Brightness
    if( vertexDistance < 10 ){
        color[0] += (1 - 0.1 * vertexDistance) / (16 + 32 * vertexColor[0] * color[0]);
        color[1] += (1 - 0.1 * vertexDistance) / (16 + 32 * vertexColor[1] * color[1]);
        color[2] += (1 - 0.1 * vertexDistance) / (16 + 32 * vertexColor[2] * color[2]);
    }

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
