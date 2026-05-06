struct tint_symbol_block {
  /* @offset(0) */
  inner : vec4f,
}

struct tint_symbol_4 {
  /* @offset(0) */
  tint_symbol_5 : vec4f,
  /* @offset(16) */
  tint_symbol_6 : vec2f,
  /* @offset(32) */
  tint_symbol_1 : vec4f,
}

var<private> tint_symbol_8_1 : vec2f;

var<private> tint_symbol_6_1 : vec2f;

var<private> tint_symbol_5_1 = vec4f();

var<private> tint_symbol_6_2 = vec2f();

var<private> tint_symbol_1_1 = vec4f();

var<private> tint_symbol_6_3 : vec2f;

var<private> tint_symbol_12_1 : vec4f;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol : tint_symbol_block;

@group(0) @binding(1) var<uniform> tint_symbol_1 : tint_symbol_block;

@group(0) @binding(2) var tint_symbol_2 : texture_2d<f32>;

@group(0) @binding(3) var tint_symbol_3 : sampler;

fn tint_symbol_7_inner(tint_symbol_8 : vec2f, tint_symbol_6 : vec2f) -> tint_symbol_4 {
  var tint_symbol_9 = tint_symbol_4(vec4f(), vec2f(), vec4f());
  let x_60 = vec2f(((tint_symbol_8.x * tint_symbol.inner.z) + tint_symbol.inner.x), ((tint_symbol_8.y * tint_symbol.inner.w) + tint_symbol.inner.y));
  tint_symbol_9.tint_symbol_5 = vec4f(x_60.x, x_60.y, 0.0f, 1.0f);
  tint_symbol_9.tint_symbol_6 = tint_symbol_6;
  tint_symbol_9.tint_symbol_1 = tint_symbol_1.inner;
  let x_73 = tint_symbol_9;
  return x_73;
}

fn tint_symbol_7_1() {
  let x_79 = tint_symbol_8_1;
  let x_80 = tint_symbol_6_1;
  let x_78 = tint_symbol_7_inner(x_79, x_80);
  tint_symbol_5_1 = x_78.tint_symbol_5;
  tint_symbol_6_2 = x_78.tint_symbol_6;
  tint_symbol_1_1 = x_78.tint_symbol_1;
  return;
}

struct tint_symbol_7_out {
  @builtin(position)
  tint_symbol_5_1_1 : vec4f,
  @location(0)
  tint_symbol_6_2_1 : vec2f,
  @location(1)
  tint_symbol_1_1_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_8_1_param : vec2f, @location(1) tint_symbol_6_1_param : vec2f) -> tint_symbol_7_out {
  tint_symbol_8_1 = tint_symbol_8_1_param;
  tint_symbol_6_1 = tint_symbol_6_1_param;
  tint_symbol_7_1();
  return tint_symbol_7_out(tint_symbol_5_1, tint_symbol_6_2, tint_symbol_1_1);
}

fn tint_symbol_11_inner(tint_symbol_6_4 : vec2f, tint_symbol_12 : vec4f) -> vec4f {
  let x_89 = textureSample(tint_symbol_2, tint_symbol_3, tint_symbol_6_4);
  return (x_89 * tint_symbol_12);
}

fn tint_symbol_11_1() {
  let x_98 = tint_symbol_6_3;
  let x_99 = tint_symbol_12_1;
  let x_97 = tint_symbol_11_inner(x_98, x_99);
  value = x_97;
  return;
}

struct tint_symbol_11_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_6_3_param : vec2f, @location(1) tint_symbol_12_1_param : vec4f) -> tint_symbol_11_out {
  tint_symbol_6_3 = tint_symbol_6_3_param;
  tint_symbol_12_1 = tint_symbol_12_1_param;
  tint_symbol_11_1();
  return tint_symbol_11_out(value);
}
