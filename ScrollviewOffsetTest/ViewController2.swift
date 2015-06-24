//
//  ViewController2.swift
//  ScrollviewOffsetTest
//
//  Created by E. Kevin Hall on 6/24/15.
//  Copyright (c) 2015 E. Kevin Hall, Yale. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
  
  @IBOutlet weak var webView: UIWebView!
  
  let htmlString = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
  
  @IBAction func goForwards(sender: AnyObject) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewControllerWithIdentifier("ThirdVC") as! ViewController3
    navigationController!.pushViewController(vc, animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    webView.backgroundColor = UIColor.clearColor()
    webView.opaque = false
    webView.scrollView.showsHorizontalScrollIndicator = false
    webView.loadHTMLString(htmlString, baseURL: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}
