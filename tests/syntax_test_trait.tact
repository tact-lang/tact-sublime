// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

@interface("filled")
// <- entity.other.attribute-name.tact
//        ^ punctuation.brackets.round.tact
//         ^ string.quoted.double.tact punctuation.definition.string.begin.tact
//          ^^^^^^ string.quoted.double.tact
//                ^ string.quoted.double.tact punctuation.definition.string.end.tact
//                 ^ punctuation.brackets.round.tact
@interface("non-filled")
// <- entity.other.attribute-name.tact
//        ^ punctuation.brackets.round.tact
//         ^ string.quoted.double.tact punctuation.definition.string.begin.tact
//          ^^^^^^^^^^ string.quoted.double.tact
//                    ^ string.quoted.double.tact punctuation.definition.string.end.tact
//                     ^ punctuation.brackets.round.tact
trait Filled with Deployable, Ownable, {
// <- keyword.other.trait.tact
//    ^^^^^^ entity.name.type.tact
//           ^^^^ keyword.other.tact
//                ^^^^^^^^^^ entity.name.type.tact
//                          ^ punctuation.comma.tact
//                            ^^^^^^^ entity.name.type.tact
//                                   ^ punctuation.comma.tact
//                                     ^ punctuation.brackets.curly.tact

    const a: Int;
    // <- keyword.other.tact
    //    ^ constant.other.declaration.tact
    //     ^ punctuation.colon.tact
    //       ^^^ entity.name.type.tact
    //          ^ punctuation.semi.tact

    b  : Int;
    // <- variable.other.tact
    // ^ punctuation.colon.tact
    //   ^^^ entity.name.type.tact
    //      ^ punctuation.semi.tact

    get fun c(arg1: String): Int {
    // <- keyword.other.attribute.tact
    //  ^^^ keyword.other.function.tact
    //      ^ entity.name.function.tact
    //       ^ punctuation.brackets.round.tact
    //        ^^^^ variable.other.tact
    //            ^ punctuation.colon.tact
    //              ^^^^^^ entity.name.type.tact
    //                    ^ punctuation.brackets.round.tact
    //                     ^ punctuation.colon.tact
    //                       ^^^ entity.name.type.tact
    //                           ^ punctuation.brackets.curly.tact

        return self.b + self.a + arg1;
        // <- keyword.control.tact
        //     ^^^^ variable.language.this.tact
        //         ^ punctuation.dot.tact
        //          ^ variable.other.tact
        //            ^ keyword.operator.arithmetic.tact
        //              ^^^^ variable.language.this.tact
        //                  ^ punctuation.dot.tact
        //                   ^ variable.other.tact
        //                     ^ keyword.operator.arithmetic.tact
        //                       ^^^^ variable.other.tact
        //                           ^ punctuation.semi.tact

    }
    // <- punctuation.brackets.curly.tact 

    override inline abstract fun d() {}
    // <- keyword.other.attribute.tact storage.modifier.tact
    //       ^^^^^^ keyword.other.attribute.tact
    //              ^^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
    //                       ^^^ keyword.other.function.tact
    //                           ^ entity.name.function.tact
    //                            ^ punctuation.brackets.round.tact
    //                             ^ punctuation.brackets.round.tact
    //                               ^ punctuation.brackets.curly.tact
    //                                ^ punctuation.brackets.curly.tact

}
// <- punctuation.brackets.curly.tact
