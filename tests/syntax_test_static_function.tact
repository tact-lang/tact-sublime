// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

fun empty();
// <- keyword.other.function.tact
//  ^^^^^ entity.name.function.tact
//       ^ punctuation.brackets.round.tact
//        ^ punctuation.brackets.round.tact
//         ^ punctuation.semi.tact

abstract fun abstractf();
// <- keyword.other.attribute.tact storage.modifier.tact

abstract fun abstractType(): Int;
//                         ^ punctuation.colon.tact
//                           ^^^ entity.name.type.tact

abstract fun abstractWithParam(param1: Int);
//                             ^^^^^^ variable.other.tact
//                                   ^ punctuation.colon.tact
//                                     ^^^ entity.name.type.tact

abstract fun abstractTypeWithParam(param1: Int): Int;
//                                 ^^^^^^ variable.other.tact
//                                       ^ punctuation.colon.tact
//                                         ^^^ entity.name.type.tact
//                                             ^ punctuation.colon.tact
//                                               ^^^ entity.name.type.tact

fun basic(): Int {
//         ^ punctuation.colon.tact
//           ^^^ entity.name.type.tact
    return 0;
    // <- keyword.control.tact
    //     ^ constant.numeric.decimal.tact
    //      ^ punctuation.semi.tact
}

extends fun extendsType(self: String): String {
//                      ^^^^ variable.language.this.tact
//                          ^ punctuation.colon.tact
//                            ^^^^^^ entity.name.type.tact
    return self;
    //     ^^^^ variable.language.this.tact
}

extends mutates fun extendsMutatesType(self: String) {
//                                     ^^^^ variable.language.this.tact
    self = self + self;
    // <- variable.language.this.tact
    //     ^^^^ variable.language.this.tact
    //            ^^^^ variable.language.this.tact
}

get mutates extends virtual override inline abstract fun allAttr();
// <- keyword.other.attribute.tact
//  ^^^^^^^ keyword.other.attribute.tact
//          ^^^^^^^ keyword.other.attribute.tact
//                  ^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//                          ^^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//                                   ^^^^^^ keyword.other.attribute.tact
//                                          ^^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//                                                   ^^^ keyword.other.function.tact

not_a_keyword fun broken();
// <- variable.other.tact
