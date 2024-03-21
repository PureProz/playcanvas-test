uniform sampler2D texture_lightMap;

void getLightMap() {
    vec4 rgbm = texture2D(texture_lightMap, $UV);
    dDiffuseLight = (8.0 * rgbm.a) * rgbm.rgb;
    dDiffuseLight *= dDiffuseLight;
}
