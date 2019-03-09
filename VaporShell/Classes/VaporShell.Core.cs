using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using YamlDotNet.Serialization;
using VaporShell.Validators;

namespace VaporShell.Core {
    public enum DeletionPolicy {
        Delete,
        Retain,
        Snapshot
    }
    public class Function {
        public Function() { }
    }
    public class AutoScalingCreationPolicy {
        public int MinSuccessfulInstancesPercent { get; set; }

        public AutoScalingCreationPolicy() { }
        public AutoScalingCreationPolicy(int MinSuccessfulInstancesPercent) {
            if (MinSuccessfulInstancesPercent >= 0 && MinSuccessfulInstancesPercent <= 100) {
                this.MinSuccessfulInstancesPercent = MinSuccessfulInstancesPercent;
            }
            else {
                throw new System.Exception("MinSuccessfulInstancesPercent must be between 0 - 100! Value provided: " + MinSuccessfulInstancesPercent);
            }
        }
    }
    public class ResourceSignal {
        public int Count { get; set; }
        private string _Timeout;
        public string Timeout {
            get {
                return _Timeout;
            }
            set {
                if (Validate.PauseTime(value)) {
                    _Timeout = value;
                }
                else {
                    throw new ArgumentException("Value did not match the correct pattern! Value provided: " + value);
                }
            }
        }

        public ResourceSignal() { }
        public ResourceSignal(int Count, string Timeout) {
            this.Count = Count;
            this.Timeout = Timeout;
        }
        public ResourceSignal(int Count) {
            this.Count = Count;
        }
        public ResourceSignal(string Timeout) {
            this.Timeout = Timeout;
        }
    }
    public class CreationPolicy {
        public AutoScalingCreationPolicy AutoScalingCreationPolicy { get; set; }
        public ResourceSignal ResourceSignal { get; set; }

        public CreationPolicy() { }
        public CreationPolicy(AutoScalingCreationPolicy AutoScalingCreationPolicy, ResourceSignal ResourceSignal) {
            this.AutoScalingCreationPolicy = AutoScalingCreationPolicy;
            this.ResourceSignal = ResourceSignal;
        }
        public CreationPolicy(AutoScalingCreationPolicy AutoScalingCreationPolicy) {
            this.AutoScalingCreationPolicy = AutoScalingCreationPolicy;
        }
        public CreationPolicy(ResourceSignal ResourceSignal) {
            this.ResourceSignal = ResourceSignal;
        }
    }
    public class UpdatePolicy {
        public Boolean WillReplace { get; set; }
        public int MaxBatchSize { get; set; }
        public int MinInstancesInService { get; set; }
        public int MinSuccessfulInstancesPercent { get; set; }
        public string PauseTime { get; set; }
        public string[] SuspendProcesses { get; set; }
        public Boolean WaitOnResourceSignals { get; set; }

        public UpdatePolicy() { }
    }
    public abstract class Resource {
        private string _LogicalId;
        private Dictionary<string, object> properties;

        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public abstract string Type { get; set; }
        public Dictionary<string, object> Properties { get => properties; set => properties = value; }
        public CreationPolicy CreationPolicy { get; set; }
        public DeletionPolicy? DeletionPolicy { get; set; }
        public UpdatePolicy UpdatePolicy { get; set; }
        public string[] DependsOn { get; set; }
        public object Condition { get; set; }
        public object Metadata { get; set; }

        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            Dictionary<string, object> properties = new Dictionary<string, object>();
            string[] commonProps = { "LogicalId", "Type", "Properties", "CreationPolicy", "DeletionPolicy", "UpdatePolicy", "DependsOn", "Condition", "Metadata" };
            compiled.Add("Type", Type);
            foreach (var item in GetType().GetProperties()) {
                if (!commonProps.Contains(item.Name)) {
                    properties.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            compiled.Add("Properties", properties);
            if (CreationPolicy != null) {
                compiled.Add("CreationPolicy", CreationPolicy);
            }
            if (DeletionPolicy != null) {
                compiled.Add("DeletionPolicy", DeletionPolicy);
            }
            if (UpdatePolicy != null) {
                compiled.Add("UpdatePolicy", UpdatePolicy);
            }
            if (DependsOn != null) {
                compiled.Add("DependsOn", DependsOn);
            }
            if (Condition != null) {
                compiled.Add("Condition", Condition);
            }
            if (Metadata != null) {
                compiled.Add("Metadata", Metadata);
            }
            return compiled;
        }
    }
    public class Parameter {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Parameter() { }

        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Condition {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Condition() { }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Mapping {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Mapping() { }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Output {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public string Type { get; set; }
        public string Default { get; set; }
        public Boolean NoEcho { get; set; }
        public string AllowedPattern { get; set; }
        public string[] AllowedValues { get; set; }
        public string ConstraintDescription { get; set; }
        public string Description { get; set; }
        public int MaxLength { get; set; }
        public int MaxValue { get; set; }
        public int MinLength { get; set; }
        public int MinValue { get; set; }
        public Output() { }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            Dictionary<string, object> compiled = new Dictionary<string, object>();
            foreach (var item in GetType().GetProperties()) {
                if (item.Name != "LogicalId") {
                    compiled.Add(item.Name, GetType().GetProperty(item.Name).GetValue(this, null));
                }
            }
            return compiled;
        }
    }
    public class Metadata {
        private string _LogicalId;
        public string LogicalId {
            get {
                return _LogicalId;
            }
            set {
                if (Validate.LogicalId(value)) {
                    _LogicalId = value;
                }
                else {
                    throw new ArgumentException("LogicalId Value did not match the correct pattern! Value provided: '" + value + "'");
                }
            }
        }
        public Dictionary<string, object> Data { get; set; }
        public Metadata() { }
        public Metadata(string LogicalId, Dictionary<string, object> Data) {
            this.LogicalId = LogicalId;
            this.Data = Data;
        }
        public override string ToString() => _LogicalId;
        public string GetLogicalId() => _LogicalId;
        public Dictionary<string, object> GetProps() {
            return Data;
        }
    }
    public class Template {
        public string AWSTemplateFormatVersion { get; set; }
        public string Description { get; set; }
        public List<VaporShell.Core.Metadata> Metadata { get; private set; } = new List<VaporShell.Core.Metadata>();
        public List<VaporShell.Core.Parameter> Parameters { get; private set; } = new List<VaporShell.Core.Parameter>();
        public List<VaporShell.Core.Condition> Conditions { get; private set; } = new List<VaporShell.Core.Condition>();
        public List<VaporShell.Core.Mapping> Mappings { get; private set; } = new List<VaporShell.Core.Mapping>();
        public List<VaporShell.Core.Resource> Resources { get; private set; } = new List<VaporShell.Core.Resource>();
        public List<VaporShell.Core.Output> Outputs { get; private set; } = new List<VaporShell.Core.Output>();
        public SortedDictionary<string, object> _compiled { get; private set; } = new SortedDictionary<string, object>();
        public DateTime _compiledAt { get; private set; } = DateTime.Now;
        public DateTime _updatedAt { get; private set; } = DateTime.Now;
        public Template() { }
        public Template(string Description) {
            this.Description = Description;
        }
        public Template(string AWSTemplateFormatVersion, string Description) {
            this.AWSTemplateFormatVersion = AWSTemplateFormatVersion;
            this.Description = Description;
        }

        public void AddResource(Resource item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                var removals = new List<object>();
                Resources.ForEach(x => {
                    if (x.LogicalId == logId) {
                        Console.WriteLine("WARNING: Removing existing resource to prevent conflict\n\t └ LogicalId to remove: " + logId);
                        removals.Add(x);
                    }
                });
                foreach (Resource x in removals) {
                    Resources.Remove(x);
                }
                Resources.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Resources")) {
                _compiled.Add("Resources", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Resources"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Resources"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Resources"]).Add(logId, item.GetProps());
            }
        }

        public void AddParameter(VaporShell.Core.Parameter item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Parameters.ForEach(x => {
                    if (x.LogicalId == logId) {
                        Console.WriteLine("WARNING: Removing existing parameter to prevent conflict\n\t └ LogicalId to remove: " + logId);
                        Parameters.Remove(x);
                    }
                });
                Parameters.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Parameters")) {
                _compiled.Add("Parameters", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Parameters"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Parameters"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Parameters"]).Add(logId, item.GetProps());
            }
        }

        public void AddCondition(VaporShell.Core.Condition item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Conditions.ForEach(x => {
                    if (x.LogicalId == logId) {
                        Console.WriteLine("WARNING: Removing existing condition to prevent conflict\n\t └ LogicalId to remove: " + logId);
                        Conditions.Remove(x);
                    }
                });
                Conditions.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Conditions")) {
                _compiled.Add("Conditions", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Conditions"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Conditions"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Conditions"]).Add(logId, item.GetProps());
            }
        }

        public void AddMapping(VaporShell.Core.Mapping item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Mappings.ForEach(x => {
                    if (x.LogicalId == logId) {
                        Console.WriteLine("WARNING: Removing existing mapping to prevent conflict\n\t └ LogicalId to remove: " + logId);
                        Mappings.Remove(x);
                    }
                });
                Mappings.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Mappings")) {
                _compiled.Add("Mappings", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Mappings"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Mappings"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Mappings"]).Add(logId, item.GetProps());
            }
        }

        public void AddOutput(VaporShell.Core.Output item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Outputs.ForEach(x => {
                    if (x.LogicalId == logId) {
                        Console.WriteLine("WARNING: Removing existing output to prevent conflict\n\t └ LogicalId to remove: " + logId);
                        Outputs.Remove(x);
                    }
                });
                Outputs.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Outputs")) {
                _compiled.Add("Outputs", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Outputs"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Outputs"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Outputs"]).Add(logId, item.GetProps());
            }
        }

        public void AddMetadata(VaporShell.Core.Metadata item, bool addToMain = true) {
            var logId = item.GetLogicalId();
            if (addToMain) {
                Metadata.ForEach(x => {
                    if (x.LogicalId == logId) {
                        Console.WriteLine("WARNING: Removing existing metadata to prevent conflict\n\t └ LogicalId to remove: " + logId);
                        Metadata.Remove(x);
                    }
                });
                Metadata.Add(item);
                _updatedAt = DateTime.Now;
            }
            if (!_compiled.ContainsKey("Metadata")) {
                _compiled.Add("Metadata", new SortedDictionary<string, object>());
            }
            if (((SortedDictionary<string, object>)_compiled["Metadata"]).ContainsKey(logId)) {
                ((SortedDictionary<string, object>)_compiled["Metadata"])[logId] = item.GetProps();
            }
            else {
                ((SortedDictionary<string, object>)_compiled["Metadata"]).Add(logId, item.GetProps());
            }
        }

        public SortedDictionary<string, object> GetCompiled() {
            return _compiled;
        }

        public override string ToString() {
            return ToJson(false);
        }
        public string ToJson(bool Compress = false) {
            Compile();
            var fmt = Newtonsoft.Json.Formatting.Indented;
            if (Compress) {
                fmt = Newtonsoft.Json.Formatting.None;
            }
            var jsonString = JsonConvert.SerializeObject(
                _compiled,
                fmt,
                new JsonSerializerSettings {
                    NullValueHandling = NullValueHandling.Ignore
                }
            );
            return jsonString;
        }
        public string ToYaml() {
            Compile();
            var serializer = new SerializerBuilder().Build();
            var yaml = serializer.Serialize(_compiled);
            return yaml;
        }
        private void Compile() {
            if (_compiledAt <= _updatedAt) {
                _compiled = new SortedDictionary<string, object>();
                if (AWSTemplateFormatVersion != null) {
                    _compiled.Add("AWSTemplateFormatVersion", AWSTemplateFormatVersion);
                }
                if (Description != null) {
                    _compiled.Add("Description", Description);
                }
                foreach (var item in Metadata) {
                    AddMetadata(item, false);
                }
                foreach (var item in Parameters) {
                    AddParameter(item, false);
                }
                foreach (var item in Conditions) {
                    AddCondition(item, false);
                }
                foreach (var item in Mappings) {
                    AddMapping(item, false);
                }
                foreach (var item in Resources) {
                    AddResource(item, false);
                }
                foreach (var item in Outputs) {
                    AddOutput(item, false);
                }
                _compiledAt = DateTime.Now;
            }
        }
    }

}
