// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

const declared: String;
// <- keyword.other.tact
//    ^^^^^^^^ variable.other.tact
//            ^ punctuation.colon.tact
//              ^^^^^^ entity.name.type.tact
//                    ^ punctuation.semi.tact

const DeclaredUppercase: String;
// <- keyword.other.tact
//    ^^^^^^^^^^^^^^^^^ constant.other.caps.tact

override virtual abstract const theAnswer: Int = 42;
// <- keyword.other.attribute.tact storage.modifier.tact
//       ^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//               ^^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//                        ^^^^^ keyword.other.tact
//                              ^^^^^^^^^ variable.other.tact
//                                       ^ punctuation.colon.tact
//                                         ^^^ entity.name.type.tact
//                                             ^ keyword.operator.assignment.equal.tact
//                                               ^^ constant.numeric.decimal.tact
//                                                 ^ punctuation.semi.tact

fun refTest(): Int {
    return theAnswer + 0;
    //     ^^^^^^^^^ variable.other.tact
}
