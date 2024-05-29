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
