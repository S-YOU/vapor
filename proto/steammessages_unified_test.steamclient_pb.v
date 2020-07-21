// Generated by vproto - Do not modify
module proto

import emily33901.vproto

pub struct CMsgTest_MessageToClient_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	some_text      string
}

pub fn (o &CMsgTest_MessageToClient_Request) pack() []byte {
	mut res := []byte{}
	if o.some_text != '' {
		res << vproto.pack_string_field(o.some_text, 1)
	}
	return res
}

pub fn cmsgtest_messagetoclient_request_unpack(buf []byte) ?CMsgTest_MessageToClient_Request {
	mut res := zzz_vproto_internal_new_cmsgtest_messagetoclient_request()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.some_text = v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CMsgTest_MessageToClient_Request) eq(b CMsgTest_MessageToClient_Request) bool {
	return true && a.some_text == b.some_text
}

[inline]
pub fn (a CMsgTest_MessageToClient_Request) ne(b CMsgTest_MessageToClient_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgTest_MessageToClient_Request) eq(b []CMsgTest_MessageToClient_Request) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CMsgTest_MessageToClient_Request) ne(b []CMsgTest_MessageToClient_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgtest_messagetoclient_request() CMsgTest_MessageToClient_Request {
	return CMsgTest_MessageToClient_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgtest_messagetoclient_request(o CMsgTest_MessageToClient_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgtest_messagetoclient_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgTest_MessageToClient_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgtest_messagetoclient_request_unpack(v)?
	return i, unpacked
}

pub struct CMsgTest_MessageToClient_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	some_text      string
}

pub fn (o &CMsgTest_MessageToClient_Response) pack() []byte {
	mut res := []byte{}
	if o.some_text != '' {
		res << vproto.pack_string_field(o.some_text, 1)
	}
	return res
}

pub fn cmsgtest_messagetoclient_response_unpack(buf []byte) ?CMsgTest_MessageToClient_Response {
	mut res := zzz_vproto_internal_new_cmsgtest_messagetoclient_response()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.some_text = v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CMsgTest_MessageToClient_Response) eq(b CMsgTest_MessageToClient_Response) bool {
	return true && a.some_text == b.some_text
}

[inline]
pub fn (a CMsgTest_MessageToClient_Response) ne(b CMsgTest_MessageToClient_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgTest_MessageToClient_Response) eq(b []CMsgTest_MessageToClient_Response) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CMsgTest_MessageToClient_Response) ne(b []CMsgTest_MessageToClient_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgtest_messagetoclient_response() CMsgTest_MessageToClient_Response {
	return CMsgTest_MessageToClient_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgtest_messagetoclient_response(o CMsgTest_MessageToClient_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgtest_messagetoclient_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgTest_MessageToClient_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgtest_messagetoclient_response_unpack(v)?
	return i, unpacked
}

pub struct CMsgTest_NotifyClient_Notification {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	some_text      string
}

pub fn (o &CMsgTest_NotifyClient_Notification) pack() []byte {
	mut res := []byte{}
	if o.some_text != '' {
		res << vproto.pack_string_field(o.some_text, 1)
	}
	return res
}

pub fn cmsgtest_notifyclient_notification_unpack(buf []byte) ?CMsgTest_NotifyClient_Notification {
	mut res := zzz_vproto_internal_new_cmsgtest_notifyclient_notification()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.some_text = v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CMsgTest_NotifyClient_Notification) eq(b CMsgTest_NotifyClient_Notification) bool {
	return true && a.some_text == b.some_text
}

[inline]
pub fn (a CMsgTest_NotifyClient_Notification) ne(b CMsgTest_NotifyClient_Notification) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgTest_NotifyClient_Notification) eq(b []CMsgTest_NotifyClient_Notification) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CMsgTest_NotifyClient_Notification) ne(b []CMsgTest_NotifyClient_Notification) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgtest_notifyclient_notification() CMsgTest_NotifyClient_Notification {
	return CMsgTest_NotifyClient_Notification{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgtest_notifyclient_notification(o CMsgTest_NotifyClient_Notification, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgtest_notifyclient_notification(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgTest_NotifyClient_Notification) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgtest_notifyclient_notification_unpack(v)?
	return i, unpacked
}

pub struct CMsgTest_MessageToServer_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	some_text      string
}

pub fn (o &CMsgTest_MessageToServer_Request) pack() []byte {
	mut res := []byte{}
	if o.some_text != '' {
		res << vproto.pack_string_field(o.some_text, 1)
	}
	return res
}

pub fn cmsgtest_messagetoserver_request_unpack(buf []byte) ?CMsgTest_MessageToServer_Request {
	mut res := zzz_vproto_internal_new_cmsgtest_messagetoserver_request()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.some_text = v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CMsgTest_MessageToServer_Request) eq(b CMsgTest_MessageToServer_Request) bool {
	return true && a.some_text == b.some_text
}

[inline]
pub fn (a CMsgTest_MessageToServer_Request) ne(b CMsgTest_MessageToServer_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgTest_MessageToServer_Request) eq(b []CMsgTest_MessageToServer_Request) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CMsgTest_MessageToServer_Request) ne(b []CMsgTest_MessageToServer_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgtest_messagetoserver_request() CMsgTest_MessageToServer_Request {
	return CMsgTest_MessageToServer_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgtest_messagetoserver_request(o CMsgTest_MessageToServer_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgtest_messagetoserver_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgTest_MessageToServer_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgtest_messagetoserver_request_unpack(v)?
	return i, unpacked
}

pub struct CMsgTest_MessageToServer_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	some_text      string
}

pub fn (o &CMsgTest_MessageToServer_Response) pack() []byte {
	mut res := []byte{}
	if o.some_text != '' {
		res << vproto.pack_string_field(o.some_text, 1)
	}
	return res
}

pub fn cmsgtest_messagetoserver_response_unpack(buf []byte) ?CMsgTest_MessageToServer_Response {
	mut res := zzz_vproto_internal_new_cmsgtest_messagetoserver_response()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.some_text = v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CMsgTest_MessageToServer_Response) eq(b CMsgTest_MessageToServer_Response) bool {
	return true && a.some_text == b.some_text
}

[inline]
pub fn (a CMsgTest_MessageToServer_Response) ne(b CMsgTest_MessageToServer_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgTest_MessageToServer_Response) eq(b []CMsgTest_MessageToServer_Response) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CMsgTest_MessageToServer_Response) ne(b []CMsgTest_MessageToServer_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgtest_messagetoserver_response() CMsgTest_MessageToServer_Response {
	return CMsgTest_MessageToServer_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgtest_messagetoserver_response(o CMsgTest_MessageToServer_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgtest_messagetoserver_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgTest_MessageToServer_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgtest_messagetoserver_response_unpack(v)?
	return i, unpacked
}

pub struct CMsgTest_NotifyServer_Notification {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	some_text      string
}

pub fn (o &CMsgTest_NotifyServer_Notification) pack() []byte {
	mut res := []byte{}
	if o.some_text != '' {
		res << vproto.pack_string_field(o.some_text, 1)
	}
	return res
}

pub fn cmsgtest_notifyserver_notification_unpack(buf []byte) ?CMsgTest_NotifyServer_Notification {
	mut res := zzz_vproto_internal_new_cmsgtest_notifyserver_notification()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			1 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.some_text = v
				i = ii
			}
			else {
				ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
				res.unknown_fields <<
					vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
				i = ii
			}
		}
		if i == 0 {
			return error('malformed protobuf (didnt unpack a field)')
		}
		total += tag_wiretype.consumed + i
	}
	return res
}

[inline]
pub fn (a CMsgTest_NotifyServer_Notification) eq(b CMsgTest_NotifyServer_Notification) bool {
	return true && a.some_text == b.some_text
}

[inline]
pub fn (a CMsgTest_NotifyServer_Notification) ne(b CMsgTest_NotifyServer_Notification) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgTest_NotifyServer_Notification) eq(b []CMsgTest_NotifyServer_Notification) bool {
	if a.len != b.len {
		return false
	}
	for i, _ in a {
		if a[i].ne(b[i]) {
			return false
		}
	}
	return true
}

[inline]
pub fn (a []CMsgTest_NotifyServer_Notification) ne(b []CMsgTest_NotifyServer_Notification) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgtest_notifyserver_notification() CMsgTest_NotifyServer_Notification {
	return CMsgTest_NotifyServer_Notification{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgtest_notifyserver_notification(o CMsgTest_NotifyServer_Notification, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgtest_notifyserver_notification(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgTest_NotifyServer_Notification) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgtest_notifyserver_notification_unpack(v)?
	return i, unpacked
}
