import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
       
        var finalMessage = ""
        var haveMultiplier = false
        
        for char in message {
          
           var multiplier = 1
        //   var charIndex = message.startIndex
            
            if char.isNumber && !haveMultiplier {
                
                multiplier = Int(char.description)!
                haveMultiplier = true
                var charIndex = char.self
                
                if multiplier == 0 {
                    return ""
                }
            
//                print("наличие множителя = \(haveMultiplier)")
//                print("множитель = \(multiplier)")
//                print(finalMessage)
//                print("CharIndex = \(charIndex) \(type(of: charIndex))")
            }
            
            if char.self != "[" && !char.isNumber && char.self != "]" {
                
                finalMessage.append(char.self)
                print(finalMessage)
            
            }
        }
        print(finalMessage)
        return String(finalMessage)
    }
}
