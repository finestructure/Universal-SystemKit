/*
 * Copyright (c) 2022 ChangYeop-Yang. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Cocoa
import SystemKit

class ViewController: NSViewController {
    
    @SKUserDefaults(forKey: "QWEASDASD", defaultValue: 3.14)
    private var defaults: Optional<Double>
    
    private var arr = SKSynchronizedArray<Int>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let userName = SKSystem.shared.getConsoleUserName()
        print(userName)

        let usingCPU = SKSystem.shared.getRunningProcessUsingCPU()
        print(usingCPU)

        let isRosetta = SKSystem.shared.isRosettaTranslatedProcess()
        print(isRosetta)
        
        let versionOS = SKSystem.shared.getOperatingSystemName()
        print(versionOS)
        
        //SKSystem.shared.openPreferencePane(path: SKSharingPreferencePane.main.rawValue)
        
        SKSystem.shared.openPreferencePane(path: SKSecurityPrivacyPreferencePane.PrivacyFullDiskAccess.rawValue)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

