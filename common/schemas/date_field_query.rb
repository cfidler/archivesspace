{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",
    "properties" => {

      "comparator" => {"type" => "string", "enum" => ["greater_than", "lesser_than", "equal"]},
      "field" => {"type" => "string", "ifmissing" => "error"},
      "value" => {"type" => "date", "ifmissing" => "error"},
      "negated" => {"type" => "boolean", "default" => false},

    },
  },
}
