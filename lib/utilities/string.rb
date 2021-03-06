# This class normalizes the file names and paths being taken in
# by the YAML file
class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    tr(" ", "_").
    tr(".", "_").
    tr("__", "_")
    downcase
  end
end