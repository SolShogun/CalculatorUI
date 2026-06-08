import SwiftUI

struct ContentView: View {

    let buttons = [
        ["AC", "+/-", "%", "÷"],
        ["7", "8", "9", "×"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", "="]
    ]

    var body: some View {

        VStack(spacing: 4) {

            Spacer()

            VStack(alignment: .trailing) {

                Text("13 × 20 =")
                    .font(.title2)
                    .foregroundColor(.white)

                Text("260")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
            }
            .padding()

            ForEach(buttons, id: \.self) { row in

                HStack(spacing: 4) {

                    ForEach(row, id: \.self) { button in

                        Button(button) {

                        }
                        .font(.title)
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity
                        )
                        .foregroundColor(.white)
                        .background(colorFor(button))
                        .cornerRadius(10)
                    }
                }
            }
        }
        .padding()
        .background(Color.black)
    }

    func colorFor(_ button: String) -> Color {

        switch button {

        case "+", "-", "×", "÷", "=":
            return .orange

        case "AC", "+/-", "%":
            return .gray

        default:
            return Color(.darkGray)
        }
    }
}

#Preview {
    ContentView()
}