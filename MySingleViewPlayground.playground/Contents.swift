//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let containerView = UIView()
        let label = UILabel()
        
        containerView.backgroundColor = .green
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .green
        label.text = "Welcome to iOS Study Jam!\nBrought to you by WTM Berlin"
        label.textColor = .black
        
        label.numberOfLines = 0
        label.textAlignment = .center
        
        containerView.layer.shadowColor = UIColor.green.cgColor
        containerView.layer.shadowRadius = 20.0
        containerView.layer.shadowOpacity = 1.0
        
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.layer.borderWidth = 1
        
        containerView.addSubview(label)
        
        label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40).isActive = true
        containerView.bottomAnchor.constraint(equalTo: label.bottomAnchor, constant: 40).isActive = true
        
        label.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: label.rightAnchor, constant: 20).isActive = true
        
        view.addSubview(containerView)
        
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
