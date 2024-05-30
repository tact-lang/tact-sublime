// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

extends fun c(self: SomeMessage): Int {
// <- keyword.other.attribute.tact
//      ^^^ keyword.other.function.tact
//          ^ entity.name.function.tact
//           ^ punctuation.brackets.round.tact
//            ^^^^ variable.language.this.tact
//                ^ punctuation.colon.tact
//                  ^^^^^^^^^^^ entity.name.type.tact
//                             ^ punctuation.brackets.round.tact
//                              ^ punctuation.colon.tact
//                                ^^^ entity.name.type.tact
//                                    ^ punctuation.brackets.curly.tact

    let a: map<Int, Int> = null;
    // <- keyword.other.tact
    //  ^ variable.other.tact
    //   ^ punctuation.colon.tact
    //     ^^^ entity.name.type.tact
    //        ^ punctuation.brackets.angle.tact
    //         ^^^ entity.name.type.tact
    //            ^ punctuation.comma.tact
    //              ^^^ entity.name.type.tact
    //                 ^ punctuation.brackets.angle.tact
    //                   ^ keyword.operator.assignment.equal.tact
    //                     ^^^^ constant.language.null.tact
    //                         ^ punctuation.semi.tact

    {  }
    // <- punctuation.brackets.curly.tact
    // ^ punctuation.brackets.curly.tact

    {
        let b: Int = 20;
        // <- keyword.other.tact
        //  ^ variable.other.tact
        //   ^ punctuation.colon.tact
        //     ^^^ entity.name.type.tact
        //         ^ keyword.operator.assignment.equal.tact
        //           ^^ constant.numeric.decimal.tact
        //             ^ punctuation.semi.tact

        b  = 15;
        // <- variable.other.tact
        // ^ keyword.operator.assignment.equal.tact
        //   ^^ constant.numeric.decimal.tact
        //     ^ punctuation.semi.tact

        b  += 32;
        // <- variable.other.tact
        // ^^ keyword.operator.assignment.tact
        //    ^^ constant.numeric.decimal.tact
        //      ^ punctuation.semi.tact
    }

    self.description = "Tact is awesome!";
    // <- variable.language.this.tact
    //  ^ punctuation.dot.tact
    //   ^^^^^^^^^^^ variable.other.tact
    //               ^ keyword.operator.assignment.equal.tact
    //                 ^ string.quoted.double.tact punctuation.definition.string.begin.tact
    //                  ^^^^^^^^^^^^^^^^ string.quoted.double.tact
    //                                  ^ string.quoted.double.tact punctuation.definition.string.end.tact
    //                                   ^ punctuation.semi.tact

    self.description.description = "It really is!";
    // <- variable.language.this.tact
    //   ^^^^^^^^^^^ variable.other.tact
    //               ^^^^^^^^^^^ variable.other.tact
    //                           ^ keyword.operator.assignment.equal.tact
    //                             ^ string.quoted.double.tact punctuation.definition.string.begin.tact
    //                              ^^^^^^^^^^^^^ string.quoted.double.tact
    //                                           ^ string.quoted.double.tact punctuation.definition.string.end.tact

    if (true) {}
    // <- keyword.control.tact
    // ^ punctuation.brackets.round.tact
    //  ^^^^ constant.language.bool.tact
    //      ^ punctuation.brackets.round.tact
    //        ^ punctuation.brackets.curly.tact
    //         ^ punctuation.brackets.curly.tact

    if (false) {}
    //  ^^^^^ constant.language.bool.tact
    else {}
    // <- keyword.control.tact
    //   ^ punctuation.brackets.curly.tact
    //    ^ punctuation.brackets.curly.tact

    if (false) {}
    else if (true) {}
    //   ^^ keyword.control.tact
    //      ^ punctuation.brackets.round.tact
    //       ^^^^ constant.language.bool.tact
    //           ^ punctuation.brackets.round.tact
    //             ^ punctuation.brackets.curly.tact
    //              ^ punctuation.brackets.curly.tact

    while (false) {}
    // <- keyword.control.tact
    //    ^ punctuation.brackets.round.tact
    //     ^^^^^ constant.language.bool.tact
    //          ^ punctuation.brackets.round.tact
    //            ^ punctuation.brackets.curly.tact
    //             ^ punctuation.brackets.curly.tact

    repeat (5) {}
    // <- keyword.control.tact
    //     ^ punctuation.brackets.round.tact
    //      ^ constant.numeric.decimal.tact
    //       ^ punctuation.brackets.round.tact
    //         ^ punctuation.brackets.curly.tact
    //          ^ punctuation.brackets.curly.tact

    do {}
    // <- keyword.control.tact
    // ^ punctuation.brackets.curly.tact
    //  ^ punctuation.brackets.curly.tact
    until (false);
    // <- keyword.control.tact
    //    ^ punctuation.brackets.round.tact
    //     ^^^^^ constant.language.bool.tact
    //          ^ punctuation.brackets.round.tact
    //           ^ punctuation.semi.tact

    try {}
    // <- keyword.control.tact
    //  ^ punctuation.brackets.curly.tact
    //   ^ punctuation.brackets.curly.tact

    try {} catch (e) {}
    // <- keyword.control.tact
    //  ^ punctuation.brackets.curly.tact
    //   ^ punctuation.brackets.curly.tact
    //     ^^^^^ keyword.control.tact
    //           ^ punctuation.brackets.round.tact
    //            ^ variable.other.tact
    //             ^ punctuation.brackets.round.tact
    //               ^ punctuation.brackets.curly.tact
    //                ^ punctuation.brackets.curly.tact

    foreach (k, v in a) {}
    // <- keyword.control.tact
    //      ^ punctuation.brackets.round.tact
    //       ^ variable.other.tact
    //        ^ punctuation.comma.tact
    //          ^ variable.other.tact
    //            ^^ keyword.control.tact
    //               ^ variable.other.tact
    //                ^ punctuation.brackets.round.tact
    //                  ^ punctuation.brackets.curly.tact
    //                   ^ punctuation.brackets.curly.tact

    0  ;
    // <- constant.numeric.decimal.tact
    // ^ punctuation.semi.tact

    return 0;
    // <- keyword.control.tact
    //     ^ constant.numeric.decimal.tact
    //      ^ punctuation.semi.tact
}
// <- punctuation.brackets.curly.tact
