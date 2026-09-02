#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(location = 0) in vec2 texCoord;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) out vec4 fragColor;

// Matrice Bayer 4x4 normalizzata
const float bayer4x4[16] = float[](
     0.0/16.0,  8.0/16.0,  2.0/16.0, 10.0/16.0,
    12.0/16.0,  4.0/16.0, 14.0/16.0,  6.0/16.0,
     3.0/16.0, 11.0/16.0,  1.0/16.0,  9.0/16.0,
    15.0/16.0,  7.0/16.0, 13.0/16.0,  5.0/16.0
);

const vec3 LEVELS = vec3(7.0, 7.0, 3.0); // 8, 8, 4 gradini (max index = N-1)

void main() {
    // 1. Pixelation (Risoluzione dimezzata)
    vec2 halfRes = InSize * 0.5;
    vec2 bigPixelCoord = floor(texCoord * halfRes);

    // Campionamento singolo
    vec4 color = texture(InSampler, bigPixelCoord / halfRes);

    // 2. Indexing Bayer ultra-rapido con operatori bitwise/modulo su interi
    ivec2 p = ivec2(bigPixelCoord) & 3; // Equivalent a % 4, ma più veloce in hardware
    float bayerValue = bayer4x4[p.y * 4 + p.x] - 0.5;

    // 3. Dithering e Quantizzazione Vettoriale diretta (senza separare R, G, B)
    vec3 dithered = color.rgb + (bayerValue / LEVELS);
    vec3 quantized = floor(dithered * LEVELS + 0.5) / LEVELS;

    fragColor = vec4(clamp(quantized, 0.0, 1.0), color.a);
}
