#version 150

uniform sampler2D Sampler2;

uniform vec4 ColorModulator;

in vec4 vertexColor;
in vec2 texCoord2;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler2, texCoord2) * vertexColor;

    // SDR-style Bloom
    for(int i = 0; i < 3; i++){
        color[i] += min(0.12, ((color[i] * color[i])));
    }

    fragColor = color * ColorModulator;
}
