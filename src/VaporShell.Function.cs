namespace VaporShell.Function
{
    public class FnRef {
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
