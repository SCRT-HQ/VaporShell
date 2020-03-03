using System;
using System.Collections;
using System.Collections.Generic;
using System.Management.Automation;

public class TransformTagAttribute : ArgumentTransformationAttribute {
    private EngineIntrinsics engineIntrinsics;

    private IEnumerable<PSObject> InvokeAddVSTag(object key, object value)
    {
        var tags =  this.engineIntrinsics.InvokeCommand.InvokeScript(
            String.Format("Add-VSTag -Key '{0}' -Value '{1}'", key, value)
        );

        foreach (PSObject tag in tags)
        {
            yield return tag;
        }
    }

    private IEnumerable<PSObject> TransformHashtable(IDictionary inputData)
    {
        foreach (string key in inputData.Keys)
        {
            foreach (PSObject tag in this.InvokeAddVSTag(key, inputData[key]))
            {
                yield return tag;
            }
        }
    }

    private IEnumerable<PSObject> TransformPSObject(PSObject inputData)
    {
        foreach (var property in inputData.Properties)
        {
            foreach (PSObject tag in this.InvokeAddVSTag(property.Name, property.Value))
            {
                yield return tag;
            }
        }
    }

    private object TransformData(object inputData)
    {
        if (inputData is Array)
        {
            foreach (object item in inputData as object[])
            {
                return this.TransformData(item);
            }
        }
        else if (inputData is IDictionary)
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

        return inputData;
    }

    public override object Transform(EngineIntrinsics engineIntrinsics, object inputData)
    {
        this.engineIntrinsics = engineIntrinsics;
        return this.TransformData(inputData);
    }
}
