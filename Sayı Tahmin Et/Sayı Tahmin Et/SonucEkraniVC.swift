//
//  SonucEkraniVC.swift
//  Sayı Tahmin Et
//
//  Created by Muzaffer Baran on 19.07.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {
    
    @IBOutlet weak var imageViewSonuc: UIImageView!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var sonuc: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.title = "Sonuç Ekranı"
        
        print(sonuc!)
        
        if sonuc! {
            labelSonuc.text = "Kazandınız"
            imageViewSonuc.image = UIImage(named: "mutlu_resim")
            
        }else{
            labelSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "uzgun_resim")
            
            
        }
    }
    
    @IBAction func tekrarOyna(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)//en basa dönmesi icin bu kodu yazıyoruz(ilk sayfaya)
    }
    
}
