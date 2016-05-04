//
//  ServicesDetail.swift
//  meowart
//
//  Created by dingo on 2016/4/15.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit
import Social

class ServicesDetail: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    @IBOutlet var Label: UILabel!
    @IBOutlet var TextView: UITextView!
    @IBOutlet var ShareFB: UIButton!
    
    
    var SentData1: String!
    var SentData2: String!
    
    @IBOutlet var Scroller: UIScrollView!
    
    

    override func viewDidLoad() {
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage.png")!)
        
        ShareFB.layer.cornerRadius = 9.0
        
        Label.text = SentData1
        
        ImageView.image = UIImage(named:SentData2)
        
        
        
        if Label.text == "肉肉(Roro)" {
            
            TextView.text = "[4F, oil on canvas, 2014 ] 肉肉略比Chubby大上一個月，在收養Chubby後不久也來到我家，是個冰雪聰明的貓女孩，喜歡講話和吃小魚乾。"
        }
        
        
        if Label.text == "恰比(Chubby)" {
            
            TextView.text = "[3F,oil on canvas, 2014] 這隻Chubby是我的貓兒子，一個月時在路邊搖搖晃晃差點被車撞到，所幸被朋友救起，然後我就義不容辭地收編牠了，牠的個性很像外星人（可能來到藍星還不夠久？）常常不太清楚牠小腦袋中的世界，常常懷疑牠是AB型的（笑）。"
        }
        
        
        if Label.text == "皮可洛(Picolo)" {
            
            TextView.text = "[3F, oil on canvas, 2014] Piccolo是紙飛機Cafe的貓店長，在牠一個月大時跑進店裡，被老闆娘Becky收養，個性很有趣，有點呆有點小奸詐，是個頑皮的貓男孩，牠還有特技：握手跟 Hi Five (前提是你手上得有食物）。"
        }
        
        
        if Label.text == "小布(Small Bu)" {
            
            TextView.text = "[3F, oil on canvas, 2015] 這位黑白相間的小紳士是貓藝家咖啡的貓店長小布，牠最喜歡被拍屁屁了，而且會發出很大聲的呼嚕聲噢。"
        }
        
        
        if Label.text == "肥溜(Fat Liu)" {
            
            TextView.text = "[1F, oil on canvas, 2015] 肥溜是我第一隻寵物，今年即將邁入九歲，是隻老當益萌的兔阿北，而且牠非常有潔癖，是標準的處女座，個性溫和，放風開心的話會扭腰擺臀的跳起兔子舞喔。偷偷地說：「牠很宅，很愛牠的籠子高級套房」。"
        }
        
        if Label.text == "雙貓牌(Two Cats)" {
            
            TextView.text = "[5F, oil on canvas, 2015] Chubby是肉肉的小跟班，肉肉不管做什麼，Chubby一定會有樣學樣（包括偷做壞事），兩隻不同娘生的虎斑姐弟，真是對活寶。"
        }
        
        if Label.text == "小白(Small White)" {
            
            TextView.text = "[4F, oil on canvas, 2015] 小白是老爸的愛犬，一雙無辜大眼擄獲了一家老小的心，牠很愛吃，連掉在地上的菜葉都吃，是一隻溫良恭”撿“的好狗兒啊。"
        }
        
        if Label.text == "恰恰(Cha Cha)" {
            
            TextView.text = "[3F, oil on canvas, 2015] 恰恰是我的第一隻貓咪，當初和朋友至收容所領養了牠，但和牠的緣份淺薄，短暫相處十天就因為貓瘟當貓天使了，牠那美麗的小小身影至今仍烙印在我的眼底，也會永遠活在我的心裡。"
        }
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func Facebook(sender: AnyObject) {
        
            if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
                let facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
                
                facebookSheet.setInitialText(" " + Label.text! + " " + TextView.text! + " --- 貓氏藝術 http://www.meowart.com")
                facebookSheet.addImage(self.ImageView.image)
                self.presentViewController(facebookSheet, animated: true, completion: nil)
                
            } else {
                let alert = UIAlertController(title: "通知", message: "請先登入Facebook", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                
                
            }
            
            

        
    }

}
