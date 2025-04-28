// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

contract Empty {}
// <- keyword.other.contract.tact
//       ^ entity.name.type.tact
//             ^ punctuation.brackets.curly.tact
//              ^ punctuation.brackets.curly.tact

contract Filled {
    init() {}
    // <- keyword.other.function.tact
    //  ^ punctuation.brackets.round.tact
    //   ^ punctuation.brackets.round.tact
    //     ^ punctuation.brackets.curly.tact
    //      ^ punctuation.brackets.curly.tact

    init(f1: Int as uint8,) {}
    // <- keyword.other.function.tact
    //  ^ punctuation.brackets.round.tact
    //   ^^ variable.other.tact
    //     ^ punctuation.colon.tact
    //       ^^^ entity.name.type.tact
    //           ^^ keyword.other.as.tact storage.modifier.tact
    //              ^^^^^ entity.name.type.tact
    //                   ^ punctuation.comma.tact
    //                    ^ punctuation.brackets.round.tact
    //                      ^^ punctuation.brackets.curly.tact

    receive() {}
    // <- keyword.other.function.tact

    external() {}
    // <- keyword.other.function.tact

    bounced(msg: Slice) {}
    // <- keyword.other.function.tact
    //      ^ variable.other.tact
    //         ^ punctuation.colon.tact
    //           ^ entity.name.type.tact
}
