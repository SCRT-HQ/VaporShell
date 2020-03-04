using System;
using System.Collections;
using System.Collections.Generic;
using System.Management.Automation;

namespace VaporShell.Core
{
    public class TransformTagAttribute : ArgumentTransformationAttribute
    {
        private EngineIntrinsics engineIntrinsics;

        private IEnumerable<PSObject> ConvertToTag(object key, object value)
        {
            PSObject tag = new PSObject();
            tag.Members.Add(new PSNoteProperty("Key", key));
            tag.Members.Add(new PSNoteProperty("Value", value));
            tag.TypeNames.Insert(0,"Vaporshell.Resource.Tag");

            yield return tag;
        }

        private IEnumerable<PSObject> TransformHashtable(IDictionary inputData)
        {
            if (inputData.Contains("Key") && inputData.Contains("Value"))
            {
                foreach (PSObject tag in this.ConvertToTag(inputData["Key"],inputData["Value"]))
                {
                    yield return tag;
                }
            }
            else
            {
                foreach (string key in inputData.Keys)
                {
                    foreach (PSObject tag in this.ConvertToTag(key,inputData[key]))
                    {
                        yield return tag;
                    }
                }
            }
        }

        private IEnumerable<PSObject> TransformPSObject(PSObject inputData)
        {
            var props = new List<string>();
            foreach (var property in inputData.Properties)
            {
                props.Add(property.Name);
            }
            if (props.Contains("Key") && props.Contains("Value"))
            {
                object key = null;
                object value = null;

                foreach (var property in inputData.Properties)
                {
                    if (property.Name == "Key")
                    {
                        key = property.Value;
                    }
                    else if (property.Name == "Value")
                    {
                        value = property.Value;
                    }
                }
                foreach (PSObject tag in this.ConvertToTag(key,value))
                {
                    yield return tag;
                }
            }
            else
            {
                foreach (var property in inputData.Properties)
                {
                    foreach (PSObject tag in this.ConvertToTag(property.Name,property.Value))
                    {
                        yield return tag;
                    }
                }
            }
        }

        private object TransformSingle(object inputData)
        {
            if (inputData is IDictionary)
            {
                return this.TransformHashtable(inputData as IDictionary);
            }
            else if (inputData is PSObject)
            {
                PSObject psObject = inputData as PSObject;
                if (psObject.TypeNames.Contains("Vaporshell.Resource.Tag"))
                {
                    return inputData;
                }
                else if (psObject.TypeNames.Contains("System.Management.Automation.PSCustomObject"))
                {
                    return this.TransformPSObject(psObject);
                }
            }
            return null;
        }

        private IEnumerable<object> TransformData(object inputData)
        {
            if (inputData is Array)
            {
                foreach (object item in inputData as Array)
                {
                    yield return this.TransformSingle(item);
                }
            }
            else
            {
                yield return this.TransformSingle(inputData);
            }
        }

        public override object Transform(EngineIntrinsics engineIntrinsics, object inputData)
        {
            this.engineIntrinsics = engineIntrinsics;
            return this.TransformData(inputData);
        }
    }
}
