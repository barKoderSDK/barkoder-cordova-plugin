/**
 * @module BarkoderConstants
 */
module.exports = {
    /**
     * @description
     * BarcodeType.
     *
     * @enum {number}
     */
    BarcodeType: {
        AZTEC:          0,
        AZTECCOMPACT:   1,
        QR:             2,
        QRMICRO:        3,
        CODE128:        4,
        CODE93:         5,
        CODE39:         6,
        CODABAR:        7,
        CODE11:         8,
        MSI:            9,
        UPCA:           10,
        UPCE:           11,
        UPCE1:          12,
        EAN13:          13,
        EAN8:           14,
        PDF417:         15,
        PDF417MICRO:    16,
        DATAMATRIX:     17,
        CODE25:         18,
        INTERLEAVED25:  19,
        ITF14:          20,
        IATA25:         21,
        MATRIX25:       22,
        DATALOGIC25:    23,
        COOP25:         24,
        CODE32:         25,
        TELEPEN:        26,
        DOTCODE:        27
    },
    /**
     * @description
     * FormattingType.
     *
     * @enum {number}
     */
    FormattingType: {
        DISABLED:   0,
        AUTOMATIC:  1,
        GS1:        2,
        AAMVA:      3
    },
    /**
     * @description
     * MsiChecksumType.
     *
     * @enum {number}
     */
    MsiChecksumType: {
        DISABLED:   0,
        MOD10:      1,
        MOD11:      2,
        MOD1010:    3,
        MOD1110:    4,
        MOD11IBM:   5,
        MOD1110IBM: 6
    },
    /**
     * @description
     * Code39ChecksumType.
     *
     * @enum {number}
     */
    Code39ChecksumType: {
        DISABLED:   0,
        ENABLED:    1
    },
    /**
     * @description
     * Code11ChecksumType.
     *
     * @enum {number}
     */
    Code11ChecksumType: {
        DISABLED:   0,
        SINGLE:     1,
        DOUBLE:     2
    },
    /**
     * @description
     * DecodingSpeed.
     *
     * @enum {number}
     */
    DecodingSpeed: {
        FAST:       0,
        NORMAL:     1,
        SLOW:       2
    },
    /**
     * @description
     * BarkoderResolution.
     *
     * @enum {number}
     */
    BarkoderResolution: {
        NORMAL:     0,
        HIGH:       1
    } 
};