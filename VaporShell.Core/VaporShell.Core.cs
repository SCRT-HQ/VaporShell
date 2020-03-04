using System;
using System.Collections;
using System.Collections.Generic;
using System.Management.Automation;

namespace VaporShell.Core
{
    public class TransformTagAttribute : ArgumentTransformationAttribute
    {
        private EngineIntrinsics engineIntrinsics;

        private PSObject ConvertToTag(object key, object value)
        {
            PSObject tag = new PSObject();
            tag.Members.Add(new PSNoteProperty("Key", key.ToString()));
            tag.Members.Add(new PSNoteProperty("Value", value.ToString()));
            tag.TypeNames.Insert(0, "Vaporshell.Resource.Tag");

            return tag;
        }

        private bool TryGetKey(IDictionary dictionary, string keyName, ref string KeyValue)
        {
            foreach (object key in dictionary.Keys)
            {
                if (key.ToString().ToLower() == keyName.ToLower())
                {
                    KeyValue = dictionary[key].ToString();
                    return true;
                }
            }

            return false;
        }

        private IEnumerable<PSObject> TransformHashtable(IDictionary inputData)
        {
            string keyName = "";
            string value = "";
            if (this.TryGetKey(inputData, "key", ref keyName) && this.TryGetKey(inputData, "value", ref value))
            {
                yield return this.ConvertToTag(keyName, value);
            }
            else
            {
                foreach (string key in inputData.Keys)
                {
                    yield return this.ConvertToTag(key, inputData[key]);
                }
            }
        }

        private IEnumerable<PSObject> TransformPSObject(PSObject inputData)
        {
            var props = new List<string>();
            foreach (var property in inputData.Properties)
            {
                props.Add(property.Name.ToLower());
            }

            if (props.Contains("key") && props.Contains("value"))
            {
                yield return this.ConvertToTag(inputData.Properties["Key"].Value, inputData.Properties["Value"].Value);
            }
            else
            {
                foreach (var property in inputData.Properties)
                {
                    yield return this.ConvertToTag(property.Name, property.Value);
                }
            }
        }

        private IEnumerable<PSObject> TransformSingle(object inputData)
        {
            if (inputData is IDictionary)
            {
                foreach (PSObject tag in this.TransformHashtable(inputData as IDictionary))
                {
                    yield return tag;
                }
            }
            else if (inputData is PSObject)
            {
                PSObject psObject = inputData as PSObject;
                if (psObject.TypeNames.Contains("Vaporshell.Resource.Tag"))
                {
                    yield return psObject;
                }
                else if (psObject.TypeNames.Contains("System.Management.Automation.PSCustomObject"))
                {
                    foreach (PSObject tag in this.TransformPSObject(psObject))
                    {
                        yield return tag;
                    }
                }
            }
        }

        private IEnumerable<PSObject> TransformData(object inputData)
        {
            if (inputData is Array)
            {
                foreach (object item in inputData as Array)
                {
                    // This is returning an unenumerated array
                    foreach (PSObject tag in this.TransformSingle(item))
                    {
                        yield return tag;
                    }
                }
            }
            else
            {
                foreach (PSObject tag in this.TransformSingle(inputData))
                {
                    yield return tag;
                }
            }
        }

        public override object Transform(EngineIntrinsics engineIntrinsics, object inputData)
        {
            this.engineIntrinsics = engineIntrinsics;

            return this.TransformData(inputData);
        }
    }
}
