#version 150

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform vec4 ColorModulator;

in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord2;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;

    // SDR-style Bloom
    for(int i = 0; i < 3; i++){
        color[i] += min(0.12, ((color[i] * color[i])));
    }

    fragColor = color * ColorModulator;
}
