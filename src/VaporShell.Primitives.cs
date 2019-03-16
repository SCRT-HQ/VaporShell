using System;

using VaporShell;
using VaporShell.Core;

namespace VaporShell.Primitives {
    public class String {
        readonly object _value;
        public String(object value) {
            _value = value;
        }
        public static implicit operator string(String Input) {
            return Input._value.ToString();
        }
        public static implicit operator String(string Input) {
            return new String(Input);
        }
        public static implicit operator VaporShell.Core.Function(String Input) {
            return Input;
        }
        public static implicit operator String(VaporShell.Core.Function Input) {
            return new String(Input);
        }
    }
    public class Long {
        // TODO

    }
    public class Integer {

    }
    public class Double {

    }
    public class Boolean {

    }
    public class Timestamp  {

    }
    public class Json {

    }
}
