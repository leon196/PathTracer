#version 330
uniform mat4 projection;
uniform mat4 camera;
uniform mat4 model;
uniform float time;
in vec3 vert;
in vec2 vertTexCoord;
out vec2 fragTexCoord;
void main() {
    fragTexCoord = vertTexCoord;
    gl_Position = projection * camera * model * vec4(vert + vec3(0,sin(time*10.),0), 1);
}