#define PI 3.14159

varying vec2 vuv;


float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

vec2 rotate(vec2 uv, float rotation, vec2 mid)
{
    return vec2(
      cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
      cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
    );
}

void main()
{
    //Pattern 1
    //gl_FragColor = vec4(vuv, 1.0, 1.0);

    //Pattern 2
    //gl_FragColor = vec4(vuv, 0, 1.0);
    
    //Pattern 3
    //gl_FragColor = vec4(vuv.x, vuv.x, vuv.x, 1.0);

    //Pattern 4
    //gl_FragColor = vec4(vuv.y, vuv.y, vuv.x, 1.0);   

    //Pattern 5
    //float strength = 1.0 - vuv.y;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 6
    //float strength = vuv.y * 10.0;
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 7
    //float strength = mod(vuv.y * 10.0, 1.0);
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 
    
    //Pattern 8
    //float strength = mod(vuv.y * 10.0, 1.0);
    //strength = strength < 0.5 ? 0.0 : 1.0; //Performance issues
    //strength = step(0.5, strength); //use this instead
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 9
    //float strength = mod(vuv.y * 10.0, 1.0);
    //strength = step(0.8, strength); //use this instead
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 10
    //float strength = mod(vuv.x * 10.0, 1.0);
    //strength = step(0.8, strength); //use this instead
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 
    
    //Pattern 11
    //float strength = step(0.8, mod(vuv.x * 10.0, 1.0));
    //strength += step(0.8, mod(vuv.y * 10.0, 1.0));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 12
    //float strength = step(0.8, mod(vuv.x * 10.0, 1.0));
    //strength *= step(0.8, mod(vuv.y * 10.0, 1.0));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 13
    //float strength = step(0.4, mod(vuv.x * 10.0, 1.0));
    //strength *= step(0.8, mod(vuv.y * 10.0, 1.0));
    //gl_FragColor = vec4(strength, strength, strength, 1.0)

    //Pattern 14
    //float barX = step(0.4, mod(vuv.x * 10.0, 1.0));
    //barX *= step(0.8, mod(vuv.y * 10.0, 1.0));
    //float barY = step(0.4, mod(vuv.y * 10.0, 1.0));
    //barY *= step(0.8, mod(vuv.x * 10.0, 1.0));
    //float strength = barX + barY;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 15
    //float barX = step(0.4, mod(vuv.x * 10.0, 1.0));
    //barX *= step(0.8, mod(vuv.y * 10.0 + 0.20, 1.0));
    //float barY = step(0.8, mod(vuv.x * 10.0 + 0.20, 1.0));
    //barY *= step(0.4, mod(vuv.y * 10.0, 1.0));
    //float strength = barX + barY;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 16
    //float strength = abs(vuv.x - 0.5);
    //gl_FragColor = vec4(strength, strength, strength, 1.0);

    //Pattern 17
    //float strength = min(abs(vuv.x - 0.5), abs(vuv.y - 0.5));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);
    
    //Pattern 18
    //float strength = max(abs(vuv.x - 0.5), abs(vuv.y - 0.5));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);
    
    //Pattern 19
    //float strength = step(0.2, max(abs(vuv.x - 0.5), abs(vuv.y - 0.5)));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 20
    //float square1 = step(0.2, max(abs(vuv.x - 0.5), abs(vuv.y - 0.5)));
    //float square2 = 1.0 - step(0.25, max(abs(vuv.x - 0.5), abs(vuv.y - 0.5)));
    //float strength = square1 * square2;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 21
    //float strength = floor(vuv.x * 10.0) / 10.0;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 22
    //float strength = floor(vuv.x * 10.0) / 10.0;
    //strength *= floor(vuv.y * 10.0) / 10.0;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 23
    //float strength = random(vuv);
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 24
    //vec2 gridUv = vec2(
    //    floor(vuv.x * 10.0) / 10.0,
    //    floor(vuv.y * 10.0) / 10.0
    //);
    //float strength = random(gridUv);
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 25
    //vec2 gridUv = vec2(
    //    floor(vuv.x * 10.0) / 10.0,
    //    floor(vuv.y * 10.0 + vuv.x * 5.0) / 10.0
    //);
    //float strength = random(gridUv);
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 26
    //float strength = length(vuv);
    //gl_FragColor = vec4(strength, strength, strength, 1.0);   

    //Pattern 27
    //float strength = length(vuv - 0.5);
    //float strength = distance(vuv, vec2(0.5));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 28
    //float strength = 1.0 - distance(vuv, vec2(0.5));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 29
    //float strength = 0.015 / distance(vuv, vec2(0.5));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 30
    //vec2 lightUv = vec2(
    //    vuv.x * 0.1 + 0.45,
    //    vuv.y * 0.5 + 0.25
    //);
    //float strength = 0.015 / distance(lightUv, vec2(0.5));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 31
    //vec2 lightUvX = vec2(vuv.x * 0.1 + 0.45, vuv.y * 0.5 + 0.25);
    //float lightX = 0.015 / distance(lightUvX, vec2(0.5));
    //vec2 lightUvY = vec2(vuv.y * 0.1 + 0.45, vuv.x * 0.5 + 0.25);
    //float lightY = 0.015 / distance(lightUvY, vec2(0.5));
    //float strength = lightX * lightY;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 32
    //vec2 rotateUv = rotate(vuv, PI * 0.25, vec2(0.5));
    //vec2 lightUvX = vec2(rotateUv.x * 0.1 + 0.45, rotateUv.y * 0.5 + 0.25);
    //float lightX = 0.015 / distance(lightUvX, vec2(0.5));
    //vec2 lightUvY = vec2(rotateUv.y * 0.1 + 0.45, rotateUv.x * 0.5 + 0.25);
    //float lightY = 0.015 / distance(lightUvY, vec2(0.5));
    //float strength = lightX * lightY;
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 33
    //float strength = step(0.25, distance(vuv, vec2(0.5)));
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 34
    //float strength = abs(distance(vuv, vec2(0.5)) - 0.25);
    //gl_FragColor = vec4(strength, strength, strength, 1.0);  

    //Pattern 35
    //float strength = step(0.01, abs(distance(vuv, vec2(0.5)) - 0.25));
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 
    
    //Pattern 36
    //float strength = 1.0 - step(0.01, abs(distance(vuv, vec2(0.5)) - 0.25));
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 37
    //vec2 wavedUv = vec2(
    //    vuv.x,
    //    vuv.y + sin(vuv.x * 30.0) * 0.1
    //);
    //float strength = 1.0 - step(0.01, abs(distance(wavedUv, vec2(0.5)) - 0.25));
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 
    
    //Pattern 38
    //vec2 wavedUv = vec2(
    //    vuv.x + sin(vuv.y * 30.0) * 0.1,
    //    vuv.y + sin(vuv.x * 30.0) * 0.1
    //);
    //float strength = 1.0 - step(0.01, abs(distance(wavedUv, vec2(0.5)) - 0.25));
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 39
    //vec2 wavedUv = vec2(
    //    vuv.x + sin(vuv.y * 100.0) * 0.1,
    //    vuv.y + sin(vuv.x * 100.0) * 0.1
    //);
    //float strength = 1.0 - step(0.01, abs(distance(wavedUv, vec2(0.5)) - 0.25));
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 40
    //float angle = atan(vuv.x, vuv.y);
    //float strength = angle;
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 41
    //float angle = atan(vuv.x - 0.5, vuv.y - 0.5);
    //float strength = angle;
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 42
    //float angle = atan(vuv.x - 0.5, vuv.y - 0.5);
    //angle /= PI * 2.0;
    //angle += 0.5;
    //float strength = angle;
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 43
    //float angle = atan(vuv.x - 0.5, vuv.y - 0.5);
    //angle /= PI * 2.0;
    //angle += 0.5;
    //angle *= 20.0;
    //angle = mod(angle, 1.0);
    //float strength = angle;
    //gl_FragColor = vec4(strength, strength, strength, 1.0); 

    //Pattern 44
    float angle = atan(vuv.x - 0.5, vuv.y - 0.5);
    angle /= PI * 2.0;
    angle += 0.5;
    float strength = sin(angle * 100.0);
    gl_FragColor = vec4(strength, strength, strength, 1.0); 

}