using System;

using VaporShell;
using VaporShell.Core;

namespace VaporShell.Primitives {
    public class String {
        private object _value;
        public object Value {
            get {
                return _value;
            }
            set {
                _value = value;
            }
        }
        public String(object stringOrFunction) {
            if (stringOrFunction == null) {
                throw new System.ArgumentNullException(nameof(stringOrFunction));
            }
            Value = stringOrFunction;
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


/* namespace VaporShell.Primitives {
    public class String {
        private string _stringContents;
        private System.Collections.Hashtable _functionContents;
        public object Contents {
            get {
                if (_stringContents == null)
                    return _functionContents;
                else
                    return _stringContents;
            }
            set {
                // Input validation here to actually check the input type
                // since Contents can accept anything
                switch (value.GetType().FullName) {
                    case "System.String":
                    System.Console.WriteLine("Adding string!");
                    _stringContents = value.ToString();
                    _functionContents = null;
                    break;
                    case "System.Collections.Hashtable":
                    System.Console.WriteLine("Adding hashtable!");
                    _stringContents = null;
                    _functionContents = (System.Collections.Hashtable)value;
                    break;
                    default:
                    throw new System.ArgumentException("Bad input type!");
                }
            }
        }
        public String(object stringOrFunction) {
            Contents = stringOrFunction;
        }
        public static implicit operator string(VaporShell.Primitives.String input) {
            return input.Contents.ToString();
        }
        public static implicit operator System.Collections.Hashtable(VaporShell.Primitives.String input) {
            return (System.Collections.Hashtable)input.Contents;
        }
    }
}
namespace VaporShell.Resource.S3 {
    public class BucketProperties {
        public VaporShell.Primitives.String BucketName { get; set; }
        public BucketProperties() {}
    }
    public class Bucket {
        public BucketProperties Properties { get; set; }
        public Bucket() {}
    }
} */
