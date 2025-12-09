using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CommentGenerator
{
    /// <summary>
    /// Query options for the Comment Generator API
    /// </summary>
    public class CommentGeneratorQueryOptions
    {
        /// <summary>
        /// The mode of comment generation (text or picture)
        /// Example: text
        /// </summary>
        [JsonProperty("mode")]
        public string Mode { get; set; }

        /// <summary>
        /// The tone of the comments. Defaults to positive (positive, negative, neutral)
        /// Example: positive
        /// </summary>
        [JsonProperty("tone")]
        public string Tone { get; set; }

        /// <summary>
        /// The number of comments to generate. Defaults to 5 (max 10)
        /// Example: 5
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Whether to include emojis in the comments. Defaults to true (true or false)
        /// Example: true
        /// </summary>
        [JsonProperty("emojis")]
        public string Emojis { get; set; }
    }
}
