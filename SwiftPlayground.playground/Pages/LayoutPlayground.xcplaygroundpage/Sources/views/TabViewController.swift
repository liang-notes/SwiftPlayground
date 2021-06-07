import UIKit

public class TabViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 250, height: 50))
        button.setTitle("tab1", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func onClick() {
        let vc = DisplayController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
