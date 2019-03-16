using System;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;

using Newtonsoft.Json;
using YamlDotNet.Serialization;

using VaporShell.Primitives;
using VaporShell.Validators;

namespace VaporShell.Core {
    public class Function {
        public Function() { }
    }
    public class Tag {
        private string _key;
        private VaporShell.Primitives.String _value;
        public string Key {
            get {
                return _key;
            }
            set {
                if (Validate.TagKey(value)) {
                    _key = value;
                }
                else {
                    throw new ArgumentException("Invalid Tag Key! You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. Value provided: '" + value + "'");
                }
            }
        }
        public VaporShell.Primitives.String Value {
            get {
                return _value;
            }
            set {
                if (Validate.TagValue(value)) {
                    _value = value;
                }
                else {
                    throw new ArgumentException("Invalid Tag Value! You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. Value provided: '" + value + "'");
                }
            }
        }
        public Tag() {}
        public Tag(string Key, string Value) {
            this.Key = Key;
            this.Value = Value;
        }
    }
    public abstract class ResourceProperties {
        public ResourceProperties() {}
    }
    public abstract class Resource {
        public LogicalId LogicalId { get; set; }
        public abstract string Type { get; set; }
        public abstract ResourceProperties Properties { get; set; }
        public CreationPolicy CreationPolicy { get; set; }
        public DeletionPolicy? DeletionPolicy { get; set; }
        public UpdatePolicy UpdatePolicy { get; set; }
        public List<string> DependsOn { get; set; }
        public object Condition { get; set; }
        public object Metadata { get; set; }

        public override string ToString() => LogicalId.ToString();
        public LogicalId GetLogicalId() => LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                var val = GetType().GetProperty(item.Name).GetValue(this, null);
                if (item.Name != "LogicalId" && val != null) {
                    compiled.Add(item.Name, val);
                }
            }
            return compiled;
        }
    }
}
