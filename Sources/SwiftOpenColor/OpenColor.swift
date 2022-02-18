import UIKit
import SwiftUI

public enum OpenColor: String, CaseIterable {
  case gray0 = "f8f9fa"
  case gray1 = "f1f3f5"
  case gray2 = "e9ecef"
  case gray3 = "dee2e6"
  case gray4 = "ced4da"
  case gray5 = "adb5bd"
  case gray6 = "868e96"
  case gray7 = "495057"
  case gray8 = "343a40"
  case gray9 = "212529"

  case red0 = "fff5f5"
  case red1 = "ffe3e3"
  case red2 = "ffc9c9"
  case red3 = "ffa8a8"
  case red4 = "ff8787"
  case red5 = "ff6b6b"
  case red6 = "fa5252"
  case red7 = "f03e3e"
  case red8 = "e03131"
  case red9 = "c92a2a"

  case pink0 = "fff0f6"
  case pink1 = "ffdeeb"
  case pink2 = "fcc2d7"
  case pink3 = "faa2c1"
  case pink4 = "f783ac"
  case pink5 = "f06595"
  case pink6 = "e64980"
  case pink7 = "d6336c"
  case pink8 = "c2255c"
  case pink9 = "a61e4d"

  case grape0 = "f8f0fc"
  case grape1 = "f3d9fa"
  case grape2 = "eebefa"
  case grape3 = "e599f7"
  case grape4 = "da77f2"
  case grape5 = "cc5de8"
  case grape6 = "be4bdb"
  case grape7 = "ae3ec9"
  case grape8 = "9c36b5"
  case grape9 = "862e9c"

  case violet0 = "f3f0ff"
  case violet1 = "e5dbff"
  case violet2 = "d0bfff"
  case violet3 = "b197fc"
  case violet4 = "9775fa"
  case violet5 = "845ef7"
  case violet6 = "7950f2"
  case violet7 = "7048e8"
  case violet8 = "6741d9"
  case violet9 = "5f3dc4"

  case indigo0 = "edf2ff"
  case indigo1 = "dbe4ff"
  case indigo2 = "bac8ff"
  case indigo3 = "91a7ff"
  case indigo4 = "748ffc"
  case indigo5 = "5c7cfa"
  case indigo6 = "4c6ef5"
  case indigo7 = "4263eb"
  case indigo8 = "3b5bdb"
  case indigo9 = "364fc7"

  case blue0 = "e7f5ff"
  case blue1 = "d0ebff"
  case blue2 = "a5d8ff"
  case blue3 = "74c0fc"
  case blue4 = "4dabf7"
  case blue5 = "339af0"
  case blue6 = "228be6"
  case blue7 = "1c7ed6"
  case blue8 = "1971c2"
  case blue9 = "1864ab"

  case cyan0 = "e3fafc"
  case cyan1 = "c5f6fa"
  case cyan2 = "99e9f2"
  case cyan3 = "66d9e8"
  case cyan4 = "3bc9db"
  case cyan5 = "22b8cf"
  case cyan6 = "15aabf"
  case cyan7 = "1098ad"
  case cyan8 = "0c8599"
  case cyan9 = "0b7285"

  case teal0 =  "e6fcf5"
  case teal1 =  "c3fae8"
  case teal2 =  "96f2d7"
  case teal3 =  "63e6be"
  case teal4 =  "38d9a9"
  case teal5 =  "20c997"
  case teal6 =  "12b886"
  case teal7 =  "0ca678"
  case teal8 =  "099268"
  case teal9 =  "087f5b"

  case green0 = "ebfbee"
  case green1 = "d3f9d8"
  case green2 = "b2f2bb"
  case green3 = "8ce99a"
  case green4 = "69db7c"
  case green5 = "51cf66"
  case green6 = "40c057"
  case green7 = "37b24d"
  case green8 = "2f9e44"
  case green9 = "2b8a3e"

  case lime0 = "f4fce3"
  case lime1 = "e9fac8"
  case lime2 = "d8f5a2"
  case lime3 = "c0eb75"
  case lime4 = "a9e34b"
  case lime5 = "94d82d"
  case lime6 = "82c91e"
  case lime7 = "74b816"
  case lime8 = "66a80f"
  case lime9 = "5c940d"

  case yellow0 = "fff9db"
  case yellow1 = "fff3bf"
  case yellow2 = "ffec99"
  case yellow3 = "ffe066"
  case yellow4 = "ffd43b"
  case yellow5 = "fcc419"
  case yellow6 = "fab005"
  case yellow7 = "f59f00"
  case yellow8 = "f08c00"
  case yellow9 = "e67700"

  case orange0 = "fff4e6"
  case orange1 = "ffe8cc"
  case orange2 = "ffd8a8"
  case orange3 = "ffc078"
  case orange4 = "ffa94d"
  case orange5 = "ff922b"
  case orange6 = "fd7e14"
  case orange7 = "f76707"
  case orange8 = "e8590c"
  case orange9 = "d9480f"

  public var uiColor: UIColor {
    UIColor(openColor: self)
  }

  @available(iOS 15, *)
  public var color: Color {
    Color(openColor: self)
  }
}

extension UIColor {
  public convenience init(openColor: OpenColor) {
    let hexString = openColor.rawValue.uppercased()
    var rgbValue:UInt64 = 0
    Scanner(string: hexString).scanHexInt64(&rgbValue)
    self.init(red:  CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
              green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
              blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
              alpha: 1.0)
  }

  public static let oc_gray0: UIColor = UIColor(openColor: .gray0)
  public static let oc_gray1: UIColor = UIColor(openColor: .gray1)
  public static let oc_gray2: UIColor = UIColor(openColor: .gray2)
  public static let oc_gray3: UIColor = UIColor(openColor: .gray3)
  public static let oc_gray4: UIColor = UIColor(openColor: .gray4)
  public static let oc_gray5: UIColor = UIColor(openColor: .gray5)
  public static let oc_gray6: UIColor = UIColor(openColor: .gray6)
  public static let oc_gray7: UIColor = UIColor(openColor: .gray7)
  public static let oc_gray8: UIColor = UIColor(openColor: .gray8)
  public static let oc_gray9: UIColor = UIColor(openColor: .gray9)

  public static let oc_red0: UIColor = UIColor(openColor: .red0)
  public static let oc_red1: UIColor = UIColor(openColor: .red1)
  public static let oc_red2: UIColor = UIColor(openColor: .red2)
  public static let oc_red3: UIColor = UIColor(openColor: .red3)
  public static let oc_red4: UIColor = UIColor(openColor: .red4)
  public static let oc_red5: UIColor = UIColor(openColor: .red5)
  public static let oc_red6: UIColor = UIColor(openColor: .red6)
  public static let oc_red7: UIColor = UIColor(openColor: .red7)
  public static let oc_red8: UIColor = UIColor(openColor: .red8)
  public static let oc_red9: UIColor = UIColor(openColor: .red9)

  public static let oc_pink0: UIColor = UIColor(openColor: .pink0)
  public static let oc_pink1: UIColor = UIColor(openColor: .pink1)
  public static let oc_pink2: UIColor = UIColor(openColor: .pink2)
  public static let oc_pink3: UIColor = UIColor(openColor: .pink3)
  public static let oc_pink4: UIColor = UIColor(openColor: .pink4)
  public static let oc_pink5: UIColor = UIColor(openColor: .pink5)
  public static let oc_pink6: UIColor = UIColor(openColor: .pink6)
  public static let oc_pink7: UIColor = UIColor(openColor: .pink7)
  public static let oc_pink8: UIColor = UIColor(openColor: .pink8)
  public static let oc_pink9: UIColor = UIColor(openColor: .pink9)

  public static let oc_grape0: UIColor = UIColor(openColor: .grape0)
  public static let oc_grape1: UIColor = UIColor(openColor: .grape1)
  public static let oc_grape2: UIColor = UIColor(openColor: .grape2)
  public static let oc_grape3: UIColor = UIColor(openColor: .grape3)
  public static let oc_grape4: UIColor = UIColor(openColor: .grape4)
  public static let oc_grape5: UIColor = UIColor(openColor: .grape5)
  public static let oc_grape6: UIColor = UIColor(openColor: .grape6)
  public static let oc_grape7: UIColor = UIColor(openColor: .grape7)
  public static let oc_grape8: UIColor = UIColor(openColor: .grape8)
  public static let oc_grape9: UIColor = UIColor(openColor: .grape9)

  public static let oc_violet0: UIColor = UIColor(openColor: .violet0)
  public static let oc_violet1: UIColor = UIColor(openColor: .violet1)
  public static let oc_violet2: UIColor = UIColor(openColor: .violet2)
  public static let oc_violet3: UIColor = UIColor(openColor: .violet3)
  public static let oc_violet4: UIColor = UIColor(openColor: .violet4)
  public static let oc_violet5: UIColor = UIColor(openColor: .violet5)
  public static let oc_violet6: UIColor = UIColor(openColor: .violet6)
  public static let oc_violet7: UIColor = UIColor(openColor: .violet7)
  public static let oc_violet8: UIColor = UIColor(openColor: .violet8)
  public static let oc_violet9: UIColor = UIColor(openColor: .violet9)

  public static let oc_indigo0: UIColor = UIColor(openColor: .indigo0)
  public static let oc_indigo1: UIColor = UIColor(openColor: .indigo1)
  public static let oc_indigo2: UIColor = UIColor(openColor: .indigo2)
  public static let oc_indigo3: UIColor = UIColor(openColor: .indigo3)
  public static let oc_indigo4: UIColor = UIColor(openColor: .indigo4)
  public static let oc_indigo5: UIColor = UIColor(openColor: .indigo5)
  public static let oc_indigo6: UIColor = UIColor(openColor: .indigo6)
  public static let oc_indigo7: UIColor = UIColor(openColor: .indigo7)
  public static let oc_indigo8: UIColor = UIColor(openColor: .indigo8)
  public static let oc_indigo9: UIColor = UIColor(openColor: .indigo9)

  public static let oc_blue0: UIColor = UIColor(openColor: .blue0)
  public static let oc_blue1: UIColor = UIColor(openColor: .blue1)
  public static let oc_blue2: UIColor = UIColor(openColor: .blue2)
  public static let oc_blue3: UIColor = UIColor(openColor: .blue3)
  public static let oc_blue4: UIColor = UIColor(openColor: .blue4)
  public static let oc_blue5: UIColor = UIColor(openColor: .blue5)
  public static let oc_blue6: UIColor = UIColor(openColor: .blue6)
  public static let oc_blue7: UIColor = UIColor(openColor: .blue7)
  public static let oc_blue8: UIColor = UIColor(openColor: .blue8)
  public static let oc_blue9: UIColor = UIColor(openColor: .blue9)

  public static let oc_cyan0: UIColor = UIColor(openColor: .cyan0)
  public static let oc_cyan1: UIColor = UIColor(openColor: .cyan1)
  public static let oc_cyan2: UIColor = UIColor(openColor: .cyan2)
  public static let oc_cyan3: UIColor = UIColor(openColor: .cyan3)
  public static let oc_cyan4: UIColor = UIColor(openColor: .cyan4)
  public static let oc_cyan5: UIColor = UIColor(openColor: .cyan5)
  public static let oc_cyan6: UIColor = UIColor(openColor: .cyan6)
  public static let oc_cyan7: UIColor = UIColor(openColor: .cyan7)
  public static let oc_cyan8: UIColor = UIColor(openColor: .cyan8)
  public static let oc_cyan9: UIColor = UIColor(openColor: .cyan9)

  public static let oc_teal0: UIColor = UIColor(openColor: .teal0)
  public static let oc_teal1: UIColor = UIColor(openColor: .teal1)
  public static let oc_teal2: UIColor = UIColor(openColor: .teal2)
  public static let oc_teal3: UIColor = UIColor(openColor: .teal3)
  public static let oc_teal4: UIColor = UIColor(openColor: .teal4)
  public static let oc_teal5: UIColor = UIColor(openColor: .teal5)
  public static let oc_teal6: UIColor = UIColor(openColor: .teal6)
  public static let oc_teal7: UIColor = UIColor(openColor: .teal7)
  public static let oc_teal8: UIColor = UIColor(openColor: .teal8)
  public static let oc_teal9: UIColor = UIColor(openColor: .teal9)

  public static let oc_green0: UIColor = UIColor(openColor: .green0)
  public static let oc_green1: UIColor = UIColor(openColor: .green1)
  public static let oc_green2: UIColor = UIColor(openColor: .green2)
  public static let oc_green3: UIColor = UIColor(openColor: .green3)
  public static let oc_green4: UIColor = UIColor(openColor: .green4)
  public static let oc_green5: UIColor = UIColor(openColor: .green5)
  public static let oc_green6: UIColor = UIColor(openColor: .green6)
  public static let oc_green7: UIColor = UIColor(openColor: .green7)
  public static let oc_green8: UIColor = UIColor(openColor: .green8)
  public static let oc_green9: UIColor = UIColor(openColor: .green9)

  public static let oc_lime0: UIColor = UIColor(openColor: .lime0)
  public static let oc_lime1: UIColor = UIColor(openColor: .lime1)
  public static let oc_lime2: UIColor = UIColor(openColor: .lime2)
  public static let oc_lime3: UIColor = UIColor(openColor: .lime3)
  public static let oc_lime4: UIColor = UIColor(openColor: .lime4)
  public static let oc_lime5: UIColor = UIColor(openColor: .lime5)
  public static let oc_lime6: UIColor = UIColor(openColor: .lime6)
  public static let oc_lime7: UIColor = UIColor(openColor: .lime7)
  public static let oc_lime8: UIColor = UIColor(openColor: .lime8)
  public static let oc_lime9: UIColor = UIColor(openColor: .lime9)

  public static let oc_yellow0: UIColor = UIColor(openColor: .yellow0)
  public static let oc_yellow1: UIColor = UIColor(openColor: .yellow1)
  public static let oc_yellow2: UIColor = UIColor(openColor: .yellow2)
  public static let oc_yellow3: UIColor = UIColor(openColor: .yellow3)
  public static let oc_yellow4: UIColor = UIColor(openColor: .yellow4)
  public static let oc_yellow5: UIColor = UIColor(openColor: .yellow5)
  public static let oc_yellow6: UIColor = UIColor(openColor: .yellow6)
  public static let oc_yellow7: UIColor = UIColor(openColor: .yellow7)
  public static let oc_yellow8: UIColor = UIColor(openColor: .yellow8)
  public static let oc_yellow9: UIColor = UIColor(openColor: .yellow9)

  public static let oc_orange0: UIColor = UIColor(openColor: .orange0)
  public static let oc_orange1: UIColor = UIColor(openColor: .orange1)
  public static let oc_orange2: UIColor = UIColor(openColor: .orange2)
  public static let oc_orange3: UIColor = UIColor(openColor: .orange3)
  public static let oc_orange4: UIColor = UIColor(openColor: .orange4)
  public static let oc_orange5: UIColor = UIColor(openColor: .orange5)
  public static let oc_orange6: UIColor = UIColor(openColor: .orange6)
  public static let oc_orange7: UIColor = UIColor(openColor: .orange7)
  public static let oc_orange8: UIColor = UIColor(openColor: .orange8)
  public static let oc_orange9: UIColor = UIColor(openColor: .orange9)
}

@available(iOS 15, *)
extension Color {
  public init(openColor: OpenColor) {
    self.init(uiColor: UIColor(openColor: openColor))
  }
}
