// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "./Certificate.sol";

contract Factory {
    Certificate[] public certificate_array;
    string[] string_value_arr;
    uint[] uint_value_arr;

    function createCertificateContract(
        string memory _file_name,
        string memory _hash,
        string memory _file_description,
        string memory _type,
        uint _file_size,
        uint _timestamp,
        string memory _verifier_name,
        uint _verifier_phno,
        string memory _verifier_email
    ) public {
        string_value_arr.push(_file_name);
        string_value_arr.push(_hash);
        string_value_arr.push(_type);
        string_value_arr.push(_verifier_name);
        string_value_arr.push(_verifier_email);
        string_value_arr.push(_file_description);

        uint_value_arr.push(_file_size);
        uint_value_arr.push(_timestamp);
        uint_value_arr.push(_verifier_phno);

        Certificate certificate = new Certificate(
            string_value_arr,
            uint_value_arr
        );

        certificate_array.push(certificate);
    }

    // function getCertificate(uint _certificateIndex)
    //     public
    //     view
    //     returns (string memory, uint[] memory)
    // {
    //     return
    //         Certificate(address(certificate_array[_certificateIndex]))
    //             .getCertificateInfo();
    // }

    function getCertificate(uint _certificateIndex)
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
            string memory _file_description
        )
    {
        return
            Certificate(address(certificate_array[_certificateIndex]))
                .getCertificateData();
    }
}
