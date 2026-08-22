#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) out vec4 fragColor;

const float noiseBlockSize = 3.0; // dimensione in pixel di ogni "blocco" di rumore - alza per grana più grossa

float pseudoNoise(vec2 coord) {
    return fract(sin(dot(coord, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec2 halfSize = InSize * 0.5;
    vec2 steppedCoord = texCoord;
    steppedCoord.x = float(int(steppedCoord.x * halfSize.x)) / halfSize.x;
    steppedCoord.y = float(int(steppedCoord.y * halfSize.y)) / halfSize.y;

    vec4 color = texture(InSampler, steppedCoord);

    vec2 noiseCoord = floor(gl_FragCoord.xy / noiseBlockSize);
    float threshold = pseudoNoise(noiseCoord) - 0.5; // centrato su 0
    color.rgb += threshold * vec3(1.0 / 8.0, 1.0 / 8.0, 1.0 / 4.0); // = un gradino di quantizzazione, non di più

    float r = float(int(color.r * 8.0)) / 8.0;
    float g = float(int(color.g * 8.0)) / 8.0;
    float b = float(int(color.b * 4.0)) / 4.0;

    fragColor = vec4(r, g, b, 1.0);
}
