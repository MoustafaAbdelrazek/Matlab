%DataType struct creating
GrOfSignals=Simulink.Bus;

%adding first member in array
Member(1) = Simulink.BusElement;
Member(1).Name = 'LedState';
Member(1).Datatype = 'uint8';
Member(2) = Simulink.BusElement;
Member(2).Name = 'SwitchState';
Member(2).Datatype = 'uint8';

GrOfSignals.Elements=Member;