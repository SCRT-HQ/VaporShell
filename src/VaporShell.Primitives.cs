using System;
using Newtonsoft.Json;

using VaporShell;
using VaporShell.Core;

namespace VaporShell.Primitives {
    public class PrimitiveJsonConverter : JsonConverter<String> {
        public override String ReadJson(JsonReader reader, Type objectType, String existingValue, bool hasExistingValue, JsonSerializer serializer) {
            var o = reader.Value;
            return new String(o);
        }

        public override void WriteJson(JsonWriter writer, String value, JsonSerializer serializer) {
            writer.WriteValue(value.ToString());
        }
    }
    public class String : Primitive {
        private object _value;

        public object Value { get => _value; set => _value = value; }

        public String(object stringOrFunction) {
            Value = stringOrFunction ?? throw new ArgumentNullException(nameof(stringOrFunction));
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