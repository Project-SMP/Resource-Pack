#version 150

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;

in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;
    if (color.a < 0.1) {
        discard;
    }

    // SDR-style Bloom
    for(int i = 0; i < 3; i++){
        color[i] += min(0.12, ((color[i] * color[i])));
    }

    fragColor = color * ColorModulator;
}
