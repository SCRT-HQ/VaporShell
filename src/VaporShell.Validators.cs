using System.Text.RegularExpressions;

namespace VaporShell.Validators {
    public class Validate {
        public static bool LogicalId(string input) {
            var regex = @"^[a-zA-Z0-9]*$";
            var match = Regex.Match(input, regex, RegexOptions.IgnoreCase);
            return match.Success;
        }
        public static bool TagKey(string input) {
            var regex = @"^aws:";
            var match = Regex.Match(input, regex, RegexOptions.IgnoreCase);
            if (match.Success == false && input.Length >= 1 && input.Length <= 127) {
                return true;
            }
            else {
                return false;
            }
        }
        public static bool TagValue(VaporShell.Primitives.String input) {
            var regex = @"^aws:";
            var match = Regex.Match(input.ToString(), regex, RegexOptions.IgnoreCase);
            if (match.Success == false && input.ToString().Length >= 1 && input.ToString().Length <= 255) {
                return true;
            }
            else {
                return false;
            }
        }
        public static bool PauseTime(string input) {
            var regex = @"^P(?!$)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?=\d+[HMS])(\d+H)?(\d+M)?(\d+S)?)?$";
            var match = Regex.Match(input, regex, RegexOptions.IgnoreCase);
            return match.Success;
        }
        public static bool CorrectType(object input) {
            if (input != null) {
                return true;
            }
            else {
                return false;
            }
        }
    }
}
