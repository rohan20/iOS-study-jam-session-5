//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let containerView = UIView()
        let contentLabel = UILabel()
        let authorLabel = UILabel()
        
        containerView.backgroundColor = .green
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        contentLabel.backgroundColor = .green
        contentLabel.text = "Welcome to iOS Study Jam!\nBrought to you by WTM Berlin"
        contentLabel.textColor = .black
        
        contentLabel.numberOfLines = 0
        contentLabel.textAlignment = .center
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.text = "Rohan Taneja"
        authorLabel.textColor = .white

        containerView.layer.shadowColor = UIColor.green.cgColor
        containerView.layer.shadowRadius = 20.0
        containerView.layer.shadowOpacity = 1.0
        
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.layer.borderWidth = 1
        
        contentLabel.backgroundColor = .cyan
        authorLabel.backgroundColor = .blue
        
        containerView.addSubview(contentLabel)
        containerView.addSubview(authorLabel)
        
        contentLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40).isActive = true
        containerView.bottomAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 40).isActive = true
        
        contentLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: contentLabel.rightAnchor, constant: 20).isActive = true
        
        authorLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 30).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: contentLabel.rightAnchor, constant: 0).isActive = true
        
        view.addSubview(containerView)
        
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
