
//
//  Swag.swift
//  SwagBag
//
//  Created by Seth on 6/1/15.
//  Copyright (c) 2015 SETH. All rights reserved.
//

import Foundation

public class Swag 
{
    
    
    
   dynamic var jsonArray = NSArray()
    var swagBooksArray = NSArray()
    
    var testArray = ["1", "2", "3"]
    
    dynamic var totalCount = 0
    
    private var context = 0
    
    
    
//   public func getJSONData()
//{
////        let url = NSURL(string: "http://prolific-interview.herokuapp.com/55690024bc12fb0009df5baf/")
//    
//    let url = NSURL(string: "http://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote?format=json")
//        var jsonData = NSData(contentsOfURL: url!)
//    
//        
//        var parseError: NSError?
//        let parsedObject: AnyObject? = NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.AllowFragments,
//            error: &parseError)
//        
//    if let jsonDictionary = parsedObject as? NSDictionary {
//        println(jsonDictionary)
//        
//        
//        if let resources = jsonDictionary["list"] as? NSArray {
//            println(resources)
//            
//        }
//        
//    }
//    
//}

    
    
    public func httpGET_SWAG()
    {
//        let url = NSURL(string: "http://prolific-interview.herokuapp.com/55690024bc12fb0009df5baf/books")
//        
//        let session = NSURLSession.sharedSession()
//        
//        let request = NSURLRequest(URL: url!)
//        
//        var task = session.dataTaskWithURL(url!) {
//            (data, response, error) -> Void in
//            
//            if error != nil{
//                println(error.localizedDescription)
//            }
//                
//            else {
//                println(response)
//                println(data)
//                println(error)
//                
//                var parseError: NSError?
//                
//                let parsedObject: AnyObject? = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments,
//                    error: &parseError)
//                
//                    println(parsedObject)
//        
//            }
//        
//    }
}
    
    
    
    
    public func httpGET()
    {
//        var url = NSURL(string: "http://prolific-interview.herokuapp.com/55690024bc12fb0009df5baf/books")
        
        let url = NSURL(string: "http://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote?format=json")
        
        let session = NSURLSession.sharedSession()
        
        let request = NSURLRequest(URL: url!)
        
        var task = session.dataTaskWithURL(url!) {
            (data, response, error) -> Void in
            
            if error != nil{
                println(error.localizedDescription)
            }
            
            else {
                println(response)
                println(data)
                println(error)
                
                var parseError: NSError?
                
                let parsedObject: AnyObject? = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments,
                            error: &parseError)
                
                
                
                    if let topDictionary = parsedObject as? NSDictionary {
                        println(topDictionary)
                        
                        if let list = topDictionary["list"] as? NSDictionary {
                            
                            println(list)
                            
                            if let resources = list["resources"] as? NSArray {
                                println(resources)
                                
//                                        self.swagArray = Swag().jsonArray
                                self.jsonArray = resources
                                
                                self.totalCount = self.jsonArray.count
                                
                                
                                
                                
                                for resource in resources
                                {
                                    println(resource)
                                    
                                    
                                }
                                
                                    
                                    
                                }
                                
                            
                        
                            
                          // why can't we just say this?
                                
//                                self.jsonArray = parsedObject?.objectForKey("list")?.objectForKey("resources") as! NSArray
//                                println(self.jsonArray)
//                            
                            
                                
//                                self.jsonArray = parsedObject!.objectForKey("list")!.objectForKey("resources") as! NSArray
//                                println(self.jsonArray)

                                
                        
                                
                                    
                                
                                
                            }
                            
                        }
                        
                    
                
                
//                println(parsedObject)
//                
//                let jsonDictionary = parsedObject as? NSDictionary
//                
//                
//                
//                
//                
//                        println(jsonDictionary)
//                
//    
//
//                
//                            
//                            
//
                
                    
                    
                }
                
                    
                    
            
                    
                
                
                
                println(self.jsonArray)

                
            }

        task.resume()

}
    
        


}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    

        

    
    
    

