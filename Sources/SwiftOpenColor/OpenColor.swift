import UIKit
import SwiftUI

public enum OpenColor: UInt, CaseIterable {
  case gray0 = 0xf8f9fa
  case gray1 = 0xf1f3f5
  case gray2 = 0xe9ecef
  case gray3 = 0xdee2e6
  case gray4 = 0xced4da
  case gray5 = 0xadb5bd
  case gray6 = 0x868e96
  case gray7 = 0x495057
  case gray8 = 0x343a40
  case gray9 = 0x212529

  case red0 = 0xfff5f5
  case red1 = 0xffe3e3
  case red2 = 0xffc9c9
  case red3 = 0xffa8a8
  case red4 = 0xff8787
  case red5 = 0xff6b6b
  case red6 = 0xfa5252
  case red7 = 0xf03e3e
  case red8 = 0xe03131
  case red9 = 0xc92a2a

  case pink0 = 0xfff0f6
  case pink1 = 0xffdeeb
  case pink2 = 0xfcc2d7
  case pink3 = 0xfaa2c1
  case pink4 = 0xf783ac
  case pink5 = 0xf06595
  case pink6 = 0xe64980
  case pink7 = 0xd6336c
  case pink8 = 0xc2255c
  case pink9 = 0xa61e4d

  case grape0 = 0xf8f0fc
  case grape1 = 0xf3d9fa
  case grape2 = 0xeebefa
  case grape3 = 0xe599f7
  case grape4 = 0xda77f2
  case grape5 = 0xcc5de8
  case grape6 = 0xbe4bdb
  case grape7 = 0xae3ec9
  case grape8 = 0x9c36b5
  case grape9 = 0x862e9c

  case violet0 = 0xf3f0ff
  case violet1 = 0xe5dbff
  case violet2 = 0xd0bfff
  case violet3 = 0xb197fc
  case violet4 = 0x9775fa
  case violet5 = 0x845ef7
  case violet6 = 0x7950f2
  case violet7 = 0x7048e8
  case violet8 = 0x6741d9
  case violet9 = 0x5f3dc4

  case indigo0 = 0xedf2ff
  case indigo1 = 0xdbe4ff
  case indigo2 = 0xbac8ff
  case indigo3 = 0x91a7ff
  case indigo4 = 0x748ffc
  case indigo5 = 0x5c7cfa
  case indigo6 = 0x4c6ef5
  case indigo7 = 0x4263eb
  case indigo8 = 0x3b5bdb
  case indigo9 = 0x364fc7

  case blue0 = 0xe7f5ff
  case blue1 = 0xd0ebff
  case blue2 = 0xa5d8ff
  case blue3 = 0x74c0fc
  case blue4 = 0x4dabf7
  case blue5 = 0x339af0
  case blue6 = 0x228be6
  case blue7 = 0x1c7ed6
  case blue8 = 0x1971c2
  case blue9 = 0x1864ab

  case cyan0 = 0xe3fafc
  case cyan1 = 0xc5f6fa
  case cyan2 = 0x99e9f2
  case cyan3 = 0x66d9e8
  case cyan4 = 0x3bc9db
  case cyan5 = 0x22b8cf
  case cyan6 = 0x15aabf
  case cyan7 = 0x1098ad
  case cyan8 = 0x0c8599
  case cyan9 = 0x0b7285

  case teal0 =  0xe6fcf5
  case teal1 =  0xc3fae8
  case teal2 =  0x96f2d7
  case teal3 =  0x63e6be
  case teal4 =  0x38d9a9
  case teal5 =  0x20c997
  case teal6 =  0x12b886
  case teal7 =  0x0ca678
  case teal8 =  0x099268
  case teal9 =  0x087f5b

  case green0 = 0xebfbee
  case green1 = 0xd3f9d8
  case green2 = 0xb2f2bb
  case green3 = 0x8ce99a
  case green4 = 0x69db7c
  case green5 = 0x51cf66
  case green6 = 0x40c057
  case green7 = 0x37b24d
  case green8 = 0x2f9e44
  case green9 = 0x2b8a3e

  case lime0 = 0xf4fce3
  case lime1 = 0xe9fac8
  case lime2 = 0xd8f5a2
  case lime3 = 0xc0eb75
  case lime4 = 0xa9e34b
  case lime5 = 0x94d82d
  case lime6 = 0x82c91e
  case lime7 = 0x74b816
  case lime8 = 0x66a80f
  case lime9 = 0x5c940d

  case yellow0 = 0xfff9db
  case yellow1 = 0xfff3bf
  case yellow2 = 0xffec99
  case yellow3 = 0xffe066
  case yellow4 = 0xffd43b
  case yellow5 = 0xfcc419
  case yellow6 = 0xfab005
  case yellow7 = 0xf59f00
  case yellow8 = 0xf08c00
  case yellow9 = 0xe67700

  case orange0 = 0xfff4e6
  case orange1 = 0xffe8cc
  case orange2 = 0xffd8a8
  case orange3 = 0xffc078
  case orange4 = 0xffa94d
  case orange5 = 0xff922b
  case orange6 = 0xfd7e14
  case orange7 = 0xf76707
  case orange8 = 0xe8590c
  case orange9 = 0xd9480f

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
    let rgbValue = openColor.rawValue
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
