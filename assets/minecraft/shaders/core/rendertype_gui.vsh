#version 150 core

#define BOTTOM_Y -0.99

#define TOOLTIP_Z_MIN -0.041
#define TOOLTIP_Z_MAX -0.040

in vec3 Position;
in vec4 Color;
out float dis;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    dis = 0.0;
    if ((gl_Position.y > 2.5 || gl_Position.y < BOTTOM_Y) && gl_Position.z > TOOLTIP_Z_MIN && gl_Position.z < TOOLTIP_Z_MAX)
        dis = 100000000.0;
    vertexColor = Color;
}
