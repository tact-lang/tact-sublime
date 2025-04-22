// SYNTAX TEST "Packages/Tact/package/Tact.tmLanguage"

const declared: String;
// <- keyword.other.tact
//    ^^^^^^^^ constant.other.declaration.tact
//            ^ punctuation.colon.tact
//              ^^^^^^ entity.name.type.tact
//                    ^ punctuation.semi.tact

const DeclaredUppercase: String;
// <- keyword.other.tact
//    ^^^^^^^^^^^^^^^^^ constant.other.declaration.tact

override virtual abstract const theAnswer: Int = 42;
// <- keyword.other.attribute.tact storage.modifier.tact
//       ^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//               ^^^^^^^^ keyword.other.attribute.tact storage.modifier.tact
//                        ^^^^^ keyword.other.tact
//                              ^^^^^^^^^ constant.other.declaration.tact
//                                       ^ punctuation.colon.tact
//                                         ^^^ entity.name.type.tact
//                                             ^ keyword.operator.assignment.equal.tact
//                                               ^^ constant.numeric.decimal.tact
//                                                 ^ punctuation.semi.tact

fun refTest(): Int {
    return theAnswer + 0;
    //     ^^^^^^^^^ variable.other.tact
}

fun builtin() {
    CONST_YAY000;
    // <- constant.other.caps.tact
    // ^^^^^^^^^ constant.other.caps.tact

    SendDefaultMode;
    // <- constant.other.builtin.tact
    SendRemainingValue;
    // <- constant.other.builtin.tact
    SendRemainingBalance;
    // <- constant.other.builtin.tact

    SendPayGasSeparately;
    // <- constant.other.builtin.tact
    SendIgnoreErrors;
    // <- constant.other.builtin.tact
    SendBounceIfActionFail;
    // <- constant.other.builtin.tact
    SendDestroyIfZero;
    // <- constant.other.builtin.tact
    SendOnlyEstimateFee;
    // <- constant.other.builtin.tact

    ReserveExact;
    // <- constant.other.builtin.tact
    ReserveAllExcept;
    // <- constant.other.builtin.tact
    ReserveAtMost;
    // <- constant.other.builtin.tact

    ReserveAddOriginalBalance;
    // <- constant.other.builtin.tact
    ReserveInvertSign;
    // <- constant.other.builtin.tact
    ReserveBounceIfActionFail;
    // <- constant.other.builtin.tact

    TactExitCodeNullReferenceException;
    // <- constant.other.builtin.tact
    TactExitCodeInvalidSerializationPrefix;
    // <- constant.other.builtin.tact
    TactExitCodeInvalidIncomingMessage;
    // <- constant.other.builtin.tact
    TactExitCodeConstraintsError;
    // <- constant.other.builtin.tact
    TactExitCodeAccessDenied;
    // <- constant.other.builtin.tact
    TactExitCodeContractStopped;
    // <- constant.other.builtin.tact
    TactExitCodeInvalidArgument;
    // <- constant.other.builtin.tact
    TactExitCodeContractCodeNotFound;
    // <- constant.other.builtin.tact
    TactExitCodeInvalidStandardAddress;
    // <- constant.other.builtin.tact
    TactExitCodeNotBasechainAddress;
    // <- constant.other.builtin.tact

    self.storageReserve;
    //   ^^^^^^^^^^^^^^ constant.other.builtin.tact
}
