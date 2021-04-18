import UIKit

class EmojiDescription {
    var meaning: String
    var bgColor: UIColor
    var textColor: UIColor
    init(meaning: String, bgColor: UIColor, textColor: UIColor) {
        self.meaning = meaning
        self.bgColor = bgColor
        self.textColor = textColor
    }
}

var emojis: [String: EmojiDescription] = [
    "🤓": EmojiDescription(meaning: "Neardy", bgColor: UIColor.orange, textColor: UIColor.white),
    "👻": EmojiDescription(meaning: "Ghost", bgColor: UIColor.black, textColor: UIColor.white),
    "💩": EmojiDescription(meaning: "Poop", bgColor: UIColor.cyan, textColor: UIColor.black),
    "👾": EmojiDescription(meaning: "8-Bit", bgColor: UIColor.darkGray, textColor: UIColor.purple)
]

var emojisView: [UIView] = []

for (key, value) in emojis {
    let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    containerView.backgroundColor = value.bgColor
    
    let emojiLabel = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
    emojiLabel.text = key
    emojiLabel.font = UIFont.systemFont(ofSize: 100.0)
    
    let meaningLabel = UILabel(frame: CGRect(x: 110, y: 100, width: 150, height: 150))
    meaningLabel.text = value.meaning
    meaningLabel.font = UIFont.systemFont(ofSize: 30.0)
    meaningLabel.textColor = value.textColor
    
    containerView.addSubview(meaningLabel)
    containerView.addSubview(emojiLabel)
    emojisView.append(containerView)
}

emojisView

