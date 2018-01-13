enum ET: Error{
	case e1;
	case e2(msg: String);
}


class ErrorTest{
	static func Throwtest() throws {
		//throw ET.e1;
		throw ET.e2(msg:"msg of e2");
	}

	static func CatchErr(){
		do{
			try Throwtest();
			print("it is ok!");
		}catch ET.e1{
			print("it is error e1");		
		}
		catch ET.e2(let msg){
			print(msg);
		}
		catch{
			print("other error");
		}
	}
}
