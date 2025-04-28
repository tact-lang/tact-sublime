// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"
// fmt-ignore

struct Basic {
    prop: Int;
    message: Cell;
    struct: Cell;
}

extends fun c(self: Int, ) {
//            ^^^^ variable.language.this.tact
//                     ^ punctuation.comma.tact

    // unbox_not_null_expression (non-null assert)
    null!!;
    //  ^^ keyword.operator.logical.tact

    // method_call_expression
    95.toString();
    // ^^^^^^^^ entity.name.function.tact

    // method_call_expression and non-null assert
    a  .asCell()!!.toString();
    // <- variable.other.tact
    // ^ punctuation.dot.tact
    //  ^^^^^^ entity.name.function.tact
    //        ^ punctuation.brackets.round.tact
    //         ^ punctuation.brackets.round.tact
    //          ^^ keyword.operator.logical.tact
    //            ^ punctuation.dot.tact
    //             ^^^^^^^^ entity.name.function.tact
    //                     ^ punctuation.brackets.round.tact
    //                      ^ punctuation.brackets.round.tact
    //                       ^ punctuation.semi.tact

    /// field_access_expression
    context().sender;
    // <- entity.name.function.tact
    //        ^^^^^^ variable.other.tact

    // static_call_expression
    now();
    // <- entity.name.function.tact
    now ();
    // <- entity.name.function.tact
    message(MessageParameters{to: sender(), value: 0});
    // <- entity.name.function.tact
    //      ^^^^^^^^^^^^^^^^^ entity.name.type.tact
    //                       ^ punctuation.brackets.curly.tact
    //                        ^^ variable.other.tact
    //                          ^ punctuation.colon.tact
    //                            ^^^^^^ entity.name.function.tact
    //                                  ^^ punctuation.brackets.round.tact
    //                                    ^ punctuation.comma.tact
    //                                      ^^^^^ variable.other.tact
    //                                           ^ punctuation.colon.tact
    //                                             ^ constant.numeric.decimal.tact
    //                                              ^ punctuation.brackets.curly.tact
    //                                               ^ punctuation.brackets.round.tact
    //                                                ^ punctuation.semi.tact

    // map
    map<> {};
    // <- entity.name.type.tact
    // ^^ punctuation.brackets.angle.tact
    //    ^^ punctuation.brackets.curly.tact
    //      ^ punctuation.semi.tact
    map<Int, Int,> {};
    //  ^^^ entity.name.type.tact
    //     ^ punctuation.comma.tact
    //       ^^^ entity.name.type.tact
    //          ^ punctuation.comma.tact
    //           ^ punctuation.brackets.angle.tact
    map<Address, Int as uint8> {
        //       ^^^ entity.name.type.tact
        //           ^^ keyword.other.as.tact storage.modifier.tact
        //              ^^^^^ entity.name.type.tact
        //                   ^ punctuation.brackets.angle.tact
        address("yo"): 15,
        // <- entity.name.function.tact
        //     ^ punctuation.brackets.round.tact
        //      ^ string.quoted.double.tact punctuation.definition.string.begin.tact
        //       ^^ string.quoted.double.tact
        //         ^ string.quoted.double.tact punctuation.definition.string.end.tact
        //          ^ punctuation.brackets.round.tact
        //           ^ punctuation.colon.tact
        //             ^^ constant.numeric.decimal.tact
        //               ^ punctuation.comma.tact
        address("yo2"): 16,
        // <- entity.name.function.tact
        //      ^^^^^ string.quoted.double.tact
        };
    //  ^ punctuation.brackets.curly.tact
    //   ^ punctuation.semi.tact

    // set
    set<> {};
    // <- entity.name.type.tact
    // ^^ punctuation.brackets.angle.tact
    //    ^^ punctuation.brackets.curly.tact
    //      ^ punctuation.semi.tact
        set<Int,> {
        // ^ punctuation.brackets.angle.tact
        //  ^^^ entity.name.type.tact
        //     ^ punctuation.comma.tact
        //      ^ punctuation.brackets.angle.tact
        //        ^ punctuation.brackets.curly.tact
        10,
        // <- constant.numeric.decimal.tact
        //^ punctuation.comma.tact
        20,
        // <- constant.numeric.decimal.tact
        //^ punctuation.comma.tact
        100,
        // <- constant.numeric.decimal.tact
        // ^ punctuation.comma.tact
        ascii("tact"),
        // <- entity.name.function.tact
        //   ^ punctuation.brackets.round.tact
        //    ^ string.quoted.double.tact punctuation.definition.string.begin.tact
        //     ^^^^ string.quoted.double.tact
        //         ^ string.quoted.double.tact punctuation.definition.string.end.tact
        //          ^ punctuation.brackets.round.tact
        //           ^ punctuation.comma.tact
        };
    //  ^ punctuation.brackets.curly.tact
    //   ^ punctuation.semi.tact

    // parens_expression
    ( 10 );
    // <- punctuation.brackets.round.tact
    // ^ constant.numeric.decimal.tact
    //   ^ punctuation.brackets.round.tact
    //    ^ punctuation.semi.tact

    // struct_instance_expression
    Basic{prop: ton("1"), message: emptyCell(), struct: emptyCell(), };
    // <- entity.name.type.tact
    //   ^ punctuation.brackets.curly.tact
    //    ^^^^ variable.other.tact
    //        ^ punctuation.colon.tact
    //          ^^^ entity.name.function.tact
    //             ^ punctuation.brackets.round.tact
    //              ^ string.quoted.double.tact punctuation.definition.string.begin.tact
    //               ^ string.quoted.double.tact
    //                ^ string.quoted.double.tact punctuation.definition.string.end.tact
    //                 ^ punctuation.brackets.round.tact
    //                  ^ punctuation.comma.tact
    //                    ^^^^^^^ variable.other.tact
    //                           ^ punctuation.colon.tact
    //                             ^^^^^^^^^ entity.name.function.tact
    //                                      ^^ punctuation.brackets.round.tact
    //                                        ^ punctuation.comma.tact
    //                                          ^^^^^^ variable.other.tact
    //                                                ^ punctuation.colon.tact
    //                                                  ^^^^^^^^^ entity.name.function.tact
    //                                                           ^^ punctuation.brackets.round.tact
    //                                                             ^ punctuation.comma.tact
    //                                                               ^ punctuation.brackets.curly.tact
    //                                                                ^ punctuation.semi.tact

    // punned (and incomplete) struct_instance_expression
    Basic{prop, };
    // <- entity.name.type.tact
    //   ^ punctuation.brackets.curly.tact
    //    ^^^^ variable.other.tact
    //        ^ punctuation.comma.tact
    //          ^ punctuation.brackets.curly.tact
    //           ^ punctuation.semi.tact

    // integer
    0b101;
    // <- constant.numeric.bin.tact
    //   ^ punctuation.semi.tact
    0xf0f;
    // <- constant.numeric.hex.tact
    0o707;
    // <- constant.numeric.oct.tact
    909;
    // <- constant.numeric.decimal.tact
    1_0_1;
    // <- constant.numeric.decimal.tact
    00001;
    // <- constant.numeric.decimal.tact

    // boolean
    true;
    // <- constant.language.bool.tact
    //  ^ punctuation.semi.tact
    false;
    // <- constant.language.bool.tact

    // identifier
    name;
    // <- variable.other.tact
    //  ^ punctuation.semi.tact

    // null
    null;
    // <- constant.language.null.tact
    //  ^ punctuation.semi.tact

    // initOf_expression
    initOf Contract(123, 123, );
    // <- keyword.operator.new.tact
    //     ^^^^^^^^ entity.name.type.tact
    //             ^ punctuation.brackets.round.tact
    //              ^^^ constant.numeric.decimal.tact
    //                 ^ punctuation.comma.tact
    //                   ^^^ constant.numeric.decimal.tact
    //                      ^ punctuation.comma.tact
    //                        ^ punctuation.brackets.round.tact
    //                         ^ punctuation.semi.tact

    // codeOf_expression
    codeOf Contract;
    // <- keyword.operator.new.tact
    //     ^^^^^^^^ entity.name.type.tact
    //             ^ punctuation.semi.tact

    // string
       "// \\ \" \n\r \t\v \b\f \u{0} \u{FFFFFF} \u0000 \xFF";
    // ^ string.quoted.double.tact punctuation.definition.string.begin.tact
    //     ^^ constant.character.escape.tact
    //        ^^ constant.character.escape.tact
    //           ^^ constant.character.escape.tact
    //             ^^ constant.character.escape.tact
    //                ^^ constant.character.escape.tact
    //                  ^^ constant.character.escape.tact
    //                     ^^ constant.character.escape.tact
    //                       ^^ constant.character.escape.tact
    //                          ^^^^^ constant.character.escape.tact
    //                                ^^^^^^^^^^ constant.character.escape.tact
    //                                           ^^^^^^ constant.character.escape.tact
    //                                                  ^^^^ constant.character.escape.tact
    //  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.tact
    //                                                      ^ string.quoted.double.tact punctuation.definition.string.end.tact
    //                                                       ^ punctuation.semi.tact

    // self, not as a builtin, but as a parameter
    self.toString();
    // <- variable.language.this.tact
    //   ^^^^^^^^ entity.name.function.tact
}
