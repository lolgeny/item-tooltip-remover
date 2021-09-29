#version 440 core

#define TOOLTIP_Z_MIN -0.4
#define TOOLTIP_Z_MAX -0.399

in vec3 Position;
out vec4 position;
in vec4 Color;
out float dis;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    position = gl_Position;
    dis = 0.0;
    if (
        // position.x < -0.7001 && 
        (position.y > 2.5 || position.y < -0.7) &&
        position.z > TOOLTIP_Z_MIN && position.z < TOOLTIP_Z_MAX) dis = 100000000.0;
    vertexColor = Color;
}
