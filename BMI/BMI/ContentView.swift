

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        ZStack{
            Color.white
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea()
            VStack{                Image("bmi")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding(30)


                Text("BMI = \(result)")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                
                Text("Health = \(health)")
                    .foregroundColor(Color("blue"))
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
                VStack{
                    HStack{
                    Text("Height")
                        .fontWeight(.bold)
                        .offset(y: 11)
                        .foregroundColor(Color("blue"))
                        Spacer()
                    } .frame(width: 240)
                    
                ZStack{
                    Color("blue")
                        .cornerRadius(50)
                        .frame(width: 270, height: 50)

                TextField("", text: $height)
                            .foregroundColor(.white)
                        .frame(width: 260, height: 45)

                } .shadow(radius: 15) }
//Weight
                VStack{
                    HStack{
                    Text("Weight")
                        .fontWeight(.bold)
                        .offset(y: 11)
                        .foregroundColor(Color("blue"))
                        Spacer()
                    } .frame(width: 240)
                    
                ZStack{
                    Color("blue")
                        .cornerRadius(50)
                        .frame(width: 270, height: 50)

                TextField("", text: $weight)
                            .foregroundColor(.white)
                        .frame(width: 260, height: 45)

                } .shadow(radius: 15) }
                
                ZStack{
                    Color(.black)
                        .frame(width: 279, height: 60)
                        .cornerRadius(50)
                        .shadow(radius: 20)

                    Text("Check")
                        .foregroundColor(.white)
                        .fontWeight(.bold)



                } .padding(35) .shadow(color: .black, radius: 5)

                    .onTapGesture {
                        
                        result = res(h: Double(height) ?? 0.0, w: Double(weight) ?? 0.0)
                        
                        if result <= 20 {
                            health = "Poor"
                        } else if result <= 25 {
                            health = "Good"
                        } else {
                            health = "Fat"
                        }

                    }
                
            }
        }
    }
    func res(h: Double, w: Double) -> Double {
        return w / (h * h)
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
