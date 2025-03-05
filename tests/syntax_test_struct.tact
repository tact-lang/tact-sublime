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

struct Serialization {
    f1: Int as uint1;
    //         ^^^^^ entity.name.type.tact
    f2: Int as int1;
    //         ^^^^ entity.name.type.tact
    f3: Int as uint10;
    //         ^^^^^^ entity.name.type.tact
    f4: Int as int10;
    //         ^^^^^ entity.name.type.tact
    f5: Int as uint100;
    //         ^^^^^^^ entity.name.type.tact
    f6: Int as int100;
    //         ^^^^^^ entity.name.type.tact
    f7: Int as uint200;
    //         ^^^^^^^ entity.name.type.tact
    f8: Int as int249;
    //         ^^^^^^ entity.name.type.tact
    f9: Int as uint256;
    //         ^^^^^^^ entity.name.type.tact
    f10: Int as int257;
    //          ^^^^^^ entity.name.type.tact
    f9wrong: Int as uint257;
    //              ^^^^^^^ variable.other.tact
    f10wrong: Int as int258;
    //               ^^^^^^ variable.other.tact

    b32: Slice as bytes32;
    //            ^^^^^^^ entity.name.type.tact
    b64: Slice as bytes64;
    //            ^^^^^^^ entity.name.type.tact
    coin: Int as coins;
    //           ^^^^^ entity.name.type.tact
    payload: Slice as remaining;
    //                ^^^^^^^^^ entity.name.type.tact

    v16: Int as varint16;
    //          ^^^^^^^^ entity.name.type.tact
    v32: Int as varint32;
    //          ^^^^^^^^ entity.name.type.tact

    vu16: Int as varuint16;
    //           ^^^^^^^^^ entity.name.type.tact
    vu32: Int as varuint32;
    //           ^^^^^^^^^ entity.name.type.tact
}
