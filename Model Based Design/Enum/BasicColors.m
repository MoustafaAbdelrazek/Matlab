classdef BasicColors < Simulink.IntEnumType
  enumeration
    Red(0)
    Yellow(1)
    Green(2)
  end

  methods (Static = true)
    function retVal = getDefaultValue()
      % GETDEFAULTVALUE Specifies the default enumeration member.
      % Return a valid member of this enumeration class to specify the default.
      % If you do not define this method, Simulink uses the first member.
      retVal = BasicColors.Green;
    end

    function retVal = getDescription()
      % GETDESCRIPTION Specifies a string to describe this enumerated type.
      retVal = 'This defines an enumerated type for colors';
    end

    function retVal = getHeaderFile()
      % GETHEADERFILE Specifies the file that defines this type in generated code.
      % The method getDataScope determines the significance of the specified file.
      retVal = 'imported_enum_type.h';
    end

    function retVal = getDataScope()
      % GETDATASCOPE Specifies whether generated code imports or exports this type.
      % Return one of these strings:
      % 'Auto':     define type in model_types.h, or import if header file specified
      % 'Exported': define type in a generated header file
      % 'Imported': import type definition from specified header file
      % If you do not define this method, DataScope is 'Auto' by default.
      retVal = 'Imported';
    end

    function retVal = addClassNameToEnumNames()
      % ADDCLASSNAMETOENUMNAMES Specifies whether to add the class name
      % as a prefix to enumeration member names in generated code.
      % Return true or false.
      % If you do not define this method, no prefix is added.
      retVal = true;
    end % function
  end % methods
end % classdef