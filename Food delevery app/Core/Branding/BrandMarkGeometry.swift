//
//  BrandMarkGeometry.swift
//  Food delevery app
//
//  Vector geometry for the YumQuick mark, expressed as cubic Bezier
//  segments in a normalised space where 1.0 == the mark's full width.
//  Traced from the master brand artwork; every stroke is a centreline
//  that is rendered with a round-capped stroke, exactly as drawn.
//
//  DO NOT hand-edit: regenerate from the master artwork if the brand
//  mark ever changes.
//

import CoreGraphics

enum BrandMarkGeometry {
    /// Height of the mark relative to its width.
    static let aspectRatio: CGFloat = 0.88870

    /// Stroke thickness relative to the mark's width.
    static let strokeRatio: CGFloat = 0.029490

    /// Strokes drawn as closed loops rather than open paths.
    static let closedStrokes: Set<String> = ["eye", "teardrop"]

    // leftLobe
    static let leftLobe: [[CGPoint]] = [
        [CGPoint(x: 0.5021, y: 0.1357), CGPoint(x: 0.4939, y: 0.1281), CGPoint(x: 0.4858, y: 0.1204), CGPoint(x: 0.4776, y: 0.1128)],
        [CGPoint(x: 0.4776, y: 0.1128), CGPoint(x: 0.4279, y: 0.0662), CGPoint(x: 0.3872, y: 0.0356), CGPoint(x: 0.3174, y: 0.0217)],
        [CGPoint(x: 0.3174, y: 0.0217), CGPoint(x: 0.3048, y: 0.0192), CGPoint(x: 0.2920, y: 0.0156), CGPoint(x: 0.2791, y: 0.0150)],
        [CGPoint(x: 0.2791, y: 0.0150), CGPoint(x: 0.2571, y: 0.0139), CGPoint(x: 0.2358, y: 0.0212), CGPoint(x: 0.2148, y: 0.0265)],
        [CGPoint(x: 0.2148, y: 0.0265), CGPoint(x: 0.1449, y: 0.0440), CGPoint(x: 0.0779, y: 0.0932), CGPoint(x: 0.0451, y: 0.1588)],
        [CGPoint(x: 0.0451, y: 0.1588), CGPoint(x: 0.0361, y: 0.1768), CGPoint(x: 0.0307, y: 0.1961), CGPoint(x: 0.0259, y: 0.2154)],
        [CGPoint(x: 0.0259, y: 0.2154), CGPoint(x: 0.0201, y: 0.2388), CGPoint(x: 0.0129, y: 0.2639), CGPoint(x: 0.0154, y: 0.2883)],
        [CGPoint(x: 0.0154, y: 0.2883), CGPoint(x: 0.0170, y: 0.3044), CGPoint(x: 0.0220, y: 0.3207), CGPoint(x: 0.0259, y: 0.3362)],
        [CGPoint(x: 0.0259, y: 0.3362), CGPoint(x: 0.0389, y: 0.3884), CGPoint(x: 0.0567, y: 0.4165), CGPoint(x: 0.0892, y: 0.4580)],
    ]
    // eye
    static let eye: [[CGPoint]] = [
        [CGPoint(x: 0.0940, y: 0.4600), CGPoint(x: 0.1003, y: 0.4551), CGPoint(x: 0.1133, y: 0.4536), CGPoint(x: 0.1208, y: 0.4513)],
        [CGPoint(x: 0.1208, y: 0.4513), CGPoint(x: 0.1333, y: 0.4476), CGPoint(x: 0.1460, y: 0.4423), CGPoint(x: 0.1592, y: 0.4436)],
        [CGPoint(x: 0.1592, y: 0.4436), CGPoint(x: 0.2241, y: 0.4501), CGPoint(x: 0.3078, y: 0.5219), CGPoint(x: 0.3078, y: 0.5904)],
        [CGPoint(x: 0.3078, y: 0.5904), CGPoint(x: 0.3078, y: 0.6236), CGPoint(x: 0.3105, y: 0.6586), CGPoint(x: 0.2791, y: 0.6796)],
        [CGPoint(x: 0.2791, y: 0.6796), CGPoint(x: 0.2633, y: 0.6901), CGPoint(x: 0.2495, y: 0.6911), CGPoint(x: 0.2311, y: 0.6911)],
        [CGPoint(x: 0.2311, y: 0.6911), CGPoint(x: 0.2188, y: 0.6911), CGPoint(x: 0.2067, y: 0.6912), CGPoint(x: 0.1947, y: 0.6882)],
        [CGPoint(x: 0.1947, y: 0.6882), CGPoint(x: 0.1778, y: 0.6840), CGPoint(x: 0.1639, y: 0.6747), CGPoint(x: 0.1496, y: 0.6652)],
        [CGPoint(x: 0.1496, y: 0.6652), CGPoint(x: 0.1104, y: 0.6390), CGPoint(x: 0.0876, y: 0.6066), CGPoint(x: 0.0748, y: 0.5606)],
        [CGPoint(x: 0.0748, y: 0.5606), CGPoint(x: 0.0723, y: 0.5517), CGPoint(x: 0.0686, y: 0.5422), CGPoint(x: 0.0681, y: 0.5328)],
        [CGPoint(x: 0.0681, y: 0.5328), CGPoint(x: 0.0676, y: 0.5222), CGPoint(x: 0.0837, y: 0.4685), CGPoint(x: 0.0911, y: 0.4628)],
    ]
    // teardrop
    static let teardrop: [[CGPoint]] = [
        [CGPoint(x: 0.4858, y: 0.1536), CGPoint(x: 0.4920, y: 0.1522), CGPoint(x: 0.4982, y: 0.1507), CGPoint(x: 0.5044, y: 0.1492)],
        [CGPoint(x: 0.5044, y: 0.1492), CGPoint(x: 0.5185, y: 0.1459), CGPoint(x: 0.5516, y: 0.1952), CGPoint(x: 0.5601, y: 0.2068)],
        [CGPoint(x: 0.5601, y: 0.2068), CGPoint(x: 0.5751, y: 0.2273), CGPoint(x: 0.5880, y: 0.2529), CGPoint(x: 0.5908, y: 0.2787)],
        [CGPoint(x: 0.5908, y: 0.2787), CGPoint(x: 0.5953, y: 0.3216), CGPoint(x: 0.5859, y: 0.3775), CGPoint(x: 0.5380, y: 0.3919)],
        [CGPoint(x: 0.5380, y: 0.3919), CGPoint(x: 0.5286, y: 0.3947), CGPoint(x: 0.5189, y: 0.3938), CGPoint(x: 0.5092, y: 0.3938)],
        [CGPoint(x: 0.5092, y: 0.3938), CGPoint(x: 0.4666, y: 0.3938), CGPoint(x: 0.4526, y: 0.3696), CGPoint(x: 0.4431, y: 0.3314)],
        [CGPoint(x: 0.4431, y: 0.3314), CGPoint(x: 0.4399, y: 0.3188), CGPoint(x: 0.4360, y: 0.3064), CGPoint(x: 0.4373, y: 0.2931)],
        [CGPoint(x: 0.4373, y: 0.2931), CGPoint(x: 0.4401, y: 0.2648), CGPoint(x: 0.4494, y: 0.2349), CGPoint(x: 0.4603, y: 0.2087)],
        [CGPoint(x: 0.4603, y: 0.2087), CGPoint(x: 0.4664, y: 0.1941), CGPoint(x: 0.4826, y: 0.1540), CGPoint(x: 0.4987, y: 0.1502)],
        [CGPoint(x: 0.4987, y: 0.1502), CGPoint(x: 0.5049, y: 0.1487), CGPoint(x: 0.5111, y: 0.1473), CGPoint(x: 0.5174, y: 0.1458)],
    ]
    // rightArm
    static let rightArm: [[CGPoint]] = [
        [CGPoint(x: 0.4932, y: 0.1461), CGPoint(x: 0.5011, y: 0.1382), CGPoint(x: 0.5090, y: 0.1303), CGPoint(x: 0.5169, y: 0.1224)],
        [CGPoint(x: 0.5169, y: 0.1224), CGPoint(x: 0.5287, y: 0.1106), CGPoint(x: 0.5400, y: 0.0980), CGPoint(x: 0.5524, y: 0.0869)],
        [CGPoint(x: 0.5524, y: 0.0869), CGPoint(x: 0.5952, y: 0.0484), CGPoint(x: 0.6719, y: 0.0179), CGPoint(x: 0.7298, y: 0.0150)],
        [CGPoint(x: 0.7298, y: 0.0150), CGPoint(x: 0.7489, y: 0.0140), CGPoint(x: 0.7690, y: 0.0209), CGPoint(x: 0.7874, y: 0.0255)],
        [CGPoint(x: 0.7874, y: 0.0255), CGPoint(x: 0.8717, y: 0.0466), CGPoint(x: 0.9514, y: 0.1132), CGPoint(x: 0.9753, y: 0.1991)],
        [CGPoint(x: 0.9753, y: 0.1991), CGPoint(x: 0.9903, y: 0.2529), CGPoint(x: 0.9890, y: 0.3278), CGPoint(x: 0.9657, y: 0.3794)],
        [CGPoint(x: 0.9657, y: 0.3794), CGPoint(x: 0.9599, y: 0.3924), CGPoint(x: 0.9533, y: 0.4058), CGPoint(x: 0.9456, y: 0.4178)],
        [CGPoint(x: 0.9456, y: 0.4178), CGPoint(x: 0.9358, y: 0.4328), CGPoint(x: 0.9220, y: 0.4462), CGPoint(x: 0.9149, y: 0.4628)],
        [CGPoint(x: 0.9149, y: 0.4628), CGPoint(x: 0.9056, y: 0.4845), CGPoint(x: 0.9268, y: 0.4924), CGPoint(x: 0.9350, y: 0.5089)],
        [CGPoint(x: 0.9350, y: 0.5089), CGPoint(x: 0.9421, y: 0.5230), CGPoint(x: 0.9423, y: 0.5413), CGPoint(x: 0.9408, y: 0.5568)],
        [CGPoint(x: 0.9408, y: 0.5568), CGPoint(x: 0.9390, y: 0.5749), CGPoint(x: 0.9253, y: 0.5863), CGPoint(x: 0.9139, y: 0.5990)],
        [CGPoint(x: 0.9139, y: 0.5990), CGPoint(x: 0.8870, y: 0.6293), CGPoint(x: 0.8586, y: 0.6583), CGPoint(x: 0.8315, y: 0.6882)],
    ]
    // forkHair
    static let forkHair: [[CGPoint]] = [
        [CGPoint(x: 0.7068, y: 0.5704), CGPoint(x: 0.7091, y: 0.5681), CGPoint(x: 0.7113, y: 0.5658), CGPoint(x: 0.7135, y: 0.5635)],
        [CGPoint(x: 0.7135, y: 0.5635), CGPoint(x: 0.7220, y: 0.5548), CGPoint(x: 0.7311, y: 0.5466), CGPoint(x: 0.7394, y: 0.5376)],
        [CGPoint(x: 0.7394, y: 0.5376), CGPoint(x: 0.7616, y: 0.5137), CGPoint(x: 0.8022, y: 0.4577), CGPoint(x: 0.8353, y: 0.4494)],
        [CGPoint(x: 0.8353, y: 0.4494), CGPoint(x: 0.8485, y: 0.4461), CGPoint(x: 0.8923, y: 0.4566), CGPoint(x: 0.8948, y: 0.4724)],
        [CGPoint(x: 0.8948, y: 0.4724), CGPoint(x: 0.8977, y: 0.4913), CGPoint(x: 0.8749, y: 0.5084), CGPoint(x: 0.8641, y: 0.5213)],
        [CGPoint(x: 0.8641, y: 0.5213), CGPoint(x: 0.8320, y: 0.5598), CGPoint(x: 0.7986, y: 0.5972), CGPoint(x: 0.7663, y: 0.6355)],
        [CGPoint(x: 0.7663, y: 0.6355), CGPoint(x: 0.7642, y: 0.6379), CGPoint(x: 0.7621, y: 0.6403), CGPoint(x: 0.7601, y: 0.6428)],
    ]
    // smile
    static let smile: [[CGPoint]] = [
        [CGPoint(x: 0.3711, y: 0.7639), CGPoint(x: 0.3733, y: 0.7662), CGPoint(x: 0.3756, y: 0.7684), CGPoint(x: 0.3779, y: 0.7707)],
        [CGPoint(x: 0.3779, y: 0.7707), CGPoint(x: 0.4025, y: 0.7953), CGPoint(x: 0.4271, y: 0.8199), CGPoint(x: 0.4517, y: 0.8445)],
        [CGPoint(x: 0.4517, y: 0.8445), CGPoint(x: 0.4641, y: 0.8569), CGPoint(x: 0.4761, y: 0.8714), CGPoint(x: 0.4949, y: 0.8733)],
        [CGPoint(x: 0.4949, y: 0.8733), CGPoint(x: 0.5036, y: 0.8742), CGPoint(x: 0.5152, y: 0.8743), CGPoint(x: 0.5236, y: 0.8714)],
        [CGPoint(x: 0.5236, y: 0.8714), CGPoint(x: 0.5462, y: 0.8634), CGPoint(x: 0.6151, y: 0.7908), CGPoint(x: 0.6358, y: 0.7707)],
        [CGPoint(x: 0.6358, y: 0.7707), CGPoint(x: 0.6381, y: 0.7684), CGPoint(x: 0.6404, y: 0.7662), CGPoint(x: 0.6427, y: 0.7640)],
    ]

    /// All strokes in draw order, paired with their identifier.
    static let allStrokes: [(id: String, curves: [[CGPoint]])] = [
        ("leftLobe", leftLobe),
        ("eye", eye),
        ("teardrop", teardrop),
        ("rightArm", rightArm),
        ("forkHair", forkHair),
        ("smile", smile),
    ]
}
