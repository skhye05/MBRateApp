//
//  MBRateUs.swift
//  Pods
//
//  Created by Mati Bot on 16/04/2016.
//
//

import Foundation


@objc open class MBRateUs: NSObject{

    @objc public static let sharedInstance = MBRateUs()

    open var rateUsInfo = MBRateUsInfo()
    
    @objc open func showRateUs(_ base:UIViewController, positiveBlock:@escaping (_ rate:Int)->Void, negativeBlock:@escaping (_ rate:Int)->Void, dismissBlock:@escaping ()->Void){
        let podBundle = Bundle(for: type(of: self))
        let storyboard = UIStoryboard(name: "RateUs", bundle: podBundle)
        let vc = storyboard.instantiateInitialViewController() as! MBRateUsViewController
        
        vc.positiveBlock = positiveBlock
        vc.negativeBlock = negativeBlock
        vc.dismissBlock = dismissBlock
        
        vc.rateUsInfo = self.rateUsInfo
        
        base.present(vc, animated: true, completion: nil)
    }
    
    @objc open func setTitle(_ title:String){
        self.rateUsInfo.title = title
    }
    
    @objc open func setSubtitle(_ subtitle:String){
        self.rateUsInfo.subtitle = subtitle
    }

    @objc open func setPositive(_ positive:String){
        self.rateUsInfo.positive = positive
    }
    
    @objc open func setNegative(_ negative:String){
        self.rateUsInfo.negative = negative
    }
    
    @objc open func setBackgroundColor(_ backgroundColor:UIColor){
        self.rateUsInfo.backgroundColor = backgroundColor
    }

    @objc open func setPositiveButtonColor(_ positiveButtonColor:UIColor){
        self.rateUsInfo.positiveButtonColor = positiveButtonColor
    }
 
    @objc open func setNegativeButtonColor(_ negativeButtonColor:UIColor){
        self.rateUsInfo.negativeButtonColor = negativeButtonColor
    }

    @objc open func setTextColor(_ textColor:UIColor){
        self.rateUsInfo.textColor = textColor
    }
 
    @objc open func setEmptyStarImage(_ emptyStarImage:UIImage?){
        self.rateUsInfo.emptyStarImage = emptyStarImage
    }
    
    @objc open func setFullStarImage(_ fullStarImage:UIImage?){
        self.rateUsInfo.fullStarImage = fullStarImage
    }
    
    @objc open func setTitleImage(_ titleImage:UIImage?){
        self.rateUsInfo.titleImage = titleImage
    }

    @objc open func setDismissButtonColor(_ dismissButtonColor:UIColor){
        self.rateUsInfo.dismissButtonColor = dismissButtonColor
    }

    @objc open func setItunesId(_ itunesId:String){
        self.rateUsInfo.itunesId = itunesId
    }
    
    @objc open func setOnPositiveButtonText(_ onPositiveButtonText:String){
        self.rateUsInfo.onPositiveButtonText = onPositiveButtonText
    }
    
    @objc open func setOnNegativeButtonText(_ onNegativeButtonText:String){
        self.rateUsInfo.onNegativeButtonText = onNegativeButtonText
    }
    
}
