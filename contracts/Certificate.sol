// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Certificate {
    string file_name;
    string hash_of_file;
    string file_description;
    string file_type;
    uint file_size; // size of file in bytes
    uint timestamp_of_upload; // timestamp of when file was uploaded

    struct Verifier {
        string verifier_name;
        uint verifier_phoneNo;
        string verifier_email;
    }

    Verifier verifier;

    // string memory _file_name,
    // string memory _hash,
    // string memory _type,
    // uint _file_size,
    // uint _timestamp,
    // string memory _verifier_name,
    // uint _verifier_phno,
    // string memory _verifier_email

    constructor(
        string[] memory _string_value_arr,
        uint[] memory _uint_value_arr
    ) {
        file_name = _string_value_arr[0];
        file_size = _uint_value_arr[0];
        timestamp_of_upload = _uint_value_arr[1];
        hash_of_file = _string_value_arr[1];
        file_type = _string_value_arr[2];
        file_description = _string_value_arr[5];

        verifier = Verifier(
            _string_value_arr[3],
            _uint_value_arr[2],
            _string_value_arr[4]
        );
    }

    // function getCertificateInfo()
    //     public
    //     view
    //     returns (string[] memory, uint[] memory)
    // {
    //     // string[] has file string attr, uint[] has file uint attr...
    //     string[] memory strReturns = new string[](3);
    //     uint[] memory uintReturns = new uint[](2);

    //     strReturns[0] = file_name;
    //     strReturns[1] = hash_of_file;
    //     strReturns[2] = file_type;
    //     uintReturns[0] = file_size;
    //     uintReturns[1] = timestamp_of_upload;

    //     strReturns[3] = verifier.verifier_name;
    //     strReturns[4] = verifier.verifier_email;
    //     uintReturns[2] = verifier.verifier_phoneNo;

    //     return (strReturns, uintReturns);
    // }

    function getCertificateData()
        public
        view
        returns (
            string memory _file_name,
            string memory _hash,
            string memory _type,
            uint _file_size,
            uint _timestamp,
            string memory _verifier_name,
            uint _verifier_phno,
            string memory _verifier_email,
            string memory file_description
        )
    {
        // string[] has file string attr, uint[] has file uint attr...

        return (
            file_name,
            hash_of_file,
            file_type,
            file_size,
            timestamp_of_upload,
            verifier.verifier_name,
            verifier.verifier_phoneNo,
            verifier.verifier_email,
            file_description
        );
    }
}
