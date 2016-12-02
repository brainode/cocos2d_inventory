#pragma once
#ifndef MYGAME_PARAMETERS_H
#define MYGAME_PARAMETERS_H

struct Parameters
{
    int IHealth;
    unsigned int UISpeed, 
                UIPurse;
    int IAttackValue;

    bool operator==(const Parameters& StRightParameters)const;

    Parameters& operator+=(const Parameters& StParameterToAdd);

    Parameters& operator-=(const Parameters& StParameterToAdd);
};

inline bool Parameters::operator==(const Parameters& StRightParameters) const{
    return this->IHealth == StRightParameters.IHealth && 
            this->UISpeed == StRightParameters.UISpeed && 
            this->UIPurse == StRightParameters.UIPurse && 
            this->IAttackValue == StRightParameters.IAttackValue;
}


inline Parameters& Parameters::operator+=(const Parameters& StParameterToAdd) {
    this->IHealth += StParameterToAdd.IHealth;
    this->UISpeed += StParameterToAdd.UISpeed;
    this->UIPurse += StParameterToAdd.UIPurse;
    this->IAttackValue += StParameterToAdd.IAttackValue;
    return *this;
}

inline Parameters& Parameters::operator-=(const Parameters& StParameterToAdd) {
    this->IHealth -= StParameterToAdd.IHealth;
    this->UISpeed -= StParameterToAdd.UISpeed;
    this->UIPurse -= StParameterToAdd.UIPurse;
    this->IAttackValue -= StParameterToAdd.IAttackValue;
    return *this;
}
#endif //MYGAME_PARAMETERS_H