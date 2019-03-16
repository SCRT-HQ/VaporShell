using System;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;

using Newtonsoft.Json;
using YamlDotNet.Serialization;

using VaporShell.Validators;

namespace VaporShell.Core {
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
        public string[] DependsOn { get; set; }
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
