//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.backgroundColor = .green
        label.text = "Welcome to iOS Study Jam!\nBrought to you by WTM Berlin"
        label.textColor = .black
        
        label.numberOfLines = 0
        label.textAlignment = .center
        
        label.layer.shadowColor = UIColor.green.cgColor
        label.layer.shadowRadius = 20.0
        label.layer.shadowOpacity = 1.0
        
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 1
        
        view.addSubview(label)
        
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
