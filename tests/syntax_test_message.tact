// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

message Empty {}
// <- keyword.other.message.tact
//      ^^^^^ entity.name.type.tact
//            ^ punctuation.brackets.curly.tact
//             ^ punctuation.brackets.curly.tact

message(0x42) WithValue {}
// <- keyword.other.message.tact
//     ^ punctuation.brackets.round.tact
//      ^^^^ constant.numeric.hex.tact
//          ^ punctuation.brackets.round.tact
//            ^^^^^^^^^ entity.name.type.tact
//                      ^ punctuation.brackets.curly.tact
//                       ^ punctuation.brackets.curly.tact
