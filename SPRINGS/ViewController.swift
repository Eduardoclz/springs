//
//  ViewController.swift
//  SPRINGS
//
//  Created by Maestro on 22/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var verdeup = false
    var rasaup = false
    func subirverde() {
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
            
            self.cuadro.center.y -= 200
            self.cuadro.center.x += 100
            self
                .cuadro.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: nil)
        
        
    }
    func subirrosa() {
        
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
            
            self.cuadro2.center.y -= 200
            self.cuadro2.center.x -= 100
            self
                .cuadro2.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: nil)
    }
    
    func bajarverde() {
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
            
            self.cuadro.center.y += 180
            self.cuadro.center.x -= 100
            self
                .cuadro.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)

        
    }
    func  bajarrosa() {
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {
            
            self.cuadro2.center.y += 180
            self.cuadro2.center.x += 100
            self
                .cuadro2.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)

    }
    
    @IBAction func button1(_ sender: Any) {
        
        if verdeup {
            bajarverde()
            
        }
        
    
        else
    {
      subirverde()
        if rasaup{
            bajarrosa()
            rasaup = !rasaup
            
        }
        }
        verdeup = !verdeup
      
    }
    


    @IBAction func button2(_ sender: Any) {
    
        if rasaup {
            bajarrosa()
        }
            
            
        else
        {
            subirrosa()
            if verdeup
            {
            bajarverde()
                verdeup = !verdeup
            
            }
            
        }
        rasaup = !rasaup
        
        
    }
  
    
    
    
    @IBOutlet weak var cuadro2: UIView!
    @IBOutlet weak var cuadro: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func viewDidAppear(_ animated: Bool) {
       
    }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

