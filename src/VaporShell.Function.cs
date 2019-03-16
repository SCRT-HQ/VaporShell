using System;

using VaporShell.Core;
using VaporShell.Primitives;

namespace VaporShell.Function {
    public class FnRef : VaporShell.Core.Function {
        private object _ref;
        public object Ref {
            get {
                return _ref;
            }
            set {
                _ref = Ref;
            }
        }
        public FnRef (object Ref) {
            this.Ref = Ref;
        }
    }
}
