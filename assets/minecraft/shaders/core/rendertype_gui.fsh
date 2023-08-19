#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

/* Start of custom Code */
in float dis;
/* End of custom Code */

void main() {
    /* Start of custom Code */
    if (dis == 1) {
        discard;
    }
    /* End of custom Code */

    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
}
