//
//  SFVariableSymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 12/06/2023.
//

import Foundation

public enum SFVariableSymbol: String, CaseIterable {
    /// 􀈏
    case rectangleAndPencilAndEllipsis = "rectangle.and.pencil.and.ellipsis"
    /// 􀩮
    case externaldriveBadgeWifi = "externaldrive.badge.wifi"
    /// 􀩯
    case externaldriveFillBadgeWifi = "externaldrive.fill.badge.wifi"
    /// 􀥜
    case chartBarDocHorizontal = "chart.bar.doc.horizontal"
    /// 􀦌
    case chartBarDocHorizontalFill = "chart.bar.doc.horizontal.fill "
    /// 􁃑
    case shareplay = "shareplay"
    /// 􁅇
    case personWave2 = "person.wave.2"
    /// 􁅈
    case personWave2Fill = "person.wave.2.fill"
    /// 􀾌
    case person2Wave2 = "person.2.wave.2"
    /// 􀾍
    case person2Wave2Fill = "person.2.wave.2.fill"
    /// 􀻷
    case person3Sequence = "person.3.sequence"
    /// 􀻸
    case person3SequenceFill = "person.3.sequence.fill"
    /// 􀇯
    case rays = "rays"
    /// 􀇱
    case slowmo = "slowmo"
    /// 􀇲
    case timelapse = "timelapse"
    /// 􀭇
    case cursorarrowClick2 = "cursorarrow.click.2"
    /// 􀴾
    case aqiLow = "aqi.low"
    /// 􀴿
    case aqiMedium = "aqi.medium"
    /// 􀵀
    case aqiHigh = "aqi.high"
    /// 􁎄
    case waterWaves = "water.waves"
    /// 􁎅
    case waterWavesAndArrowUp = "water.waves.and.arrow.up"
    /// 􁎆
    case waterWavesAndArrowDown = "water.waves.and.arrow.down"
    /// 􀊤
    case speakerWave1 = "speaker.wave.1"
    /// 􀊥
    case speakerWave1Fill = "speaker.wave.1.fill"
    /// 􀊦
    case speakerWave2 = "speaker.wave.2"
    /// 􀊧
    case speakerWave2Fill = "speaker.wave.2.fill"
    /// 􀥑
    case speakerWave2Circle = "speaker.wave.2.circle"
    /// 􀥒
    case speakerWave2CircleFill = "speaker.wave.2.circle.fill"
    /// 􀊨
    case speakerWave3 = "speaker.wave.3"
    /// 􀊩
    case speakerWave3Fill = "speaker.wave.3.fill"
    /// 􀊪
    case badgePlusRadiowavesRight = "badge.plus.radiowaves.right"
    /// 􀰮
    case badgePlusRadiowavesForward = "badge.plus.radiowaves.forward"
    /// 􁎔
    case micAndSignalMeter = "mic.and.signal.meter"
    /// 􁎓
    case micAndSignalMeterFill = "mic.and.signal.meter.fill"
    /// 􀢊
    case target = "target"
    /// 􀻿
    case bellAndWaveform = "bell.and.waveform"
    /// 􀼀
    case bellAndWaveformFill = "bell.and.waveform.fill"
    /// 􁄤
    case bellAndWavesLeftAndRight = "bell.and.waves.left.and.right"
    /// 􁄠
    case bellAndWavesLeftAndRightFill = "bell.and.waves.left.and.right.fill"
    /// 􀼁 This symbol may not be modified and may only be used to refer to Apple's Messages app.
    case messageAndWaveform = "message.and.waveform"
    /// 􀼂 This symbol may not be modified and may only be used to refer to Apple's Messages app.
    case messageAndWaveformFill = "message.and.waveform.fill"
    /// 􁒘 This symbol may not be modified and may only be used to refer to Apple's Messages app.
    case ellipsisMessage = "ellipsis.message"
    /// 􁒙 This symbol may not be modified and may only be used to refer to Apple's Messages app.
    case ellipsisMessageFill = "ellipsis.message.fill"
    /// 􀕺
    case ellipsisBubble = "ellipsis.bubble"
    /// 􀕻
    case ellipsisBubbleFill = "ellipsis.bubble.fill"
    /// 􁁟
    case ellipsisVerticalBubble = "ellipsis.vertical.bubble"
    /// 􁁠
    case ellipsisVerticalBubbleFill = "ellipsis.vertical.bubble.fill"
    /// 􁗮
    case speakerWave2BubbleLeft = "speaker.wave.2.bubble.left"
    /// 􁗯
    case speakerWave2BubbleLeftFill = "speaker.wave.2.bubble.left.fill"
    /// 􀼃
    case phoneAndWaveform = "phone.and.waveform"
    /// 􀼄
    case phoneAndWaveformFill = "phone.and.waveform.fill"
    /// 􁂅
    case phoneDownWavesLeftAndRight = "phone.down.waves.left.and.right"
    /// 􀼅 This symbol may not be modified and may only be used to refer to Apple's FaceTime app.
    case videoAndWaveform = "video.and.waveform"
    /// 􀼆 This symbol may not be modified and may only be used to refer to Apple's FaceTime app.
    case videoAndWaveformFill = "video.and.waveform.fill"
    /// 􀍠
    case ellipsis = "ellipsis"
    /// 􀍡
    case ellipsisCircle = "ellipsis.circle"
    /// 􀍢
    case ellipsisCircleFill = "ellipsis.circle.fill"
    /// 􀠩
    case ellipsisRectangle = "ellipsis.rectangle"
    /// 􀠪
    case ellipsisRectangleFill = "ellipsis.rectangle.fill"
    /// 􀍱
    case wandAndRays = "wand.and.rays"
    /// 􀍲
    case wandAndRaysInverse = "wand.and.rays.inverse"
    /// 􀰬
    case linesMeasurementHorizontal = "lines.measurement.horizontal"
    /// 􀠀 This symbol may not be modified and may only be used to refer to Apple's Homekit.
    case homekit = "homekit"
    /// 􁒼
    case sprinklerAndDroplets = "sprinkler.and.droplets"
    /// 􁒽
    case sprinklerAndDropletsFill = "sprinkler.and.droplets.fill"
    /// 􁓆
    case showerSideJet = "shower.sidejet"
    /// 􁓇
    case showerSideJetFill = "shower.sidejet.fill"
    /// 􁓂
    case shower = "shower"
    /// 􁓃
    case showerFill = "shower.fill"
    /// 􁓍
    case showerHandheld = "shower.handheld"
    /// 􁓎
    case showerHandheldFill = "shower.handheld.fill"
    /// 􁔉
    case sensor = "sensor"
    /// 􁔊
    case sensorFill = "sensor.fill"
    /// 􁓣
    case wifiRouter = "wifi.router"
    /// 􁓤
    case wifiRouterFill = "wifi.router.fill"
    /// 􁠯
    case keyRadiowavesForward = "key.radiowaves.forward"
    /// 􁠰
    case keyRadiowavesForwardFill = "key.radiowaves.forward.fill"
    /// 􀙇
    case wifi = "wifi"
    /// 􀷖
    case wifiCircle = "wifi.circle"
    /// 􀷗
    case wifiCircleFill = "wifi.circle.fill"
    /// 􀽗
    case wifiSquare = "wifi.square"
    /// 􀽘
    case wifiSquareFill = "wifi.square.fill"
    /// 􀎫
    case mappinAndEllipse = "mappin.and.ellipse"
    /// 􁁝
    case sensorTagRadiowavesForward = "sensor.tag.radiowaves.forward"
    /// 􁁞
    case sensorTagRadiowavesForwardFill = "sensor.tag.radiowaves.forward.fill"
    /// 􁄼 This symbol may not be modified and may only be used to refer to Apple's AirTag.
    case airtagRadiowavesForward = "airtag.radiowaves.forward"
    /// 􁄽 This symbol may not be modified and may only be used to refer to Apple's AirTag.
    case airtagRadiowavesForwardFill = "airtag.radiowaves.forward.fill"
    /// 􀡆 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen1RadiowavesLeftAndRight = "iphone.gen1.radiowaves.left.and.right"
    /// 􁅚 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen1RadiowavesLeftAndRightCircle = "iphone.gen1.radiowaves.left.and.right.circle"
    /// 􁅛 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen1RadiowavesLeftAndRightCircleFill = "iphone.gen1.radiowaves.left.and.right.circle.fill"
    /// 􁟠- This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen2RadiowavesLeftAndRight = "iphone.gen2.radiowaves.left.and.right"
    /// 􁟡 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen2RadiowavesLeftAndRightCircle = "iphone.gen2.radiowaves.left.and.right.circle"
    /// 􁟢 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen2RadiowavesLeftAndRightCircleFill = "iphone.gen2.radiowaves.left.and.right.circle.fill"
    /// 􁊲 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen3RadiowavesLeftAndRight = "iphone.gen3.radiowaves.left.and.right"
    /// 􁊳 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen3RadiowavesLeftAndRightCircle = "iphone.gen3.radiowaves.left.and.right.circle"
    /// 􁊴 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneGen3RadiowavesLeftAndRightCircleFill = "iphone.gen3.radiowaves.left.and.right.circle.fill"
    /// 􀡇 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneRadiowavesLeftAndRight = "iphone.radiowaves.left.and.right"
    /// 􁅜 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneRadiowavesLeftAndRightCircle = "iphone.radiowaves.left.and.right.circle"
    /// 􁅝 This symbol may not be modified and may only be used to refer to Apple's iPhone.
    case iphoneRadiowavesLeftAndRightCircleFill = "iphone.radiowaves.left.and.right.circle.fill"
    /// 􀢷 This symbol may not be modified and may only be used to refer to Apple Watch.
    case appleWatchRadiowavesLeftAndRight = "applewatch.radiowaves.left.and.right"
    /// 􀑢 This symbol may not be modified and may only be used to refer to Apple's AirPlay.
    case airplayAudio = "airplayaudio"
    /// 􀾧 This symbol may not be modified and may only be used to refer to Apple's AirPlay.
    case airplayAudioCircle = "airplayaudio.circle"
    /// 􀾨 This symbol may not be modified and may only be used to refer to Apple's AirPlay.
    case airplayaudioCircleFill = "airplayaudio.circle.fill"
    /// 􀱫 This symbol may not be modified and may only be used to refer to Apple's AirPlay.
    case airplayAudioBadgeExclamationMark = "airplayaudio.badge.exclamationmark"
    /// 􀌙
    case dotRadiowavesLeftAndRight = "dot.radiowaves.left.and.right"
    /// 􀖒
    case dotRadiowavesRight = "dot.radiowaves.right"
    /// 􀰭
    case dotRadiowavesForward = "dot.radiowaves.forward"
    /// 􀙱
    case wave3Left = "wave.3.left"
    /// 􀭷
    case wave3LeftCircle = "wave.3.left.circle"
    /// 􀭸
    case wave3LeftCircleFill = "wave.3.left.circle.fill"
    /// 􀱘
    case wave3Backward = "wave.3.backward"
    /// 􀱙
    case wave3BackwardCircle = "wave.3.backward.circle"
    /// 􀱚
    case wave3BackwardCircleFill = "wave.3.backward.circle.fill"
    /// 􀙲
    case wave3Right = "wave.3.right"
    /// 􀭹
    case wave3RightCircle = "wave.3.right.circle"
    /// 􀭺
    case wave3RightCircleFill = "wave.3.right.circle.fill"
    /// 􀱛
    case wave3Forward = "wave.3.forward"
    /// 􀱜
    case wave3ForwardCircle = "wave.3.forward.circle"
    /// 􀱝
    case wave3ForwardCircleFill = "wave.3.forward.circle.fill"
    /// 􀼗
    case dotRadiowavesUpForward = "dot.radiowaves.up.forward"
    /// 􀖀
    case antennaRadiowavesLeftAndRight = "antenna.radiowaves.left.and.right"
    /// 􀷈
    case antennaRadiowavesLeftAndRightCircle = "antenna.radiowaves.left.and.right.circle"
    /// 􀷉
    case antennaRadiowavesLeftAndRightCircleFill = "antenna.radiowaves.left.and.right.circle.fill"
    /// 􁢱
    case carFrontWavesUp = "car.front.waves.up"
    /// 􁢲
    case carFrontWavesUpFill = "car.front.waves.up.fill"
    /// 􁖝
    case carRearWavesUp = "car.rear.waves.up"
    /// 􁖞
    case carRearWavesUpFill = "car.rear.waves.up.fill"
    /// 􁖳
    case carTopRadiowavesRearRight = "car.top.radiowaves.rear.right"
    /// 􁖷
    case carTopRadiowavesRearRightFill = "car.top.radiowaves.rear.right.fill"
    /// 􁖴
    case carTopRadiowavesRearLeft = "car.top.radiowaves.rear.left"
    /// 􁖸
    case carTopRadiowavesRearLeftFill = "car.top.radiowaves.rear.left.fill"
    /// 􁖵
    case carTopRadiowavesFront = "car.top.radiowaves.front"
    /// 􁖹
    case carTopRadiowavesFrontFill = "car.top.radiowaves.front.fill"
    /// 􁖶
    case carTopRadiowavesRear = "car.top.radiowaves.rear"
    /// 􁖺-
    case carTopRadiowavesRearFill = "car.top.radiowaves.rear.fill"
    /// 􁢠
    case carTopRadiowavesRearLeftAndRearRight = "car.top.radiowaves.rear.left.and.rear.right"
    /// 􁢡
    case carTopRadiowavesRearLeftAndRearRightFill = "car.top.radiowaves.rear.left.and.rear.right.fill"
    /// 􀵣
    case earAndWaveform = "ear.and.waveform"
    /// 􁎏
    case hearingDeviceAndSignalMeter = "hearingdevice.and.signal.meter"
    /// 􁎐
    case hearingDeviceAndSignalMeterFill = "hearingdevice.and.signal.meter.fill"
    /// 􁢏
    case ellipsisViewfinder = "ellipsis.viewfinder"
    /// 􀢪
    case cameraMeteringCenterWeighted = "camera.metering.center.weighted"
    /// 􀢫
    case cameraMeteringMatrix = "camera.metering.matrix"
    /// 􀢬
    case cameraMeteringMultispot = "camera.metering.multispot"
    /// 􀐜
    case squareStack3DDownRight = "square.stack.3d.down.right"
    /// 􀐝
    case squareStack3DDownRightFill = "square.stack.3d.down.right.fill"
    /// 􀰳
    case squareStack3DDownForward = "square.stack.3d.down.forward"
    /// 􀰴
    case squareStack3DDownForwardFill = "square.stack.3d.down.forward.fill"
    /// 􀐞
    case squareStack3DUp = "square.stack.3d.up"
    /// 􀐟
    case squareStack3DUpFill = "square.stack.3d.up.fill"
    /// 􀐠
    case squareStack3DForwardDottedLine = "square.stack.3d.forward.dottedline"
    /// 􀧏
    case squareStack3DForwardDottedLineFill = "square.stack.3d.forward.dottedline.fill"
    /// 􀐡 This symbol may not be modified and may only be used to refer to Apple's Live Photos feature.
    case livePhoto = "livephoto"
    /// 􁗀
    case alarmWavesLeftAndRight = "alarm.waves.left.and.right"
    /// 􁗁
    case alarmWavesLeftAndRightFill = "alarm.waves.left.and.right.fill"
    /// 􁉽
    case square3Layers3DDownRight = "square.3.layers.3d.down.right"
    /// 􁉼
    case square3Layers3DDownLeft = "square.3.layers.3d.down.left"
    /// 􁋛
    case square3Layers3DDownForward = "square.3.layers.3d.down.forward"
    /// 􁋜
    case square3Layers3DDownBackward = "square.3.layers.3d.down.backward"
    /// 􀯰
    case square3Layers3D = "square.3.layers.3d"
    /// 􀐾
    case chartBar = "chart.bar"
    /// 􀐿
    case chartBarFill = "chart.bar.fill"
    /// 􀭧
    case cellularBars = "cellularbars"
    /// 􀣉
    case chartBarXAxis = "chart.bar.xaxis"
    /// 􁣃
    case chartDotsScatter = "chart.dots.scatter"
    /// 􀙫
    case waveform = "waveform"
    /// 􀞈
    case waveformCircle = "waveform.circle"
    /// 􀞉
    case waveformCircleFill = "waveform.circle.fill"
    /// 􀸶
    case waveformBadgePlus = "waveform.badge.plus"
    /// 􀸷
    case waveformBadgeMinus = "waveform.badge.minus"
    /// 􀻽
    case waveformBadgeExclamationMark = "waveform.badge.exclamationmark"
    /// 􀻾
    case waveformAndMagnifyingGlass = "waveform.and.magnifyingglass"
    /// 􁃨
    case waveformAndMic = "waveform.and.mic"
    /// 􀟒 This symbol may not be modified and may only be used to refer to Apple's Touch ID feature.
    case touchID = "touchid"
    /// 􁇵
    case ellipsisCurlyBraces = "ellipsis.curlybraces"

    var symbol: String {
        switch self {
        case .rectangleAndPencilAndEllipsis: return "􀈏"
        case .externaldriveBadgeWifi: return "􀩮"
        case .externaldriveFillBadgeWifi: return "􀩯"
        case .chartBarDocHorizontal: return "􀥜"
        case .chartBarDocHorizontalFill: return "􀦌"
        case .shareplay: return "􁃑"
        case .personWave2: return "􁅇"
        case .personWave2Fill: return "􁅈"
        case .person2Wave2: return "􀾌"
        case .person2Wave2Fill: return "􀾍"
        case .person3Sequence: return "􀻷"
        case .person3SequenceFill: return "􀻸"
        case .rays: return "􀇯"
        case .slowmo: return "􀇱"
        case .timelapse: return "􀇲"
        case .cursorarrowClick2: return "􀭇"
        case .aqiLow: return "􀴾"
        case .aqiMedium: return "􀴿"
        case .aqiHigh: return "􀵀"
        case .waterWaves: return "􁎄"
        case .waterWavesAndArrowUp: return "􁎅"
        case .waterWavesAndArrowDown: return "􁎆"
        case .speakerWave1: return "􀊤"
        case .speakerWave1Fill: return "􀊥"
        case .speakerWave2: return "􀊦"
        case .speakerWave2Fill: return "􀊧"
        case .speakerWave2Circle: return "􀥑"
        case .speakerWave2CircleFill: return "􀥒"
        case .speakerWave3: return "􀊨"
        case .speakerWave3Fill: return "􀊩"
        case .badgePlusRadiowavesRight: return "􀊪"
        case .badgePlusRadiowavesForward: return "􀰮"
        case .micAndSignalMeter: return "􁎔"
        case .micAndSignalMeterFill: return "􁎓"
        case .target: return "􀢊"
        case .bellAndWaveform: return "􀻿"
        case .bellAndWaveformFill: return "􀼀"
        case .bellAndWavesLeftAndRight: return "􁄤"
        case .bellAndWavesLeftAndRightFill: return "􁄠"
        case .messageAndWaveform: return "􀼁"
        case .messageAndWaveformFill: return "􀼂"
        case .ellipsisMessage: return "􁒘"
        case .ellipsisMessageFill: return "􁒙"
        case .ellipsisBubble: return "􀕺"
        case .ellipsisBubbleFill: return "􀕻"
        case .ellipsisVerticalBubble: return "􁁟"
        case .ellipsisVerticalBubbleFill: return "􁁠"
        case .speakerWave2BubbleLeft: return "􁗮"
        case .speakerWave2BubbleLeftFill: return "􁗯"
        case .phoneAndWaveform: return "􀼃"
        case .phoneAndWaveformFill: return "􀼄"
        case .phoneDownWavesLeftAndRight: return "􁂅"
        case .videoAndWaveform: return "􀼅"
        case .videoAndWaveformFill: return "􀼆"
        case .ellipsis: return "􀍠"
        case .ellipsisCircle: return "􀍡"
        case .ellipsisCircleFill: return "􀍢"
        case .ellipsisRectangle: return "􀠩"
        case .ellipsisRectangleFill: return "􀠪"
        case .wandAndRays: return "􀍱"
        case .wandAndRaysInverse: return "􀍲"
        case .linesMeasurementHorizontal: return "􀰬"
        case .homekit: return "􀠀"
        case .sprinklerAndDroplets: return "􁒼"
        case .sprinklerAndDropletsFill: return "􁒽"
        case .showerSideJet: return "􁓆"
        case .showerSideJetFill: return "􁓇"
        case .shower: return "􁓂"
        case .showerFill: return "􁓃"
        case .showerHandheld: return "􁓍"
        case .showerHandheldFill: return "􁓎"
        case .sensor: return "􁔉"
        case .sensorFill: return "􁔊"
        case .wifiRouter: return "􁓣"
        case .wifiRouterFill: return "􁓤"
        case .keyRadiowavesForward: return "􁠯"
        case .keyRadiowavesForwardFill: return "􁠰"
        case .wifi: return "􀙇"
        case .wifiCircle: return "􀷖"
        case .wifiCircleFill: return "􀷗"
        case .wifiSquare: return "􀽗"
        case .wifiSquareFill: return "􀽘"
        case .mappinAndEllipse: return "􀎫"
        case .sensorTagRadiowavesForward: return "􁁝"
        case .sensorTagRadiowavesForwardFill: return "􁁞"
        case .airtagRadiowavesForward: return "􁄼"
        case .airtagRadiowavesForwardFill: return "􁄽"
        case .iphoneGen1RadiowavesLeftAndRight: return "􀡆"
        case .iphoneGen1RadiowavesLeftAndRightCircle: return "􁅚"
        case .iphoneGen1RadiowavesLeftAndRightCircleFill: return "􁅛"
        case .iphoneGen2RadiowavesLeftAndRight: return "􁟠"
        case .iphoneGen2RadiowavesLeftAndRightCircle: return "􁟡"
        case .iphoneGen2RadiowavesLeftAndRightCircleFill: return "􁟢"
        case .iphoneGen3RadiowavesLeftAndRight: return "􁊲"
        case .iphoneGen3RadiowavesLeftAndRightCircle: return "􁊳"
        case .iphoneGen3RadiowavesLeftAndRightCircleFill: return "􁊴"
        case .iphoneRadiowavesLeftAndRight: return "􀡇"
        case .iphoneRadiowavesLeftAndRightCircle: return "􁅜"
        case .iphoneRadiowavesLeftAndRightCircleFill: return "􁅝"
        case .appleWatchRadiowavesLeftAndRight: return "􀢷"
        case .airplayAudio: return "􀑢"
        case .airplayAudioCircle: return "􀾧"
        case .airplayaudioCircleFill: return "􀾨"
        case .airplayAudioBadgeExclamationMark: return "􀱫"
        case .dotRadiowavesLeftAndRight: return "􀌙"
        case .dotRadiowavesRight: return "􀖒"
        case .dotRadiowavesForward: return "􀰭"
        case .wave3Left: return "􀙱"
        case .wave3LeftCircle: return "􀭷"
        case .wave3LeftCircleFill: return "􀭸"
        case .wave3Backward: return "􀱘"
        case .wave3BackwardCircle: return "􀱙"
        case .wave3BackwardCircleFill: return "􀱚"
        case .wave3Right: return "􀙲"
        case .wave3RightCircle: return "􀭹"
        case .wave3RightCircleFill: return "􀭺"
        case .wave3Forward: return "􀱛"
        case .wave3ForwardCircle: return "􀱜"
        case .wave3ForwardCircleFill: return "􀱝"
        case .dotRadiowavesUpForward: return "􀼗"
        case .antennaRadiowavesLeftAndRight: return "􀖀"
        case .antennaRadiowavesLeftAndRightCircle: return "􀷈"
        case .antennaRadiowavesLeftAndRightCircleFill: return "􀷉"
        case .carFrontWavesUp: return "􁢱"
        case .carFrontWavesUpFill: return "􁢲"
        case .carRearWavesUp: return "􁖝"
        case .carRearWavesUpFill: return "􁖞"
        case .carTopRadiowavesRearRight: return "􁖳"
        case .carTopRadiowavesRearRightFill: return "􁖷"
        case .carTopRadiowavesRearLeft: return "􁖴"
        case .carTopRadiowavesRearLeftFill: return "􁖸"
        case .carTopRadiowavesFront: return "􁖵"
        case .carTopRadiowavesFrontFill: return "􁖹"
        case .carTopRadiowavesRear: return "􁖶"
        case .carTopRadiowavesRearFill: return "􁖺"
        case .carTopRadiowavesRearLeftAndRearRight: return "􁢠"
        case .carTopRadiowavesRearLeftAndRearRightFill: return "􁢡"
        case .earAndWaveform: return "􀵣"
        case .hearingDeviceAndSignalMeter: return "􁎏"
        case .hearingDeviceAndSignalMeterFill: return "􁎐"
        case .ellipsisViewfinder: return "􁢏"
        case .cameraMeteringCenterWeighted: return "􀢪"
        case .cameraMeteringMatrix: return "􀢫"
        case .cameraMeteringMultispot: return "􀢬"
        case .squareStack3DDownRight: return "􀐜"
        case .squareStack3DDownRightFill: return "􀐝"
        case .squareStack3DDownForward: return "􀰳"
        case .squareStack3DDownForwardFill: return "􀰴"
        case .squareStack3DUp: return "􀐞"
        case .squareStack3DUpFill: return "􀐟"
        case .squareStack3DForwardDottedLine: return "􀐠"
        case .squareStack3DForwardDottedLineFill: return "􀧏"
        case .livePhoto: return "􀐡"
        case .alarmWavesLeftAndRight: return "􁗀"
        case .alarmWavesLeftAndRightFill: return "􁗁"
        case .square3Layers3DDownRight: return "􁉽"
        case .square3Layers3DDownLeft: return "􁉼"
        case .square3Layers3DDownForward: return "􁋛"
        case .square3Layers3DDownBackward: return "􁋜"
        case .square3Layers3D: return "􀯰"
        case .chartBar: return "􀐾"
        case .chartBarFill: return "􀐿"
        case .cellularBars: return "􀭧"
        case .chartBarXAxis: return "􀣉"
        case .chartDotsScatter: return "􁣃"
        case .waveform: return "􀙫"
        case .waveformCircle: return "􀞈"
        case .waveformCircleFill: return "􀞉"
        case .waveformBadgePlus: return "􀸶"
        case .waveformBadgeMinus: return "􀸷"
        case .waveformBadgeExclamationMark: return "􀻽"
        case .waveformAndMagnifyingGlass: return "􀻾"
        case .waveformAndMic: return "􁃨"
        case .touchID: return "􀟒"
        case .ellipsisCurlyBraces: return "􁇵"
        }
    }
}
