#version 150 core

in vec4 vertexColor;
in float dis;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {
    if (dis == 100000000.0) discard;
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
}
