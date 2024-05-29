// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

fun c() {
    false || true;
    // <- constant.language.bool.tact
    //    ^^ keyword.operator.logical.tact
    //       ^^^^ constant.language.bool.tact
    //           ^ punctuation.semi.tact

    true && true;
    //   ^^ keyword.operator.logical.tact

    true != true;
    //   ^^ keyword.operator.comparison.tact

    true == true;
    //   ^^ keyword.operator.comparison.tact

    2  > 1;
    // ^ keyword.operator.comparison.tact

    2  >= 2;
    // ^^ keyword.operator.comparison.tact

    1  < 2;
    // ^ keyword.operator.comparison.tact

    2  <= 2;
    // ^^ keyword.operator.comparison.tact

    5  >> 1;
    // ^^ keyword.operator.bitwise.tact

    1  << 5;
    // ^^ keyword.operator.bitwise.tact

    0  ^ 1;
    // ^ keyword.operator.bitwise.tact

    0  & 1;
    // ^ keyword.operator.bitwise.tact

    0  | 1;
    // ^ keyword.operator.bitwise.tact

    0  + 1 - 2;
    // ^ keyword.operator.arithmetic.tact
    //     ^ keyword.operator.arithmetic.tact

    0  * 1 / 5 % 10;
    // ^ keyword.operator.arithmetic.tact
    //     ^ keyword.operator.arithmetic.tact
    //         ^ keyword.operator.arithmetic.tact

    +0;
    // <- keyword.operator.arithmetic.tact

    -0;
    // <- keyword.operator.arithmetic.tact

    !0;
    // <- keyword.operator.logical.tact
}
