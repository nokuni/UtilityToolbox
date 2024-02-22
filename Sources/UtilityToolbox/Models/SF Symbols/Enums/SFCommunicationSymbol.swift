//
//  SFCommunicationSymbol.swift
//  
//
//  Created by Yann Christophe MAERTENS on 15/06/2023.
//

import Foundation

enum SFCommunicationSymbol: String {
    /// 􀊰
    case mic = "mic"
    /// 􀊱
    case micFill = "mic.fill"
    /// 􀒩
    case micCircle = "mic.circle"
    /// 􀒪
    case micCircleFill = "mic.circle.fill"
    /// 􀼿
    case micSquare = "mic.square"
    /// 􀽀
    case micSquareFill = "mic.square.fill"
    /// 􀊲
    case micSlash = "mic.slash"
    /// 􀊳
    case micSlashFill = "mic.slash.fill"
    /// 􀻩
    case micSlashCircle = "mic.slash.circle"
    /// 􀻪
    case micSlashCircleFill = "mic.slash.circle.fill"
    /// 􀺁
    case micBadgePlus = "mic.badge.plus"
    /// 􀺂
    case micFillBadgePlus = "mic.fill.badge.plus"
    /// 􁙃
    case micBadgeXMark = "mic.badge.xmark"
    /// 􁙄
    case micFillBadgeXMark = "mic.fill.badge.xmark"
    /// 􁎔
    case micAndSignalMeter = "mic.and.signal.meter"
    /// 􁎓
    case micAndSignalMeterFill = "mic.and.signal.meter.fill"
    /// 􀌤
    case message = "message"
    /// 􀌥
    case messageFill = "message.fill"
    /// 􀌦
    case messageCircle = "message.circle"
    /// 􀌧
    case messageCircleFill = "message.circle.fill"
    /// 􁋬
    case messageBadge = "message.badge"
    /// 􁋭
    case messageBadgeFilledFill = "message.badge.filled.fill"
    /// 􁗗
    case messageBadgeCircle = "message.badge.circle"
    /// 􁗘
    case messageBadgeCircleFill = "message.badge.circle.fill"
    /// 􁏊
    case messageBadgeFill = "message.badge.fill"
    /// 􀼁
    case messageAndWaveform = "message.and.waveform"
    /// 􀼂
    case messageAndWaveformFill = "message.and.waveform.fill"
    /// 􁐕
    case checkmarkMessage = "checkmark.message"
    /// 􁐖
    case checkmarkMessageFill = "checkmark.message.fill"
    /// 􀜃
    case arrowUpMessage = "arrow.up.message"
    /// 􀜄
    case arrowUpMessageFill = "arrow.up.message.fill"
    /// 􁒞
    case arrowDownMessage = "arrow.down.message"
    /// 􁒟
    case arrowDownMessageFill = "arrow.down.message.fill"
    /// 􀡙
    case plusMessage = "plus.message"
    /// 􀡚
    case plusMessageFill = "plus.message.fill"
    /// 􁒘
    case ellipsisMessage = "ellipsis.message"
    /// 􁒙
    case ellipsisMessageFill = "ellipsis.message.fill"
    /// 􀌨
    case bubbleRight = "bubble.right"
    /// 􀌩
    case bubbleRightFill = "bubble.right.fill"
    /// 􁇎
    case bubbleRightCircle = "bubble.right.circle"
    /// 􁇏
    case bubbleRightCircleFill = "bubble.right.circle.fill"
    /// 􀌪
    case bubbleLeft = "bubble.left"
    /// 􀌫
    case bubbleLeftFill = "bubble.left.fill"
    /// 􁇐
    case bubbleLeftCircle = "bubble.left.circle"
    /// 􁇑
    case bubbleLeftCircleFill = "bubble.left.circle.fill"
    /// 􀌬
    case exclamationmarkBubble = "exclamationmark.bubble"
    /// 􀌭
    case exclamationmarkBubbleFill = "exclamationmark.bubble.fill"
    /// 􁆶
    case exclamationmarkBubbleCircle = "exclamationmark.bubble.circle"
    /// 􁆷
    case exclamationmarkBubbleCircleFill = "exclamationmark.bubble.circle.fill"
    /// 􁈏
    case quoteOpening = "quote.opening"
    /// 􁈐
    case quoteClosing = "quote.closing"
    /// 􀌮
    case quoteBubble = "quote.bubble"
    /// 􀌯
    case quoteBubbleFill = "quote.bubble.fill"
    /// 􁂪
    case starBubble = "star.bubble"
    /// 􁂫
    case starBubbleFill = "star.bubble.fill"
    /// 􀌰
    case characterBubble = "character.bubble"
    /// 􀌱
    case characterBubbleFill = "character.bubble.fill"
    /// 􀌲
    case textBubble = "text.bubble"
    /// 􀌳
    case textBubbleFill = "text.bubble.fill"
    /// 􀌴
    case captionsBubble = "captions.bubble"
    /// 􀌵
    case captionsBubbleFill = "captions.bubble.fill"
    /// 􁌴
    case infoBubble = "info.bubble"
    /// 􁌵
    case infoBubbleFill = "info.bubble.fill"
    /// 􁌶
    case questionmarkBubble = "questionmark.bubble"
    /// 􁌷
    case questionmarkBubbleFill = "questionmark.bubble.fill"
    /// 􀌶
    case plusBubble = "plus.bubble"
    /// 􀌷
    case plusBubbleFill = "plus.bubble.fill"
    /// 􀿋
    case checkmarkBubble = "checkmark.bubble"
    /// 􀿌
    case checkmarkBubbleFill = "checkmark.bubble.fill"
    /// 􀬄
    case rectangle3GroupBubbleLeft = "rectangle.3.group.bubble.left"
    /// 􀬅
    case rectangle3GroupBubbleLeftFill = "rectangle.3.group.bubble.left.fill"
    /// 􀕺
    case ellipsisBubble = "ellipsis.bubble"
    /// 􀕻
    case ellipsisBubbleFill = "ellipsis.bubble.fill"
    /// 􁁟
    case ellipsisVerticalBubble = "ellipsis.vertical.bubble"
    /// 􁁠
    case ellipsisVerticalBubbleFill = "ellipsis.vertical.bubble.fill"
    /// 􀱮
    case phoneBubbleLeft = "phone.bubble.left"
    /// 􀱯
    case phoneBubbleLeftFill = "phone.bubble.left.fill"
    /// 􀱰
    case videoBubbleLeft = "video.bubble.left"
    /// 􀱱
    case videoBubbleLeftFill = "video.bubble.left.fill"
    /// 􁗮
    case speakerWave2BubbleLeft = "speaker.wave.2.bubble.left"
    /// 􁗯
    case speakerWave2BubbleLeftFill = "speaker.wave.2.bubble.left.fill"
    /// 􀌸
    case bubbleMiddleBottom = "bubble.middle.bottom"
    /// 􀌹
    case bubbleMiddleBottomFill = "bubble.middle.bottom.fill"
    /// 􀌼
    case bubbleMiddleTop = "bubble.middle.top"
    /// 􀌽
    case bubbleMiddleTopFill = "bubble.middle.top.fill"
    /// 􀒤
    case bubbleLeftAndBubbleRight = "bubble.left.and.bubble.right"
    /// 􀘲
    case bubbleLeftAndBubbleRightFill = "bubble.left.and.bubble.right.fill"
    /// 􁃒
    case bubbleLeftAndExclamationmarkBubbleRight = "bubble.left.and.exclamationmark.bubble.right"
    /// 􁃓
    case bubbleLeftAndExclamationmarkBubbleRightFill = "bubble.left.and.exclamationmark.bubble.right.fill"
    /// 􀌾
    case phone = "phone"
    /// 􀌿
    case phoneFill = "phone.fill"
    /// 􀒥
    case phoneCircle = "phone.circle"
    /// 􀒦
    case phoneCircleFill = "phone.circle.fill"
    /// 􀖎
    case phoneBadgePlus = "phone.badge.plus"
    /// 􀖏
    case phoneFillBadgePlus = "phone.fill.badge.plus"
    /// 􁙗
    case phoneBadgeCheckmark = "phone.badge.checkmark"
    /// 􁙘
    case phoneFillBadgeCheckmark = "phone.fill.badge.checkmark"
    /// 􀬛
    case phoneConnection = "phone.connection"
    /// 􀬜
    case phoneConnectionFill = "phone.connection.fill"
    /// 􀼃
    case phoneAndWaveform = "phone.and.waveform"
    /// 􀼄
    case phoneAndWaveformFill = "phone.and.waveform.fill"
    /// 􀍀
    case phoneArrowUpRight = "phone.arrow.up.right"
    /// 􀍁
    case phoneArrowUpRightFill = "phone.arrow.up.right.fill"
    /// 􁏽
    case phoneArrowUpRightCircle = "phone.arrow.up.right.circle"
    /// 􁏾
    case phoneArrowUpRightCircleFill = "phone.arrow.up.right.circle.fill"
    /// 􀍂
    case phoneArrowDownLeft = "phone.arrow.down.left"
    /// 􀍃
    case phoneArrowDownLeftFill = "phone.arrow.down.left.fill"
    /// 􀍄
    case phoneArrowRight = "phone.arrow.right"
    /// 􀍅
    case phoneArrowRightFill = "phone.arrow.right.fill"
    /// 􀍆
    case phoneDown = "phone.down"
    /// 􀍇
    case phoneDownFill = "phone.down.fill"
    /// 􀒧
    case phoneDownCircle = "phone.down.circle"
    /// 􀒨
    case phoneDownCircleFill = "phone.down.circle.fill"
    /// 􁂅
    case phoneDownWavesLeftAndRight = "phone.down.waves.left.and.right"
    /// 􀍈
    case teletype = "teletype"
    /// 􀜅
    case teletypeCircle = "teletype.circle"
    /// 􀜆
    case teletypeCircleFill = "teletype.circle.fill"
    /// 􀙰
    case teletypeAnswer = "teletype.answer"
    /// 􀴦
    case teletypeAnswerCircle = "teletype.answer.circle"
    /// 􀴧
    case teletypeAnswerCircleFill = "teletype.answer.circle.fill"
    /// 􀍉
    case video = "video"
    /// 􀍊
    case videoFill = "video.fill"
    /// 􀍋
    case videoCircle = "video.circle"
    /// 􀍌
    case videoCircleFill = "video.circle.fill"
    /// 􀽉
    case videoSquare = "video.square"
    /// 􀽊
    case videoSquareFill = "video.square.fill"
    /// 􀍍
    case videoSlash = "video.slash"
    /// 􀍎
    case videoSlashFill = "video.slash.fill"
    /// 􀜮
    case videoBadgePlus = "video.badge.plus"
    /// 􀜯
    case videoFillBadgePlus = "video.fill.badge.plus"
    /// 􀮺
    case videoBadgeCheckmark = "video.badge.checkmark"
    /// 􀮻
    case videoFillBadgeCheckmark = "video.fill.badge.checkmark"
    /// 􁃊
    case videoBadgeEllipsis = "video.badge.ellipsis"
    /// 􁃋
    case videoFillBadgeEllipsis = "video.fill.badge.ellipsis"
    /// 􀼅
    case videoAndWaveform = "video.and.waveform"
    /// 􀼆
    case videoAndWaveformFill = "video.and.waveform.fill"
    /// 􀍏
    case arrowUpRightVideo = "arrow.up.right.video"
    /// 􀍐
    case arrowUpRightVideoFill = "arrow.up.right.video.fill"
    /// 􀍑
    case arrowDownLeftVideo = "arrow.down.left.video"
    /// 􀍒
    case arrowDownLeftVideoFill = "arrow.down.left.video.fill"
    /// 􀍓
    case questionmarkVideo = "questionmark.video"
    /// 􀍔
    case questionmarkVideoFill = "questionmark.video.fill"
    /// 􁙣
    case deskview = "deskview"
    /// 􁙤
    case deskviewFill = "deskview.fill"
    /// 􀍕
    case envelope = "envelope"
    /// 􀍖
    case envelopeFill = "envelope.fill"
    /// 􀍗
    case envelopeCircle = "envelope.circle"
    /// 􀍘
    case envelopeCircleFill = "envelope.circle.fill"
    /// 􀦗
    case envelopeArrowTriangleBranch = "envelope.arrow.triangle.branch"
    /// 􀦘
    case envelopeArrowTriangleBranchFill = "envelope.arrow.triangle.branch.fill"
    /// 􀍙
    case envelopeOpen = "envelope.open"
    /// 􀍚
    case envelopeOpenFill = "envelope.open.fill"
    /// 􁎧
    case envelopeOpenBadgeClock = "envelope.open.badge.clock"
    /// 􀍛
    case envelopeBadge = "envelope.badge"
    /// 􀍜
    case envelopeBadgeFill = "envelope.badge.fill"
    /// 􀙫
    case waveform = "waveform"
    /// 􀞈
    case waveformCircle = "waveform.circle"
    /// 􀞉
    case waveformCircleFill = "waveform.circle.fill"
    /// 􁏏
    case waveformSlash = "waveform.slash"
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
    /// 􀕼
    case recordingTape = "recordingtape"
    /// 􁋪
    case recordingTapeCircle = "recordingtape.circle"
    /// 􁋫
    case recordingTapeCircleFill = "recordingtape.circle.fill"
}
