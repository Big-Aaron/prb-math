// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;

/// @notice The signed 1.18-decimal fixed-point number representation, which can have up to 1 digit and up to 18 decimals.
/// The values of this are bound by the minimum and the maximum values permitted by the underlying Solidity type int64.
/// This is useful when end users want to use int64 to save gas, e.g. with tight variable packing in contract storage.
type SD1x18 is int64;

/*//////////////////////////////////////////////////////////////////////////
                                    CONSTANTS
//////////////////////////////////////////////////////////////////////////*/

/// @dev Euler's number as an SD1x18 number.
SD1x18 constant E = SD1x18.wrap(2_718281828459045235);

/// @dev The maximum value an SD1x18 number can have.
int64 constant uMAX_SD1x18 = 9_223372036854775807;
SD1x18 constant MAX_SD1x18 = SD1x18.wrap(uMAX_SD1x18);

/// @dev PI as an SD1x18 number.
SD1x18 constant PI = SD1x18.wrap(3_141592653589793238);

/// @dev The unit amount that implies how many trailing decimals can be represented.
SD1x18 constant UNIT = SD1x18.wrap(1e18);
int256 constant uUNIT = 1e18;

/*//////////////////////////////////////////////////////////////////////////
                            CONVERSION FUNCTIONS
//////////////////////////////////////////////////////////////////////////*/

/// @notice Wraps a signed integer into the SD1x18 type.
function sd1x18(int64 x) pure returns (SD1x18 result) {
    result = SD1x18.wrap(x);
}
