//
//  UICustomColors.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 03/09/2024.
//

import UIKit

public extension UIColor {
    // MARK: - Luna primary colours
    /// UIColor(hex: 0x0c0c0c)
    static let lunaBlack = #colorLiteral(red: 0.04705882353, green: 0.04705882353, blue: 0.04705882353, alpha: 1)
    /// UIColor(hex: 0x4c4c4c)
    static let lunaGreyDark = #colorLiteral(red: 0.2980392157, green: 0.2980392157, blue: 0.2980392157, alpha: 1)
    /// UIColor(hex: 0x8e8e8e)
    static let lunaWarmGrey = #colorLiteral(red: 0.5568627451, green: 0.5568627451, blue: 0.5568627451, alpha: 1)
    /// UIColor(hex: 0xf6f6f6)
    static let lunaGreyVeryLight = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)

    // MARK: - Luna secondary colours
    
    /// UIColor(hex: 0x0c0c0c)
    static let lunaBlackDimmed = lunaBlack.withAlphaComponent(0.5)
    /// UIColor(hex: 0xf6f6f6)
    static let lunaBackground = lunaGreyVeryLight
    // MARK: - SYRUP COLOURS
    // MARK: - MONOCHROME ⬛️
    /// RGB: (165, 160, 172) / Hex: #A5A0AC
    static let inactiveGrey = #colorLiteral(red: 0.6470588235, green: 0.6274509804, blue: 0.6745098039, alpha: 1)
    /// RGB: (171, 166, 182) / Hex: #ABA6B6 - with alpha component 0.05
    static let nectarDisabledCard = UIColor.nectarLightGrey.withAlphaComponent(0.05)
    /// RGB: (171, 166, 182) / Hex: #ABA6B6
    static let nectarLightGrey = #colorLiteral(red: 0.6705882353, green: 0.6509803922, blue: 0.7137254902, alpha: 1)
    /// RGB: (151, 146, 166) / Hex: #9792A6
    static let nectarGrey = #colorLiteral(red: 0.5921568627, green: 0.5725490196, blue: 0.6509803922, alpha: 1)
    /// RGB: (125, 120, 133) / Hex: #7D7885
    static let nectarDarkGrey = #colorLiteral(red: 0.4901960784, green: 0.4705882353, blue: 0.5215686275, alpha: 1)
    /// RGB: (103, 107, 128) / Hex: #676B80
    static let nectarGrey2 = #colorLiteral(red: 0.4039215686, green: 0.4196078431, blue: 0.5019607843, alpha: 1)
    /// RGB: (0, 0, 0) / Hex: #000000
    static let syrupMonochromeBlack = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    /// RGB: (38, 33, 47) / Hex: #26212F
    static let syrupMonochromeDarker = #colorLiteral(red: 0.1490196078, green: 0.1294117647, blue: 0.1843137255, alpha: 1)
    /// RGB: (63, 56, 76) / Hex: #3F384C
    static let syrupMonochromeDark = #colorLiteral(red: 0.2470588235, green: 0.2196078431, blue: 0.2980392157, alpha: 1)
    /// RGB: (114, 106, 130) / Hex: #726A82
    static let syrupMonochromeMedium = #colorLiteral(red: 0.4470588235, green: 0.4156862745, blue: 0.5098039216, alpha: 1)
    /// RGB: (216, 212, 224) / Hex: #D8D4E0
    static let syrupMonochromeLight = #colorLiteral(red: 0.8470588235, green: 0.831372549, blue: 0.8784313725, alpha: 1)
    /// RGB: (242, 241, 245) / Hex: #F2F1F5
    static let syrupMonochromeLighter = #colorLiteral(red: 0.9490196078, green: 0.9450980392, blue: 0.9607843137, alpha: 1)
    /// RGB: (255, 255, 255)/ / Hex: #FFFFFF
    static let syrupMonochromeWhite = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    /// RGB: (51, 45, 62) / Hex: #332D3E
    static let syrupMonochrome80 = #colorLiteral(red: 0.2048701644, green: 0.1754247844, blue: 0.2482514679, alpha: 1)
    /// RGB: 56.0, 48.0, 67.0 / Hex: #3F384C
    static let syrupMonocromSecondary = #colorLiteral(red: 0.2196078431, green: 0.1882352941, blue: 0.262745098, alpha: 1)
    
    // MARK: - Monochrome - Dynamic Backgrounds ⬛️
    
    /// Dynamic color
    /// - Light color: syrupMonochromeLight
    /// - Dark color: syrupMonochromeMedium
    static var syrupMonochromeLightDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeLight : .syrupMonochromeMedium
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupMonochromeWhite
    /// - Dark color: syrupMonochrome80
    static var syrupMonochromeWhiteDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeWhite : .syrupMonochrome80
        }
    }()
    
    /// Dynamic color
    /// - Light color: nectarGrey2
    /// - Dark color: syrupMonochromeWhite
    static var syrupGrey2Dynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .nectarGrey2 : .syrupMonochromeWhite
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupMonochromeMedium
    /// - Dark color: syrupMonochromeLight
    static var syrupMonochromeMediumDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeMedium : .syrupMonochromeLight
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupMonochromeLighter
    /// - Dark color: syrupMonochrome80
    static var syrupMonochromeLighterDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeLighter : .syrupMonochrome80
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupMonochromeDark
    /// - Dark color: syrupMonochromeLight
    static var syrupMonochromeDarkDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeDark : .syrupMonochromeLight
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupMonochromeBlack
    /// - Dark color: syrupMonochromeWhite
    static var syrupMonochromeBlackDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeBlack : .syrupMonochromeWhite
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupMonochromeWhite
    /// - Dark color: syrupMonochromeWhite
    static var syrupMonochromePodBackgroundDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeWhite : .syrupMonochromeDark
        }
    }()
  
    // MARK: - Monochrome - Dynamic Typography ⬛️
    
    /// Dynamic typography color
    /// - Light color: syrupMonochromeDarker
    /// - Dark color: syrupMonochromeWhite
    static var syrupMonochromeDarkerDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeDarker : .syrupMonochromeWhite
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupMonochromeDark
    /// - Dark color: syrupMonochromeLighter
    static var syrupMonochromeDarkDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeDark : .syrupMonochromeLighter
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupMonochromeMedium
    /// - Dark color: syrupMonochromeLight
    static var syrupMonochromeMediumDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeMedium : .syrupMonochromeLight
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupMonochromeWhite
    /// - Dark color: syrupMonochromeDarker
    static var syrupMonochromeWhiteDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeWhite : .syrupMonochromeDarker
        }
    }()

    /// Dynamic color
    /// - Light color: syrupMonochromeLighter
    /// - Dark color: syrupMonochrome80
    static var syrupMonochromeLighterDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupMonochromeLighter : .syrupMonochromeDarker
        }
    }()
    
    // MARK: - Putty ⬜️
    
    /// RGB: (243, 240, 236) / Hex: #F3F0EC
    static let syrupPuttyBase = #colorLiteral(red: 0.9529411765, green: 0.9411764706, blue: 0.9254901961, alpha: 1)
    /// RGB: (13, 11, 17) / Hex: #0D0B11
    static let syrupMonochrome95 = #colorLiteral(red: 0.05098039216, green: 0.0431372549, blue: 0.06666666667, alpha: 1)
    
    // MARK: - Putty - Dynamic Backgrounds ⬜️
    /// Background colour (light: syrupPuttyBase/dark: syrupMonochrome95)
    static var syrupPuttyBaseDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPuttyBase : .syrupMonochrome95
        }
    }()
    
    // MARK: - PURPLE 🟪
    
    /// Primary Color
    /// RGB: (130, 35, 250) / Hex: #8223FA
    static let syrupPurpleBase = #colorLiteral(red: 0.5098039216, green: 0.137254902, blue: 0.9803921569, alpha: 1)
    /// RGB: (56, 0, 92) / Hex: #38005C
    static let syrupPurpleDarkest = #colorLiteral(red: 0.2196078431, green: 0, blue: 0.3607843137, alpha: 1)
    /// RGB: (74, 9, 131) / Hex: #4A0983
    static let syrupPurpleDarker = #colorLiteral(red: 0.2901960784, green: 0.03529411765, blue: 0.5137254902, alpha: 1)
    /// RGB: (108, 24, 203) / Hex: #6C18CB
    static let syrupPurpleDark = #colorLiteral(red: 0.4235294118, green: 0.09411764706, blue: 0.7960784314, alpha: 1)
    /// RGB: (153, 75, 251) / Hex: #994BFB
    static let syrupPurpleLight = #colorLiteral(red: 0.6, green: 0.2941176471, blue: 0.9843137255, alpha: 1)
    /// RGB: (198, 154, 253) / Hex: #C69AFD
    static let syrupPurpleLighter = #colorLiteral(red: 0.7764705882, green: 0.6039215686, blue: 0.9921568627, alpha: 1)
    /// RGB: 243.0, 233.0, 255.0 / Hex: #F3E9FF
    static let syrupPurpleLightest = #colorLiteral(red: 0.9529411765, green: 0.9137254902, blue: 1, alpha: 1)
    /// RGB:  (42, 34, 54) / Hex: #2A2236
    static let syrupPurpleStrokeBackgroundDark = #colorLiteral(red: 0.1647058824, green: 0.1333333333, blue: 0.2117647059, alpha: 1)

    // MARK: - Purple - Dynamic Backgrounds 🟪
    
    /// Dynamic color - Primary color of the app
    /// - Light color: syrupPuttyBase
    /// - Dark color: syrupPurpleLighter
    static var syrupPurpleBaseDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleBase : .syrupPurpleLighter
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupPurpleDark
    /// - Dark color: syrupPurpleLight
    /// - Observations: we may want to rever the dark mode colour to syrupPurpleLighter to match Figma and add one exception
    /// for in the PrimaryButton highlight state
    static var syrupPurpleDarkDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDark : .syrupPurpleLight
        }
    }()
    
    static var syrupPurpleDarkerDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDarker : .syrupPurpleLighter
        }
    }()
    
    static var syrupPurpleDarkestDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDarkest : .syrupMonochromeWhite
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupPurpleLighter
    /// - Dark color: syrupPurpleDark
    static var syrupPurpleLighterDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleLighter : .syrupPurpleDark
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupPurpleLightest
    /// - Dark color: syrupPurpleDarker
    static var syrupPurpleLightestDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleLightest : .syrupPurpleDarker
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupPurpleLightest
    /// - Dark color: syrupPurpleDarker
    static var trackerCampaignPurpleProgressCircleColorDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleLighter : .syrupPurpleDarkest
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupPurpleLighter
    /// - Dark color: syrupPurpleBase
    static var strokBackGroundPurpleDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleLightest : .syrupPurpleStrokeBackgroundDark
        }
    }()
    /// Dynamic color
    /// - Light color: syrupPurpleDarker
    /// - Dark color: syrupPurpleLighter
    static var strokBackGroundPurpleProgressDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDarker.withAlphaComponent(0.40) : .syrupPurpleLightest
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupPurpleBase
    /// - Dark color: syrupPurpleLighter
    static var strokFillPurpleDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleBase : .syrupPurpleLighter
        }
    }()
    
    // MARK: - Purple - Dynamic Typography 🟪
    /// - Light color: syrupPurpleDarker.withAlphaComponent(0.40)
    /// - Dark color: syrupPurpleLightest
    static var strokeBackGroundPurpleProgressDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDarker.withAlphaComponent(0.40) : .syrupPurpleLightest
        }
    }()
    /// Dynamic typography color - Primary color of the app
    /// - Light color: syrupPuttyBase
    /// - Dark color: syrupPurpleLighter
    static var syrupPurpleBaseDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleBase : .syrupPurpleLighter
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupPurpleDarker
    /// - Dark color: syrupMonochromeWhite
    static var syrupPurpleDarkestDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDarkest : .syrupMonochromeWhite
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupPurpleDarker
    /// - Dark color: syrupPurpleLighter
    static var syrupPurpleDarkerDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleDarker : .syrupPurpleLighter
        }
    }()
    
    /// Dynamic typography color
    /// - Light color: syrupPurpleLightest
    /// - Dark color: syrupPurpleDarkest
    static var syrupPurpleLightestDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupPurpleLightest : .syrupPurpleDarkest
        }
    }()
    
    // MARK: - RED 🟥
    /// RGB: ( 106, 0, 28) / HEX: #6A001C
    static let syrupDarkRed = #colorLiteral(red: 0.4156862745, green: 0, blue: 0.1098039216, alpha: 1)
    /// RGB: (210 ,76, 64)  / Hex: #D24C40
    static let nectarOrangeLight = #colorLiteral(red: 0.8235294118, green: 0.2980392157, blue: 0.2509803922, alpha: 1)
    /// RGB:  (142 ,48, 9) / Hex: #8E3009
    static let nectarRedDark = #colorLiteral(red: 0.5568627451, green: 0.1882352941, blue: 0.03529411765, alpha: 1)
    /// RGB: ( 77, 1, 11) / Hex: #4D010B
    static let nectarTertiaryRed = #colorLiteral(red: 0.3019607843, green: 0.003921568627, blue: 0.0431372549, alpha: 1)
    /// RGB: ( 255, 94, 74) / Hex: #FF5E4A
    static let nectarRed = #colorLiteral(red: 1, green: 0.368627451, blue: 0.2901960784, alpha: 1)
    /// RGB: (255, 109, 79) / Hex: #FF6D4F
    static let syrupRedBase = #colorLiteral(red: 1, green: 0.4274509804, blue: 0.3098039216, alpha: 1)
    /// RGB: (95, 0, 25)  / Hex: #5F0019
    static let syrupRedDarkest = #colorLiteral(red: 0.3725490196, green: 0, blue: 0.09803921569, alpha: 1)
    /// RGB: (135.0, 27.0, 38.0) / Hex: #871B26
    static let syrupRedDarker = #colorLiteral(red: 0.5294117647, green: 0.1058823529, blue: 0.1490196078, alpha: 1)
    /// RGB:  (215, 82, 65) / Hex: #D75241
    static let syrupRedDark = #colorLiteral(red: 0.8431372549, green: 0.3215686275, blue: 0.2549019608, alpha: 1)
    /// RGB:  (215, 82, 65) / Hex: #FF876F
    static let syrupRedLight = #colorLiteral(red: 1, green: 0.5294117647, blue: 0.4352941176, alpha: 1)
    /// RGB: (255, 240, 237) / Hex: #FFF0ED
    static let syrupRedLightest = #colorLiteral(red: 1, green: 0.9411764706, blue: 0.9294117647, alpha: 1)
    /// RGB: (178, 6, 32) / Hex: #B20620
    static let syrupRedError = #colorLiteral(red: 0.6980392157, green: 0.02352941176, blue: 0.1254901961, alpha: 1)
    /// RGB: (178, 6, 32) / Hex: #FFA28E
    static let syrupRed35 = #colorLiteral(red: 1, green: 0.6352941176, blue: 0.5568627451, alpha: 1)
    /// RGB: (255, 188, 174) / Hex: #FFBCAE
    static let syrupRedLighter = #colorLiteral(red: 1, green: 0.737254902, blue: 0.6823529412, alpha: 1)
    
    // MARK: - Red - Dynamic Backgrounds 🟥
    
    /// Dynamic color
    /// - Light color: syrupRedError
    /// - Dark color: syrupRed35
    static var syrupRedErrorDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupRedError : .syrupRed35
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupRedBase
    /// - Dark color: syrupRed35
    static var syrupRedBaseDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupRedBase : .syrupRed35
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupRedBase
    /// - Dark color: syrupRed35
    static var syrupRedDarkerDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupRedDarker : .syrupRedLighter
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupRedDark
    /// - Dark color: .syrupDarkRed.withAlphaComponent(0.40)
    static var syrupRedStrokeBackgroundDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupRedDark :
                    .syrupDarkRed.withAlphaComponent(0.40)
        }
    }()
    
    // MARK: - Red - Dynamic Typography 🟥

    /// Dynamic color
    /// - Light color: syrupRedDarkest
    /// - Dark color: syrupRedDarkest
    static var syrupRedDarkestDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupRedDarkest : .syrupRedDarkest
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupRedDarkest
    /// - Dark color: syrupRedDarkest
    static var syrupRedDarkerDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupRedDarker : .syrupRed35
        }
    }()

    /// RGB: (240, 108, 0) / Hex: #F06C00
    static let syrupOrange = #colorLiteral(red: 0.9411764706, green: 0.4235294118, blue: 0, alpha: 1)

    // MARK: - YELLOW 🟨
    
    /// RGB: (86, 27, 0)  / Hex: #561B00
    static let nectarTertiaryYellow = #colorLiteral(red: 0.337254902, green: 0.1058823529, blue: 0, alpha: 1)
    /// RGB: (99, 31, 0)  / Hex: #631F00
    static let nectarBlackOnYellow = #colorLiteral(red: 0.3882352941, green: 0.1215686275, blue: 0, alpha: 1)
    /// RGB: (  255 185 0) / Hex: #FFB900
    static let nectarYellow = #colorLiteral(red: 1, green: 0.7254901961, blue: 0, alpha: 1)
    /// RGB: (255, 205, 0) / Hex: #FFCD00
    static let syrupYellowBase = #colorLiteral(red: 1, green: 0.8039215686, blue: 0, alpha: 1)
    /// RGB: (106, 42, 5) / Hex: #6A2A05
    static let syrupYellowDarkest = #colorLiteral(red: 0.4156862745, green: 0.1647058824, blue: 0.01960784314, alpha: 1)
    /// RGB: (143, 83, 4) / Hex: #8F5304
    static let syrupYellowDarker = #colorLiteral(red: 0.5607843137, green: 0.3254901961, blue: 0.01568627451, alpha: 1)
    /// RGB: (218, 164, 1) / Hex: #DAA401
    static let syrupYellowDark = #colorLiteral(red: 0.8549019608, green: 0.6431372549, blue: 0.003921568627, alpha: 1)
    /// RGB: (255, 214, 46) / Hex: #FFD62E
    static let syrupYellowLight = #colorLiteral(red: 1, green: 0.8392156863, blue: 0.1803921569, alpha: 1)
    /// RGB: (255, 232, 138) / Hex: #FFE88A
    static let syrupYellowLighter = #colorLiteral(red: 1, green: 0.9098039216, blue: 0.5411764706, alpha: 1)
    /// RGB: (255, 250, 230) / Hex: #FFFAE6
    static let syrupYellowLightest = #colorLiteral(red: 1, green: 0.9803921569, blue: 0.9019607843, alpha: 1)
    /// RGB: (255, 223, 92) / Hex: #FFDF5C
    static let syrupYellow35 = #colorLiteral(red: 1, green: 0.8745098039, blue: 0.3607843137, alpha: 1)
    
    // MARK: - Yellow - Dynamic Backgrounds 🟨
    
    /// Dynamic color
    /// - Light color: syrupYellowBase
    /// - Dark color: syrupYellow35
    static var syrupYellowBaseDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupYellowBase : .syrupYellow35
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupYellowBase
    /// - Dark color: syrupYellowLighter
    static var syrupStrokeFillYellowDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupYellowBase : .syrupYellowLighter
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupYellowDarker
    /// - Dark color: syrupYellowLighter
    static var syrupYellowDarkerDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupYellowDarker : .syrupYellowLighter
        }
    }()
    
    // MARK: - Yellow - Dynamic Typography 🟨
    /// Dynamic color
    /// - Light color: syrupYellowDarker
    /// - Dark color: syrupYellow35
    static var syrupYellowDarkerDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupYellowDarker : .syrupYellow35
        }
    }()
    
    // MARK: - GREEN 🟩
    /// RGB: (0, 56, 56) / Hex: 003838
    static let syrupBlackOnGreen = #colorLiteral(red: 0, green: 0.2196078431, blue: 0.2196078431, alpha: 1)
    /// RGB: (0, 217, 153) / Hex: #00D999
    static let syrupGreenBase = #colorLiteral(red: 0, green: 0.8509803922, blue: 0.6, alpha: 1)
    /// RGB: (0, 72, 81) / Hex: #004851
    static let syrupGreenDarkest = #colorLiteral(red: 0, green: 0.2823529412, blue: 0.3176470588, alpha: 1)
    /// RGB: (0, 108, 99) / Hex: #006C63
    static let syrupGreenDarker = #colorLiteral(red: 0, green: 0.4235294118, blue: 0.3882352941, alpha: 1)
    /// RGB: (0, 181, 135) / Hex: #00B587
    static let syrupGreenDark = #colorLiteral(red: 0, green: 0.7098039216, blue: 0.5294117647, alpha: 1)
    /// RGB: (46, 224, 171) / Hex: #2EE0AB
    static let syrupGreenLight = #colorLiteral(red: 0.1803921569, green: 0.8784313725, blue: 0.6705882353, alpha: 1)
    /// RGB: (108, 138, 208) / Hex: #8AEED0
    static let syrupGreenLighter = #colorLiteral(red: 0.5411764706, green: 0.9333333333, blue: 0.8156862745, alpha: 1)
    /// RGB: (230, 251, 245) / Hex: #E6FBF5
    static let syrupGreenLightest = #colorLiteral(red: 0.9019607843, green: 0.9843137255, blue: 0.9607843137, alpha: 1)
    /// RGB: (92, 231, 190) / Hex: #background: #5CE7BE
    static let syrupGreen35 = #colorLiteral(red: 0.3607843137, green: 0.9058823529, blue: 0.7450980392, alpha: 1)
    
    // MARK: - Green - Dynamic Backgrounds 🟩
    
    /// Dynamic color
    /// - Light color: syrupGreenBase
    /// - Dark color: syrupGreen35
    static var syrupGreenBaseDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupGreenBase : .syrupGreen35
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupGreenDarkest
    /// - Dark color: syrupGreenLightest
    static var syrupGreenDarkestDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupGreenDarkest : .syrupGreenLightest
        }
    }()
    
    /// Dynamic color
    /// - Light color: nectarBlackOnGreen
    /// - Dark color: syrupGreenLightest
    static var syrupBlackOnGreenDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupBlackOnGreen : .syrupGreenLightest
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupGreenDark
    /// - Dark color: syrupGreenDarkest.withAlphaComponent(0.40)
    static var syrupStrokeBackgroundGreenDynamic: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupGreenDark : .syrupGreenDarkest.withAlphaComponent(0.40)
        }
    }()
    
    // MARK: - Green - Dynamic Typography 🟩
    
    /// Dynamic color
    /// - Light color: syrupGreenDarkest
    /// - Dark color: syrupGreenDarkest
    static var syrupGreenDarkestDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupGreenDarkest : .syrupGreenDarkest
        }
    }()
    
    /// Dynamic color
    /// - Light color: syrupGreenDarker
    /// - Dark color: syrupGreen35
    static var syrupGreenDarkerDynamicTypography: UIColor = {
        return UIColor { traitCollection -> UIColor in
            traitCollection.userInterfaceStyle == .light ? .syrupGreenDarker : .syrupGreen35
        }
    }()
}

