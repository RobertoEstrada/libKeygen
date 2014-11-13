/*
 * Copyright 2012 Rui Araújo, Luís Fonseca
 *
 * This file is part of Router Keygen.
 *
 * Router Keygen is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * Router Keygen is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with Router Keygen.  If not, see <http://www.gnu.org/licenses/>.
 */
#include "Keygen.h"

Keygen::Keygen(QString & ssid, QString & mac) :
        stopRequested(false), ssidName(ssid) {
    macAddress = mac.replace(":", "").replace("-", "").toUpper();
}

QVector<QString> & Keygen::getResults() {
    results.clear();
	return getKeys();
}

void Keygen::stop() {
	this->stopRequested = true;
}

bool Keygen::isStopped() const {
	return this->stopRequested;
}

QString Keygen::getError() const {
	return error;
}


QString Keygen::getMacAddress() const {
    return macAddress;
}

QString Keygen::getSsidName() const {
	return ssidName;
}

bool Keygen::isStopRequested() const {
	return stopRequested;
}

void Keygen::setError(const QString & error) {
	this->error = error;
}

int Keygen::getSupportState() const{
    return SUPPORTED;
}
