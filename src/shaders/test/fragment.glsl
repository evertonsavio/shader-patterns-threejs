varying vec2 vuv;

float random(vec2 st)
{
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
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
    vec2 gridUv = vec2(
        floor(vuv.x * 10.0) / 10.0,
        floor(vuv.y * 10.0) / 10.0
    );

    float strength = random(gridUv);
    gl_FragColor = vec4(strength, strength, strength, 1.0);   
    
}