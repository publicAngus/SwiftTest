func funcTest(){

	func funcType(){
		let i = 100;
		print("lala" +  " ha " + String(i));
		let f1 = getFunc();
		print(f1(1));
		runFunc(fp:func2);
	}

	func runFunc(fp:(Int,Int)->Void){
		fp(1,2);
	}

	func func2(num:Int,num2:Int){
		print(num+num2);
	}

	func getFunc()->(Int)->Int{
		func f1(num: Int)->Int{
			return 0;
		}
		return f1;
	}

}

class Basics{
	var Player = "Player";

	func Test(){
		//print("testing");
		//testi(string:"whatsapp");
		//testi(string:nil);
		//testTuple();
		//testArrayLoop();
		//testDict();
		//testWhile();
	}
	
	static func stest(){
		print("it is static tests");
	}

	func testWhile(){
		var i = 5;
		while (i>0){
			i-=1;
			print(i);
		}

		repeat{
			print("repeat \(i)");
			i+=1;
		}while(i<10)
	}
	
	func testDict(){
		var dict = ["one":1,"two":2];
		dict["v"] = 1000;
		dict.removeValue(forKey:"v");
		print("count == \(dict.count)");
		for (k,v) in dict{
			print("\(k) is \(v)");
		}
	}	

	func testArrayLoop(){
		var arr = ["a","b","c","d"];
		for it in arr{
			print(it);
			//arr+=[it];
			arr.append(it+"ap");
		}
		for i in 0...(arr.count-1) {
			print("\(i): is \(arr[i])");
		}
	}

	func testTuple(){
		let tp = (1,"one");
		var (num,word) = tp;
		print(num);
		print(word);
		num = 101;word="101";	
	}

	func getSum() -> Int {
		return 0;
	}

	func testi(string:String!){
		if(string == nil){ return;}
		var str: String;
		str = string;
		print("val is:");	
		print(str);
	}
}
