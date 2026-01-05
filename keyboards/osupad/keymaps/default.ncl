// keyboards/osupad/default.ncl

// 1. 导入 FAK 核心库 (路径需根据实际情况调整)
let { tap, hold, td, combo, encoder, .. } = import "fak/keycode.ncl" in

// 2. 导入刚才写的硬件定义文件
let base_keyboard = import "keyboards/osupad/keyboard.ncl" in

// 3. 使用 '&' 符号将硬件定义与键位融合
base_keyboard & {
  
  // === 按键逻辑层 ===
  layout = [
    [
      // 必须严格对应 keyboard.ncl 中 direct_pins 的顺序
      fak.key.D,      // Key 1 (P1.7)
      fak.key.F,      // Key 2 (P1.6)
      fak.key.J,      // Key 3 (P1.5)
      fak.key.K,      // Key 4 (P1.4)
      fak.key.MUTE,   // Enc Press (P3.0) -> 静音
    ],
  ],

  // === 编码器逻辑层 ===
  encoder_layout = [
    [
      // 顺时针: 音量+, 逆时针: 音量-
      { cw = fak.key.VOLU, ccw = fak.key.VOLD },
    ],
  ],
}