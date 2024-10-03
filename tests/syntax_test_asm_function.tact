// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

asm fun empty() { }
// <- entity.other.attribute-name.tact
//  ^^^ keyword.other.function.tact
//      ^^^^^ entity.name.function.tact
//           ^ punctuation.brackets.round.tact
//            ^ punctuation.brackets.round.tact
//              ^ punctuation.brackets.curly.tact
//                ^ punctuation.brackets.curly.tact

asm() fun empty2() { }
// <- entity.other.attribute-name.tact
// ^^ punctuation.brackets.round.tact

asm(-> 000) fun rets(): Int { }
// <- entity.other.attribute-name.tact
// ^ punctuation.brackets.round.tact
//  ^^ keyword.operator.mapsto.tact
//     ^^^ constant.numeric.decimal.tact
//        ^ punctuation.brackets.round.tact

asm(arg1 arg2 -> 0) fun args(arg1: Int, arg2: Int): Int { }
// <- entity.other.attribute-name.tact
// ^ punctuation.brackets.round.tact
//  ^^^^ variable.other.tact
//       ^^^^ variable.other.tact
//            ^^ keyword.operator.mapsto.tact
//               ^ constant.numeric.decimal.tact
//                ^ punctuation.brackets.round.tact

struct Eleven { /* imagine 11 fields */ }

asm(-> 1_0 9 8 7 6 5 4 3 2 1 0) extends fun eleven(self: Int): Eleven { INSTRUCTION INSTRUCTION 000 }
// <- entity.other.attribute-name.tact
// ^ punctuation.brackets.round.tact
//  ^^ keyword.operator.mapsto.tact
//     ^^^ constant.numeric.decimal.tact
//         ^ constant.numeric.decimal.tact
//           ^ constant.numeric.decimal.tact
//             ^ constant.numeric.decimal.tact
//               ^ constant.numeric.decimal.tact
//                 ^ constant.numeric.decimal.tact
//                   ^ constant.numeric.decimal.tact
//                     ^ constant.numeric.decimal.tact
//                       ^ constant.numeric.decimal.tact
//                         ^ constant.numeric.decimal.tact
//                           ^ constant.numeric.decimal.tact
//                            ^ punctuation.brackets.round.tact
//                              ^^^^^^^ keyword.other.attribute.tact
//                                      ^^^ keyword.other.function.tact
//                                          ^^^^^^ entity.name.function.tact
//                                                ^ punctuation.brackets.round.tact
//                                                 ^^^^ variable.language.this.tact
//                                                     ^ punctuation.colon.tact
//                                                       ^^^ entity.name.type.tact
//                                                          ^ punctuation.brackets.round.tact
//                                                           ^ punctuation.colon.tact
//                                                             ^^^^^^ entity.name.type.tact
//                                                                    ^ punctuation.brackets.curly.tact
//                                                                      ^^^^^^^^^^^ constant.other.caps.tact
//                                                                                  ^^^^^^^^^^^ constant.other.caps.tact
//                                                                                              ^^^ constant.numeric.decimal.tact
//                                                                                                  ^ punctuation.brackets.curly.tact

asm fun isIntAnInt(x: Int): Bool {
    <{
        TRY:<{
            0 PUSHINT ADD DROP -1 PUSHINT
            // <- constant.numeric.decimal.tact
            //^^^^^^^ constant.other.caps.tact
            //        ^^^ constant.other.caps.tact
            //            ^^^^ constant.other.caps.tact
            //                 ^ keyword.operator.arithmetic.tact
            //                  ^ constant.numeric.decimal.tact
            //                    ^^^^^^^ constant.other.caps.tact
        }>CATCH<{
            2DROP 0 PUSHINT
            //    ^ constant.numeric.decimal.tact
            //      ^^^^^^^ constant.other.caps.tact
        }>
    }>CONT 1 1 CALLXARGS
    //     ^ constant.numeric.decimal.tact
    //       ^ constant.numeric.decimal.tact
    //         ^^^^^^^^^ constant.other.caps.tact
}
