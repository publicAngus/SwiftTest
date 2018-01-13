class ClassOne{
	init(){
		print("ClassOne Init");
	}
	init(_ quant: Int){
		print("ClassOne Quant: \(quant)");
	}
	class func test(){
		print("ClassOne type func test");
	}
}

class ClassA:ProtoOne{
	init(){
		print("ClassA Init");
	}

	func protest(){
		print("protest in ClassA!");
	}
}

class ClassTwo:ClassOne{
	var i: Int = 100;
	//override init(){
	//	print("ClassTwo Init");
	//	super.init();
	//}

	var prot: ProtoOne?

	override class func test(){
		print("ClassTwo type func test");
	}
	
	func ol(){
		if(prot != nil){
			prot!.protest();
		}
		print("ol:no param");
	}

	func ol(name: String){
		print("ol:name \(name)");
	}
}

protocol ProtoOne {
	func protest();
}
