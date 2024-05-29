// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

struct Whatever {
// <- keyword.other.struct.tact
//     ^^^^^^^^ entity.name.type.tact
//              ^ punctuation.brackets.curly.tact

    a  : Int;
    // <- variable.other.tact
    // ^ punctuation.colon.tact
    //   ^^^ entity.name.type.tact
    //      ^ punctuation.semi.tact

    b  : String = "hello!";
    // <- variable.other.tact
    // ^ punctuation.colon.tact
    //   ^^^^^^ entity.name.type.tact
    //                    ^ punctuation.semi.tact

    c  : Int as int32;
    // <- variable.other.tact
    // ^ punctuation.colon.tact
    //   ^^^ entity.name.type.tact
    //       ^^ keyword.other.as.tact storage.modifier.tact
    //          ^^^^^ entity.name.type.tact
    //               ^ punctuation.semi.tact

    d  : Int as int256 = 10;
    // <- variable.other.tact
    // ^ punctuation.colon.tact
    //   ^^^ entity.name.type.tact
    //       ^^ keyword.other.as.tact storage.modifier.tact
    //          ^^^^^^ entity.name.type.tact
    //                 ^ keyword.operator.assignment.equal.tact
    //                   ^^ constant.numeric.decimal.tact
    //                     ^ punctuation.semi.tact

}
// <- punctuation.brackets.curly.tact

fun TestStruct() {
    Whatever{a: 10, b: "hello!", c: 10, d: 10, };
    // <- entity.name.type.tact
    //      ^ punctuation.brackets.curly.tact
    //       ^ variable.other.tact
    //        ^ punctuation.colon.tact
    //          ^^ constant.numeric.decimal.tact
    //            ^ punctuation.comma.tact
    //              ^ variable.other.tact
    //               ^ punctuation.colon.tact
    //                 ^ string.quoted.double.tact punctuation.definition.string.begin.tact
    //                  ^^^^^^ string.quoted.double.tact
    //                        ^ string.quoted.double.tact punctuation.definition.string.end.tact
    //                         ^ punctuation.comma.tact
    //                           ^ variable.other.tact
    //                            ^ punctuation.colon.tact
    //                              ^^ constant.numeric.decimal.tact
    //                                ^ punctuation.comma.tact
    //                                  ^ variable.other.tact
    //                                   ^ punctuation.colon.tact
    //                                     ^^ constant.numeric.decimal.tact
    //                                       ^ punctuation.comma.tact
    //                                         ^ punctuation.brackets.curly.tact
    //                                          ^ punctuation.semi.tact
}
