#include "Interface.h"
GrOfSignals DummyStruct;
GrOfSignals * DumyPtrStr;

void getter( GrOfSignals *ptr)
{
    ptr-> LedState = DumyPtrStr -> LedState;
    ptr-> LedState = DumyPtrStr -> SwitchState;
}
void Setter(GrOfSignals *ptrStruct)
{
    DumyPtrStr->LedState = ptrStruct->LedState;
    DumyPtrStr->LedState = ptrStruct->SwitchState;
}
