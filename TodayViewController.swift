import UIKit
import NotificationCenter


class TodayViewController: UIViewController, NCWidgetProviding {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.extensionContext?.widgetLargestAvailableDisplayMode = NCWidgetDisplayMode.expanded
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.setValue("192.168.179.45", forKey: "ReceiverIP");
        UserDefaults.standard.setValue("192.168.179.23", forKey: "CCUIP");
        UserDefaults.standard.synchronize()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func duoPlayPressed(_ sender: AnyObject) {
        ReceiverManagerDuo2.sharedInstance.sendRequestWithParameter(parameter: "164") { (str) in
            
        }
    }
    
    @IBAction func duoPausePressed(_ sender: AnyObject) {
        ReceiverManagerDuo2.sharedInstance.sendRequestWithParameter(parameter: "164") { (str) in
            
        }
    }
    
    @IBAction func duoStopPressed(_ sender: AnyObject) {
        ReceiverManagerDuo2.sharedInstance.sendRequestWithParameter(parameter: "128") { (str) in
            
        }
    }
    
    @IBAction func duoOkPressed(_ sender: AnyObject) {
        ReceiverManagerDuo2.sharedInstance.sendRequestWithParameter(parameter: "352") { (str) in
            
        }
    }
    
    @IBAction func duoExitPressed(_ sender: AnyObject) {
        ReceiverManagerDuo2.sharedInstance.sendRequestWithParameter(parameter: "174") { (str) in
            
        }
    }
    
    @IBAction func duoMutePressed(_ sender: AnyObject) {
        ReceiverManagerDuo2.sharedInstance.sendRequestWithParameter(parameter: "113") { (str) in
        
        }
        
    }
    
    @IBAction func hmOrangeOnPressed(_ sender: AnyObject) {
        HmManager.sharedInstance.sendRequestWithParameter(parameter: "('BidCos-RF.BidCoS-RF:10.PRESS_SHORT').State(1)") { (str) in
            
        }
        
    }
    
    @IBAction func hmOrangeOffPressed(_ sender: AnyObject) {
        HmManager.sharedInstance.sendRequestWithParameter(parameter: "('BidCos-RF.BidCoS-RF:11.PRESS_SHORT').State(1)") { (str) in
            
        }
        
    }
    
    @IBAction func hmSocketWzOnPressed(_ sender: AnyObject) {
        HmManager.sharedInstance.sendRequestWithParameter(parameter: "('BidCos-RF.MEQ0170962:1.STATE').State(1)") { (str) in
            
        }
        
    }
    
    @IBAction func hmSocketWzOffPressed(_ sender: AnyObject) {
        HmManager.sharedInstance.sendRequestWithParameter(parameter: "('BidCos-RF.MEQ0170962:1.STATE').State(0)") { (str) in
            
        }
        
    }
    
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize){
        if (activeDisplayMode == NCWidgetDisplayMode.compact) {
            self.preferredContentSize = maxSize;
        }
        else {
            self.preferredContentSize = CGSize(width: 0, height: 230);
        }
        
    }
}
