import Darwin

// Apple Swift version 2.0

struct Octal {
    
    var stringValue = ""
    
    var toDecimal:Int = 0
    
    func isValidOctal() -> Bool{
        return (Int(stringValue) ?? -1) > -1 ? true : false
    }
    
    private func oct2int(input:String)->Int{
        let orderedInput = Array(input.characters.reverse())
        var tempInt:Int = 0
        for (inx,each) in orderedInput.enumerate(){
            let tempCharInt = Int("\(each)") ?? 0
            if tempCharInt > 7 {return 0}
            let tempOctPower = Int(pow(Double(8),Double(inx)))
            tempInt += tempOctPower * tempCharInt
        }
        return tempInt
    }
    
    
    init( _ sv:String){
        self.stringValue = sv
        
        if isValidOctal() {
            self.toDecimal = oct2int(sv)
        }
        
    }
    
}