#version 440 core

#define TOOLTIP_Z_MIN -0.4
#define TOOLTIP_Z_MAX -0.399

in vec4 vertexColor;
in vec4 position;
in float dis;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {
    if (dis > 0.1 && position.z > TOOLTIP_Z_MIN && position.z < TOOLTIP_Z_MAX) discard;
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
}
