import UIKit

public class DisplayController: UITableViewController {
    lazy var array = ["swift","python","dart","java","objective-C"]
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "DisplayController")
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "DisplayController")
        }
        cell?.textLabel?.text = array[indexPath.row]
        return cell!
    }
}
