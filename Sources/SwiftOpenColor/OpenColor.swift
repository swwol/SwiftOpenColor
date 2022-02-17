import UIKit
import SwiftUI

public enum OpenColor: String, CaseIterable {
  case gray0 = "#f8f9fa"
  case gray1 = "#f1f3f5"
  case gray2 = "#e9ecef"
  case gray3 = "#dee2e6"
  case gray4 = "#ced4da"
  case gray5 = "#adb5bd"
  case gray6 = "#868e96"
  case gray7 = "#495057"
  case gray8 = "#343a40"
  case gray9 = "#212529"

  case red0 = "#fff5f5"
  case red1 = "#ffe3e3"
  case red2 = "#ffc9c9"
  case red3 = "#ffa8a8"
  case red4 = "#ff8787"
  case red5 = "#ff6b6b"
  case red6 = "#fa5252"
  case red7 = "#f03e3e"
  case red8 = "#e03131"
  case red9 = "#c92a2a"

  case pink0 = "#fff0f6"
  case pink1 = "#ffdeeb"
  case pink2 = "#fcc2d7"
  case pink3 = "#faa2c1"
  case pink4 = "#f783ac"
  case pink5 = "#f06595"
  case pink6 = "#e64980"
  case pink7 = "#d6336c"
  case pink8 = "#c2255c"
  case pink9 = "#a61e4d"

  case grape0 = "#f8f0fc"
  case grape1 = "#f3d9fa"
  case grape2 = "#eebefa"
  case grape3 = "#e599f7"
  case grape4 = "#da77f2"
  case grape5 = "#cc5de8"
  case grape6 = "#be4bdb"
  case grape7 = "#ae3ec9"
  case grape8 = "#9c36b5"
  case grape9 = "#862e9c"

  case violet0 = "#f3f0ff"
  case violet1 = "#e5dbff"
  case violet2 = "#d0bfff"
  case violet3 = "#b197fc"
  case violet4 = "#9775fa"
  case violet5 = "#845ef7"
  case violet6 = "#7950f2"
  case violet7 = "#7048e8"
  case violet8 = "#6741d9"
  case violet9 = "#5f3dc4"

  case indigo0 = "#edf2ff"
  case indigo1 = "#dbe4ff"
  case indigo2 = "#bac8ff"
  case indigo3 = "#91a7ff"
  case indigo4 = "#748ffc"
  case indigo5 = "#5c7cfa"
  case indigo6 = "#4c6ef5"
  case indigo7 = "#4263eb"
  case indigo8 = "#3b5bdb"
  case indigo9 = "#364fc7"

  case blue0 = "#e7f5ff"
  case blue1 = "#d0ebff"
  case blue2 = "#a5d8ff"
  case blue3 = "#74c0fc"
  case blue4 = "#4dabf7"
  case blue5 = "#339af0"
  case blue6 = "#228be6"
  case blue7 = "#1c7ed6"
  case blue8 = "#1971c2"
  case blue9 = "#1864ab"

  case cyan0 = "#e3fafc"
  case cyan1 = "#c5f6fa"
  case cyan2 = "#99e9f2"
  case cyan3 = "#66d9e8"
  case cyan4 = "#3bc9db"
  case cyan5 = "#22b8cf"
  case cyan6 = "#15aabf"
  case cyan7 = "#1098ad"
  case cyan8 = "#0c8599"
  case cyan9 = "#0b7285"

  case teal0 =  "#e6fcf5"
  case teal1 =  "#c3fae8"
  case teal2 =  "#96f2d7"
  case teal3 =  "#63e6be"
  case teal4 =  "#38d9a9"
  case teal5 =  "#20c997"
  case teal6 =  "#12b886"
  case teal7 =  "#0ca678"
  case teal8 =  "#099268"
  case teal9 =  "#087f5b"

  case green0 = "#ebfbee"
  case green1 = "#d3f9d8"
  case green2 = "#b2f2bb"
  case green3 = "#8ce99a"
  case green4 = "#69db7c"
  case green5 = "#51cf66"
  case green6 = "#40c057"
  case green7 = "#37b24d"
  case green8 = "#2f9e44"
  case green9 = "#2b8a3e"

  case lime0 = "#f4fce3"
  case lime1 = "#e9fac8"
  case lime2 = "#d8f5a2"
  case lime3 = "#c0eb75"
  case lime4 = "#a9e34b"
  case lime5 = "#94d82d"
  case lime6 = "#82c91e"
  case lime7 = "#74b816"
  case lime8 = "#66a80f"
  case lime9 = "#5c940d"

  case yellow0 = "#fff9db"
  case yellow1 = "#fff3bf"
  case yellow2 = "#ffec99"
  case yellow3 = "#ffe066"
  case yellow4 = "#ffd43b"
  case yellow5 = "#fcc419"
  case yellow6 = "#fab005"
  case yellow7 = "#f59f00"
  case yellow8 = "#f08c00"
  case yellow9 = "#e67700"

  case orange0 = "#fff4e6"
  case orange1 = "#ffe8cc"
  case orange2 = "#ffd8a8"
  case orange3 = "#ffc078"
  case orange4 = "#ffa94d"
  case orange5 = "#ff922b"
  case orange6 = "#fd7e14"
  case orange7 = "#f76707"
  case orange8 = "#e8590c"
  case orange9 = "#d9480f"

  public var uiColor: UIColor {
    hexStringToUIColor(hex: rawValue)
  }

  @available(iOS 15, *)
  public var color: Color {
    .init(uiColor: uiColor)
  }

  private func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    if (cString.hasPrefix("#")) {
      cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
      return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
      red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
      alpha: CGFloat(1.0)
    )
  }
}
