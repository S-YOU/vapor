
// Generated by vproto - Do not modify
module proto

import emily33901.vproto


pub struct COfflineGetOfflineLogonTicketRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
priority u32
has_priority bool
}
pub fn (o &COfflineGetOfflineLogonTicketRequest) pack() []byte {
mut res := []byte{}
if o.has_priority {
res << vproto.pack_uint32_field(o.priority, 1)
}

return res
}

pub fn cofflinegetofflinelogonticketrequest_unpack(buf []byte) ?COfflineGetOfflineLogonTicketRequest {
mut res := COfflineGetOfflineLogonTicketRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_priority = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.priority = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cofflinegetofflinelogonticketrequest() COfflineGetOfflineLogonTicketRequest {
return COfflineGetOfflineLogonTicketRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cofflinegetofflinelogonticketrequest(o COfflineGetOfflineLogonTicketRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cofflinegetofflinelogonticketrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, COfflineGetOfflineLogonTicketRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cofflinegetofflinelogonticketrequest_unpack(v)?
return i, unpacked
}
pub struct COfflineGetOfflineLogonTicketResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
serialized_ticket []byte
has_serialized_ticket bool
signature []byte
has_signature bool
}
pub fn (o &COfflineGetOfflineLogonTicketResponse) pack() []byte {
mut res := []byte{}
if o.has_serialized_ticket {
res << vproto.pack_bytes_field(o.serialized_ticket, 1)
}

if o.has_signature {
res << vproto.pack_bytes_field(o.signature, 2)
}

return res
}

pub fn cofflinegetofflinelogonticketresponse_unpack(buf []byte) ?COfflineGetOfflineLogonTicketResponse {
mut res := COfflineGetOfflineLogonTicketResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_serialized_ticket = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.serialized_ticket = v
i = ii
}

2 {
res.has_signature = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.signature = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cofflinegetofflinelogonticketresponse() COfflineGetOfflineLogonTicketResponse {
return COfflineGetOfflineLogonTicketResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cofflinegetofflinelogonticketresponse(o COfflineGetOfflineLogonTicketResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cofflinegetofflinelogonticketresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, COfflineGetOfflineLogonTicketResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cofflinegetofflinelogonticketresponse_unpack(v)?
return i, unpacked
}
pub struct COfflineGetUnsignedOfflineLogonTicketRequest {
mut:
unknown_fields []vproto.UnknownField
}
pub fn (o &COfflineGetUnsignedOfflineLogonTicketRequest) pack() []byte {
res := []byte{}
return res
}

pub fn cofflinegetunsignedofflinelogonticketrequest_unpack(buf []byte) ?COfflineGetUnsignedOfflineLogonTicketRequest {
res := COfflineGetUnsignedOfflineLogonTicketRequest{}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cofflinegetunsignedofflinelogonticketrequest() COfflineGetUnsignedOfflineLogonTicketRequest {
return COfflineGetUnsignedOfflineLogonTicketRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cofflinegetunsignedofflinelogonticketrequest(o COfflineGetUnsignedOfflineLogonTicketRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cofflinegetunsignedofflinelogonticketrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, COfflineGetUnsignedOfflineLogonTicketRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cofflinegetunsignedofflinelogonticketrequest_unpack(v)?
return i, unpacked
}
pub struct COfflineOfflineLogonTicket {
mut:
unknown_fields []vproto.UnknownField
pub mut:
accountid u32
has_accountid bool
rtime32_creation_time u32
has_rtime32_creation_time bool
}
pub fn (o &COfflineOfflineLogonTicket) pack() []byte {
mut res := []byte{}
if o.has_accountid {
res << vproto.pack_uint32_field(o.accountid, 1)
}

if o.has_rtime32_creation_time {
res << vproto.pack_32bit_field(o.rtime32_creation_time, 2)
}

return res
}

pub fn cofflineofflinelogonticket_unpack(buf []byte) ?COfflineOfflineLogonTicket {
mut res := COfflineOfflineLogonTicket{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_accountid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.accountid = v
i = ii
}

2 {
res.has_rtime32_creation_time = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.rtime32_creation_time = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cofflineofflinelogonticket() COfflineOfflineLogonTicket {
return COfflineOfflineLogonTicket{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cofflineofflinelogonticket(o COfflineOfflineLogonTicket, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cofflineofflinelogonticket(buf []byte, tag_wiretype vproto.WireType) ?(int, COfflineOfflineLogonTicket) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cofflineofflinelogonticket_unpack(v)?
return i, unpacked
}
pub struct COfflineGetUnsignedOfflineLogonTicketResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
ticket COfflineOfflineLogonTicket
has_ticket bool
}
pub fn (o &COfflineGetUnsignedOfflineLogonTicketResponse) pack() []byte {
mut res := []byte{}
if o.has_ticket {
res << zzz_vproto_internal_pack_cofflineofflinelogonticket(o.ticket, 1)
}

return res
}

pub fn cofflinegetunsignedofflinelogonticketresponse_unpack(buf []byte) ?COfflineGetUnsignedOfflineLogonTicketResponse {
mut res := COfflineGetUnsignedOfflineLogonTicketResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_ticket = true
ii, v := zzz_vproto_internal_unpack_cofflineofflinelogonticket(cur_buf, tag_wiretype.wire_type)?
res.ticket = v
i = ii
}

else {
ii, v := vproto.unpack_unknown_field(cur_buf, tag_wiretype.wire_type)
res.unknown_fields << vproto.UnknownField{tag_wiretype.wire_type, tag_wiretype.tag, v}
i = ii
}
}
if i == 0 { return error('malformed protobuf (didnt unpack a field)') }
total += tag_wiretype.consumed + i
}
return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cofflinegetunsignedofflinelogonticketresponse() COfflineGetUnsignedOfflineLogonTicketResponse {
return COfflineGetUnsignedOfflineLogonTicketResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cofflinegetunsignedofflinelogonticketresponse(o COfflineGetUnsignedOfflineLogonTicketResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cofflinegetunsignedofflinelogonticketresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, COfflineGetUnsignedOfflineLogonTicketResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cofflinegetunsignedofflinelogonticketresponse_unpack(v)?
return i, unpacked
}