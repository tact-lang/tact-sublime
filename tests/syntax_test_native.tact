// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

@name(load_int)
// <- entity.other.attribute-name.tact
//   ^ punctuation.brackets.round.tact
//    ^^^^^^^^ entity.name.function.func.tact
//            ^ punctuation.brackets.round.tact

extends mutates native loadInt(self: Slice, l: Int, ): Int;
// <- keyword.other.attribute.tact
//      ^^^^^^^ keyword.other.attribute.tact
//              ^^^^^^ keyword.other.function.tact
//                     ^^^^^^^ entity.name.function.tact
//                            ^ punctuation.brackets.round.tact
//                             ^^^^ variable.language.this.tact
//                                 ^ punctuation.colon.tact
//                                   ^^^^^ entity.name.type.tact
//                                        ^ punctuation.comma.tact
//                                          ^ variable.other.tact
//                                           ^ punctuation.colon.tact
//                                             ^^^ entity.name.type.tact
//                                                ^ punctuation.comma.tact
//                                                  ^ punctuation.brackets.round.tact
//                                                   ^ punctuation.colon.tact
//                                                     ^^^ entity.name.type.tact
//                                                        ^ punctuation.semi.tact

asm fun increase(): Int { INC }
// <- entity.other.attribute-name.tact
//  ^^^ keyword.other.function.tact
//      ^^^^^^^^ entity.name.function.tact
//              ^^ punctuation.brackets.round.tact
//                ^ punctuation.colon.tact
//                  ^^^ entity.name.type.tact
//                      ^ punctuation.brackets.curly.tact
//                        ^^^ constant.other.caps.tact
//                            ^ punctuation.brackets.curly.tact

asm(second first -> 0) fun addTwo(first: Int, second: Int): Int { SOMETHING SOMETHING }
// <- entity.other.attribute-name.tact
// ^ punctuation.brackets.round.tact
//  ^^^^^^ variable.other.tact
//         ^^^^^ variable.other.tact
//               ^^ keyword.operator.mapsto.tact
//                  ^ constant.numeric.decimal.tact
//                   ^ punctuation.brackets.round.tact