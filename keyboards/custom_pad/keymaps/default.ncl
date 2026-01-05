let { tap, hold, td, combo, encoder, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let me = tap.custom.media in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

# Keymap definition
{
  virtual_keys = [
    encoder.ccw 0,
    encoder.cw 0,
  ],

  layers = [
    [
      kc.D,      # 物理键 0
      kc.F,      # 物理键 1
      kc.J,      # 物理键 2
      kc.K,      # 物理键 3
      me.MUTE,   # 物理键 4
      TTTT,      # 虚拟键 0 (编码器逆时针)
      TTTT,      # 虚拟键 1 (编码器顺时针)
    ],
  ]
}
