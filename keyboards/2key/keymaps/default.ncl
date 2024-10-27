let { tap, hold, td, combo, hid_codes, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let me = tap.custom.media in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in

# "cu" for custom keys. This is just a name, so it can be whatever you want.
let cu = {
  # Again, these are just names. They don't have to be 4-letter or capitalized.
  COPY = tap.reg.mod.lctl & kc.C,
  PSTE = tap.reg.mod.lctl & kc.V,
  CUT =  tap.reg.mod.lctl & kc.X,
  CLOS = tap.reg.mod.lalt & kc.F4,

  S1 = tap.reg.mod.lsft & kc.PSCR,
  S2 = tap.reg.mod.lalt & kc.PSCR,
} in

# Keymap definition
{
  virtual_keys = [],

  layers = [
    [ # Layer 0
      cu.S1, cu.S2,
    ]
  ]
}
