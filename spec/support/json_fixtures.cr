MESSAGE_JOIN = JSON.parse({
  "event"      => "join",
  "topic"      => "motion:6968",
  "identifier" => {
    "channel" => "motion:6968",
    "version" => Motion::Version.to_s,
    "state"   => "eyJtYXBfbW90aW9uIjpmYWxzZSwibW90aW9uX2hpdCI6ZmFsc2V9AE1vdGlvblJlbmRlcg==",
  },
}.to_json)

MESSAGE_NEW = JSON.parse({
  "event"   => "message",
  "topic"   => "motion:6968",
  "subject" => "message_new",
  "payload" => {
    "command"    => "process_motion",
    "identifier" => {
      "channel" => "motion:6968",
      "version" => Motion::Version.to_s,
      "state"   => "eyJtYXBfbW90aW9uIjpmYWxzZSwibW90aW9uX2hpdCI6ZmFsc2V9AE1vdGlvblJlbmRlcg==",
    },
    "data" => {
      "name"  => "add",
      "event" => {
        "type"      => "click",
        "details"   => {} of String => String,
        "extraData" => {} of String => String,
        "target"    => {
          "tagName"    => "BUTTON",
          "value"      => "",
          "attributes" => {
            "data-motion" => "add",
            "class"       => "btn btn-primary",
          },
          "formData" => nil,
        },
        "currentTarget" => {
          "tagName"    => "BUTTON",
          "value"      => "",
          "attributes" => {
            "data-motion" => "add",
            "class"       => "btn btn-primary",
            "id"          => "motion-button",
          },
          "formData" => nil,
        },
      },
    },
  },
}.to_json)

EVENT_DATA = MESSAGE_NEW["payload"]["data"]["event"]
