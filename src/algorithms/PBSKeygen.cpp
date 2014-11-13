/*
 * PBSKeygen.cpp
 *
 *  Created on: 5 de Ago de 2012
 *      Author: ruka
 */

#include "PBSKeygen.h"
#include <openssl/sha.h>

PBSKeygen::PBSKeygen(QString ssid, QString mac) :
		Keygen(ssid, mac) {
}

const QString PBSKeygen::lookup =
		"0123456789ABCDEFGHIKJLMNOPQRSTUVWXYZabcdefghikjlmnopqrstuvwxyz";
const unsigned char PBSKeygen::saltSHA256[/*32*/] = { 0x54, 0x45, 0x4F, 0x74, 0x65, 0x6C,
		0xB6, 0xD9, 0x86, 0x96, 0x8D, 0x34, 0x45, 0xD2, 0x3B, 0x15, 0xCA, 0xAF,
		0x12, 0x84, 0x02, 0xAC, 0x56, 0x00, 0x05, 0xCE, 0x20, 0x75, 0x94, 0x3F,
		0xDC, 0xE8 };

QVector<QString> & PBSKeygen::getKeys() {
    SHA256_CTX sha;

	QString macS = getMacAddress();
	if (macS.length() != 12) {
		throw ERROR;
	}

	char mac[6];
	bool status;
	for (int i = 0; i < 12; i += 2)
		mac[i / 2] = (macS.mid(i, 1).toInt(&status, 16) << 4)
				+ macS.mid(i + 1, 1).toInt(&status, 16);
	if (!status)
		throw ERROR;
    mac[5] -= 5;

    unsigned char hash[32];
    SHA256_Init(&sha);
    SHA256_Update(&sha, (const void *) saltSHA256, sizeof(saltSHA256));
    SHA256_Update(&sha, (const void *) mac, sizeof(mac));
    SHA256_Final(hash, &sha);
	QString key = "";
	for (int i = 0; i < 13; ++i) {
		key.append(lookup.at(hash[i] % lookup.length()));
	}
	results.append(key);
	return results;
}

