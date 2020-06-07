using namespace System
using namespace System.Collections
using namespace System.Collections.Generic
using namespace System.Management.Automation

class VSMapping : VSLogicalObject {
    [ValidateMapping()] [IDictionary]
    $Map

    [string] ToString() {
        return $this.LogicalId
    }

    VSMapping() : base() {}
    VSMapping([IDictionary] $props) : base($props) {}
    VSMapping([psobject] $props) : base($props) {}
}