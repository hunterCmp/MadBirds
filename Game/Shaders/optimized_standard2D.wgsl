alias Arr = array<vec4f, 2u>;

struct tint_symbol_block {
  /* @offset(0) */
  inner : Arr,
}

struct tint_symbol_1_block {
  /* @offset(0) */
  inner : vec4f,
}

struct tint_symbol_2_block {
  /* @offset(0) */
  inner : mat4x4f,
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : vec4f,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
  /* @offset(32) */
  tint_symbol_1 : vec4f,
}

var<private> tint_symbol_9_1 : vec2f;

var<private> tint_symbol_7_1 : vec2f;

var<private> tint_symbol_6_1 = vec4f();

var<private> tint_symbol_7_2 = vec2f();

var<private> tint_symbol_1_1 = vec4f();

var<private> tint_symbol_7_3 : vec2f;

var<private> tint_symbol_16_1 : vec4f;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol : tint_symbol_block;

@group(0) @binding(1) var<uniform> tint_symbol_1 : tint_symbol_1_block;

@group(0) @binding(2) var<uniform> tint_symbol_2 : tint_symbol_2_block;

@group(0) @binding(3) var tint_symbol_3 : texture_2d<f32>;

@group(0) @binding(4) var tint_symbol_4 : sampler;

fn tint_symbol_8_inner(tint_symbol_9 : vec2f, tint_symbol_7 : vec2f) -> tint_symbol_5 {
  var tint_symbol_10 = tint_symbol_5(vec4f(), vec2f(), vec4f());
  let x_58 = vec2f(tint_symbol.inner[1i].x, tint_symbol.inner[1i].y);
  let x_64 = (tint_symbol_9 * tint_symbol.inner[0i].zw);
  let x_83 = (vec2f(((x_64.x * x_58.x) - (x_64.y * x_58.y)), ((x_64.x * x_58.y) + (x_64.y * x_58.x))) + tint_symbol.inner[0i].xy);
  tint_symbol_10.tint_symbol_6 = (tint_symbol_2.inner * vec4f(x_83.x, x_83.y, 0.0f, 1.0f));
  tint_symbol_10.tint_symbol_7 = tint_symbol_7;
  tint_symbol_10.tint_symbol_1 = tint_symbol_1.inner;
  let x_99 = tint_symbol_10;
  return x_99;
}

fn tint_symbol_8_1() {
  let x_105 = tint_symbol_9_1;
  let x_106 = tint_symbol_7_1;
  let x_104 = tint_symbol_8_inner(x_105, x_106);
  tint_symbol_6_1 = x_104.tint_symbol_6;
  tint_symbol_7_2 = x_104.tint_symbol_7;
  tint_symbol_1_1 = x_104.tint_symbol_1;
  return;
}

struct tint_symbol_8_out {
  @builtin(position)
  tint_symbol_6_1_1 : vec4f,
  @location(0)
  tint_symbol_7_2_1 : vec2f,
  @location(1)
  tint_symbol_1_1_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_9_1_param : vec2f, @location(1) tint_symbol_7_1_param : vec2f) -> tint_symbol_8_out {
  tint_symbol_9_1 = tint_symbol_9_1_param;
  tint_symbol_7_1 = tint_symbol_7_1_param;
  tint_symbol_8_1();
  return tint_symbol_8_out(tint_symbol_6_1, tint_symbol_7_2, tint_symbol_1_1);
}

fn tint_symbol_15_inner(tint_symbol_7_4 : vec2f, tint_symbol_16 : vec4f) -> vec4f {
  let x_115 = textureSample(tint_symbol_3, tint_symbol_4, tint_symbol_7_4);
  return (x_115 * tint_symbol_16);
}

fn tint_symbol_15_1() {
  let x_124 = tint_symbol_7_3;
  let x_125 = tint_symbol_16_1;
  let x_123 = tint_symbol_15_inner(x_124, x_125);
  value = x_123;
  return;
}

struct tint_symbol_15_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_7_3_param : vec2f, @location(1) tint_symbol_16_1_param : vec4f) -> tint_symbol_15_out {
  tint_symbol_7_3 = tint_symbol_7_3_param;
  tint_symbol_16_1 = tint_symbol_16_1_param;
  tint_symbol_15_1();
  return tint_symbol_15_out(value);
}
