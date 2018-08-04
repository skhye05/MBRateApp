//
//  MBRateUs.swift
//  Pods
//
//  Created by Mati Bot on 16/04/2016.
//
//

import Foundation


@objc open class MBRateUs: NSObject{

    open static let sharedInstance = MBRateUs()

    open var rateUsInfo = MBRateUsInfo()
    
    open func showRateUs(_ base:UIViewController, positiveBlock:@escaping ()->Void, negativeBlock:@escaping ()->Void, dismissBlock:@escaping ()->Void){
        let podBundle = Bundle(for: type(of: self))
        let storyboard = UIStoryboard(name: "RateUs", bundle: podBundle)
        let vc = storyboard.instantiateInitialViewController() as! MBRateUsViewController
        
        vc.positiveBlock = positiveBlock
        vc.negativeBlock = negativeBlock
        vc.dismissBlock = dismissBlock
        
        vc.rateUsInfo = self.rateUsInfo
        
        base.present(vc, animated: true, completion: nil)
    }
    
    open func setTitle(_ title:String){
        self.rateUsInfo.title = title
    }
    
    open func setSubtitle(_ subtitle:String){
        self.rateUsInfo.subtitle = subtitle
    }

    open func setPositive(_ positive:String){
        self.rateUsInfo.positive = positive
    }
    
    open func setNegative(_ negative:String){
        self.rateUsInfo.negative = negative
    }
    
    open func setBackgroundColor(_ backgroundColor:UIColor){
        self.rateUsInfo.backgroundColor = backgroundColor
    }

    open func setPositiveButtonColor(_ positiveButtonColor:UIColor){
        self.rateUsInfo.positiveButtonColor = positiveButtonColor
    }
 
    open func setNegativeButtonColor(_ negativeButtonColor:UIColor){
        self.rateUsInfo.negativeButtonColor = negativeButtonColor
    }

    open func setTextColor(_ textColor:UIColor){
        self.rateUsInfo.textColor = textColor
    }
 
    open func setEmptyStarImage(_ emptyStarImage:UIImage?){
        self.rateUsInfo.emptyStarImage = emptyStarImage
    }
    
    open func setFullStarImage(_ fullStarImage:UIImage?){
        self.rateUsInfo.fullStarImage = fullStarImage
    }
    
    open func setTitleImage(_ titleImage:UIImage?){
        self.rateUsInfo.titleImage = titleImage
    }

    open func setDismissButtonColor(_ dismissButtonColor:UIColor){
        self.rateUsInfo.dismissButtonColor = dismissButtonColor
    }

    open func setItunesId(_ itunesId:String){
        self.rateUsInfo.itunesId = itunesId
    }
    
}
