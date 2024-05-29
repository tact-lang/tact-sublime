// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

import "@stdlib/deploy";
// <- keyword.control.import.tact
//     ^ string.quoted.double.tact punctuation.definition.string.begin.tact
//      ^^^^^^^^^^^^^^ string.quoted.double.tact
//                    ^ string.quoted.double.tact punctuation.definition.string.end.tact
//                     ^ punctuation.semi.tact

// comment
// <- comment.line.double-slash.tact punctuation.definition.comment.line.double-slash.tact

/* multi-line comment/doc-string */
// <- comment.block.tact comment.block.begin.tact punctuation.definition.comment.begin.tact
//                               ^^ comment.block.tact comment.block.end.tact punctuation.definition.comment.end.tact
