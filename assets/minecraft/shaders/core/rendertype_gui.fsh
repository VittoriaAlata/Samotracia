#version 150
// Copyright (c) 2023 Vittoria

#moj_import <font.glsl>
#moj_import <utils.glsl>

in vec4 vertexColor;
uniform vec4 ColorModulator;
out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    if (distance(color.rgb, vec3(16 / 255.0)) < 0.01) {
        vec4 textColor = mix(vec4(1), vertexColor, 0.0);
        vec4 backgroundColor = vertexColor;

        ivec2 pixel = ivec2(gl_FragCoord.xy);
        ivec2 offset = pixel - ivec2(10, 45);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 622 && offset.y < 12) {
            uint[] TEXT = uint[](_C, _O, _P, _Y, _R, _I, _G, _H, _T, _SPACE, _PARENL, _C, _PARENR, _SPACE, _2, _0, _2, _3, _SPACE, _V, _I, _T, _T, _O, _R, _I, _A, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 52; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }

        offset = pixel - ivec2(10, 25);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[](_F, _O, _R, _SPACE, _D, _O, _W, _N, _L, _O, _A, _D, _SPACE, _A, _N, _D, _SPACE, _C, _R, _E, _D, _I, _T, _S, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
        
        offset = pixel - ivec2(10, 5);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[](_PARENL, _M, _O, _D, _R, _I, _N, _T, _H, _DOT, _C, _O, _M, _RSLASH, _R, _E, _S, _O, _U, _R, _C, _E, _P, _A, _C, _K, _RSLASH, _S, _A, _M, _O, _T, _R, _A, _C, _I, _A, _PARENR, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
        offset = pixel - ivec2(10, 85);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[]( _V, _1, _DOT, _1, _2, _DOT, _0, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
        offset = pixel - ivec2(10, 65);
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 514 && offset.y < 12) {
            uint[] TEXT = uint[]( _2, _7, _DOT, _1, _2, _DOT, _2, _0, _2, _3, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE);
            for (int i = 0; i < 43; i++) {
                int startX = i * 12;
                int endX = startX + 10;
                if (offset.x < endX) {
                    bool pixelOn = getPixel(TEXT[i], (offset.x - startX) / 2, offset.y / 2);
                    fragColor = pixelOn ? textColor : backgroundColor;
                    break;
                } else if (offset.x < endX + 2) {
                    fragColor = backgroundColor;
                    break;
                }
            }
            return;
        }
        offset = ivec2(379, 480) - pixel;  // Inverti la direzione degli offset
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 370 && offset.y < 370) { //Lunghezza o Largherzza * Scala
            int qrCodeSize = 37; //Lunghezza o Altezza dell'immagine QR
            int moduleSize = 10; //Scala
            // Aggiunto uno spazio vuoto di 5 pixel a destra
                if (offset.x < 0 || offset.x >= qrCodeSize * moduleSize ||
                offset.y < 0 || offset.y >= qrCodeSize * moduleSize) {
                    fragColor = vec4(0);  // Pixel fuori dal QR code, impostato a trasparente
                    return;
                }
            int qrCode[1369] = int[1369] //Moltiplicare Lunghezza * Altezza
            (
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
            );
            vec4 textColor = mix(vec4(1), vertexColor, 0.0);
            vec4 backgroundColor = vertexColor;  // Imposta il colore dello sfondo
            
            // Calcola le coordinate del modulo nel QR code
            ivec2 modulePos = ivec2(offset / moduleSize);
            
            // Specchia lungo l'asse X
            modulePos.x = qrCodeSize - 1 - modulePos.x;
            
            // Calcola l'indice nell'array monodimensionale
            int index = modulePos.y * qrCodeSize + modulePos.x;
            
            // Verifica se il pixel è all'interno del QR code
            bool pixelOn = bool(qrCode[index]);
            
            fragColor = pixelOn ? textColor : backgroundColor;
            return;
        }
    }
    fragColor = color * ColorModulator;   
}
