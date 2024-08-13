//
//  ContentView.swift
//  Calculator
//
//  Created by Kane Denzil Quadras Bernard on 2024-06-17.
//

import SwiftUI

enum CalculatorButtons: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "÷"
    case percentage = "%"
    case plusMinus = "+/-"
    case decimal = "."
    case clear = "AC"
    case equal = "="
    
    var buttonColor: Color {
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return Color(.orange)
        case .clear,.plusMinus,.percentage:
            return Color(.lightGray)
        default:
            return Color(.darkGray)
        }
    }
    var textColor: Color {
        switch self {
        case .clear,.plusMinus,.percentage:
            return Color(.black)
        default:
            return Color(.white)
        }
    }
}

enum Operation {
    case add, subtract, multiply, divide, none
}

enum Converters {
    case decimal, percentage, plusMinus
}

struct ContentView: View {
    
    @State var value: String = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    
    let buttons: [[CalculatorButtons]] = [
        [.clear, .plusMinus, .percentage, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six,.subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal],
    ]
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack{
                    Spacer()
                    Text(value)
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                }
                .padding()
                
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                self.onButtonPress(button: item)
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 30))
                                    .frame(
                                        width: self.buttonWidth(item: item),
                                        height: self.buttonHeight()
                                    )
                                    .background(item.buttonColor)
                                    .foregroundColor(item.textColor)
                                    .cornerRadius(self.buttonWidth(item: item)/2)
                            })
                        }
                        
                    }.padding(.bottom, 3)
                }
            }
        }
    }
    func onButtonPress(button: CalculatorButtons) {

        switch button {
        case .add, .subtract, .multiply, .divide, .equal:
            self.runningNumber = Int(self.value) ?? 0
            if button == .add {
                self.currentOperation = .add
            } else if button == .subtract {
                self.currentOperation = .subtract
            }else if button == .divide {
                self.currentOperation = .divide
            }else if button == .multiply {
                self.currentOperation = .multiply
            } else if button == .equal {
                let runningValue = self.runningNumber
                let currentValue = Int(self.value) ?? 0
                switch self.currentOperation {
                case .add:
                    self.value = "\(runningValue + currentValue)"
                case .subtract:
                    self.value =  "\(runningValue - currentValue)"
                case .multiply:
                    self.value = "\(runningValue * currentValue)"
                case .divide:
                    self.value = "\(runningValue / currentValue)"
                case .none:
                    break
                }
            }
            if button != .equal {
                self.value  = "0"
            }
            break
        case .clear:
            self.value = "0"
            break
        case .percentage:
           break
        case .plusMinus:
            break
        case .decimal:
            break
        default:
            let number = button.rawValue
            if self.value ==  "0" {
                value = number
            } else {
                self.value = "\(self.value)\(number)"
            }
            
        }
        
    }
    func buttonWidth(item: CalculatorButtons) -> CGFloat {
        if item == .zero {
            return ((UIScreen.main.bounds.width - (4*12)) / 4) * 2
        }
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }

    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
    }


#Preview {
    ContentView()
}

