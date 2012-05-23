db = require 'mongoose'
{Schema} = db

post = new Schema
  author:
    type: String
    required: true
    default: "Anonymous"

  created:
    type: Date
    required: true
    default: Date.now

  image: String
  title: String
  text: String

  thread:
    type: Schema.ObjectId
    ref: 'Thread'
  
module.exports = post