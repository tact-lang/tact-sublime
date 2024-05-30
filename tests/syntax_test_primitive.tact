// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

primitive map<Int as int32, Address as remaining>;
// <- keyword.other.tact
//        ^^^ entity.name.type.tact
//           ^ punctuation.brackets.angle.tact
//            ^^^ entity.name.type.tact
//                ^^ keyword.other.as.tact storage.modifier.tact
//                   ^^^^^ entity.name.type.tact
//                        ^ punctuation.comma.tact
//                          ^^^^^^^ entity.name.type.tact
//                                  ^^ keyword.other.as.tact storage.modifier.tact
//                                     ^^^^^^^^^ entity.name.type.tact
//                                              ^ punctuation.brackets.angle.tact
//                                               ^ punctuation.semi.tact

primitive bounced<Message>;
// <- keyword.other.tact
//        ^^^^^^^ entity.name.type.tact
//               ^ punctuation.brackets.angle.tact
//                ^^^^^^^ entity.name.type.tact
//                       ^ punctuation.brackets.angle.tact
//                        ^ punctuation.semi.tact

primitive Int?;
// <- keyword.other.tact
//        ^^^ entity.name.type.tact
//           ^ keyword.operator.optional.tact
//            ^ punctuation.semi.tact

__gen
// <- invalid.illegal.identifier.tact

__tact
// <- invalid.illegal.identifier.tact
