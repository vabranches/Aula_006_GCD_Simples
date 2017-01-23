
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK: ACTIONS
    @IBAction func processarMain(_ sender: UIButton) {
        
        for p in 1...5{
            print("processando Main \(p)")
            Thread.sleep(forTimeInterval: 1.0)
        }
        
        
    }

    @IBAction func processarGCD(_ sender: UIButton) {
        DispatchQueue.global().async {
            for p in 1...5{
                print("processando GCD \(p)")
                Thread.sleep(forTimeInterval: 1.0)
            }
        }   
    }


}

