
// Generated by vproto - Do not modify
module proto

import emily33901.vproto


pub struct CMsgSteamNetworkingIdentityLegacyBinary {
mut:
unknown_fields []vproto.UnknownField
pub mut:
steam_id u64
has_steam_id bool
xbox_pairwise_id string
has_xbox_pairwise_id bool
generic_bytes []byte
has_generic_bytes bool
generic_string string
has_generic_string bool
ipv6_and_port []byte
has_ipv6_and_port bool
}
pub fn (o &CMsgSteamNetworkingIdentityLegacyBinary) pack() []byte {
mut res := []byte{}
if o.has_steam_id {
res << vproto.pack_64bit_field(o.steam_id, 16)
}

if o.has_xbox_pairwise_id {
res << vproto.pack_string_field(o.xbox_pairwise_id, 17)
}

if o.has_generic_bytes {
res << vproto.pack_bytes_field(o.generic_bytes, 2)
}

if o.has_generic_string {
res << vproto.pack_string_field(o.generic_string, 3)
}

if o.has_ipv6_and_port {
res << vproto.pack_bytes_field(o.ipv6_and_port, 4)
}

return res
}

pub fn cmsgsteamnetworkingidentitylegacybinary_unpack(buf []byte) ?CMsgSteamNetworkingIdentityLegacyBinary {
mut res := CMsgSteamNetworkingIdentityLegacyBinary{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
16 {
res.has_steam_id = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.steam_id = v
i = ii
}

17 {
res.has_xbox_pairwise_id = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.xbox_pairwise_id = v
i = ii
}

2 {
res.has_generic_bytes = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.generic_bytes = v
i = ii
}

3 {
res.has_generic_string = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.generic_string = v
i = ii
}

4 {
res.has_ipv6_and_port = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.ipv6_and_port = v
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
pub fn zzz_vproto_internal_new_cmsgsteamnetworkingidentitylegacybinary() CMsgSteamNetworkingIdentityLegacyBinary {
return CMsgSteamNetworkingIdentityLegacyBinary{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamnetworkingidentitylegacybinary(o CMsgSteamNetworkingIdentityLegacyBinary, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamnetworkingidentitylegacybinary(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamNetworkingIdentityLegacyBinary) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamnetworkingidentitylegacybinary_unpack(v)?
return i, unpacked
}
[_allow_multiple_values]
enum CMsgSteamDatagramCertificateEKeyType {
invalid = 0
ed25519 = 1
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_cmsgsteamdatagramcertificateekeytype(e CMsgSteamDatagramCertificateEKeyType, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_cmsgsteamdatagramcertificateekeytype(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamDatagramCertificateEKeyType) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, CMsgSteamDatagramCertificateEKeyType(v)
}
pub struct CMsgSteamDatagramCertificate {
mut:
unknown_fields []vproto.UnknownField
pub mut:
key_type CMsgSteamDatagramCertificateEKeyType
has_key_type bool
key_data []byte
has_key_data bool
legacy_steam_id u64
has_legacy_steam_id bool
legacy_identity_binary CMsgSteamNetworkingIdentityLegacyBinary
has_legacy_identity_binary bool
identity_string string
has_identity_string bool
gameserver_datacenter_ids []u32
time_created u32
has_time_created bool
time_expiry u32
has_time_expiry bool
app_ids []u32
}
pub fn (o &CMsgSteamDatagramCertificate) pack() []byte {
mut res := []byte{}
if o.has_key_type {
res << zzz_vproto_internal_pack_cmsgsteamdatagramcertificateekeytype(o.key_type, 1)
}

if o.has_key_data {
res << vproto.pack_bytes_field(o.key_data, 2)
}

if o.has_legacy_steam_id {
res << vproto.pack_64bit_field(o.legacy_steam_id, 4)
}

if o.has_legacy_identity_binary {
res << zzz_vproto_internal_pack_cmsgsteamnetworkingidentitylegacybinary(o.legacy_identity_binary, 11)
}

if o.has_identity_string {
res << vproto.pack_string_field(o.identity_string, 12)
}

// [packed=false]
for _, x in o.gameserver_datacenter_ids {
res << vproto.pack_32bit_field(x, 5)
}

if o.has_time_created {
res << vproto.pack_32bit_field(o.time_created, 8)
}

if o.has_time_expiry {
res << vproto.pack_32bit_field(o.time_expiry, 9)
}

// [packed=false]
for _, x in o.app_ids {
res << vproto.pack_uint32_field(x, 10)
}

return res
}

pub fn cmsgsteamdatagramcertificate_unpack(buf []byte) ?CMsgSteamDatagramCertificate {
mut res := CMsgSteamDatagramCertificate{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_key_type = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramcertificateekeytype(cur_buf, tag_wiretype.wire_type)?
res.key_type = v
i = ii
}

2 {
res.has_key_data = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.key_data = v
i = ii
}

4 {
res.has_legacy_steam_id = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.legacy_steam_id = v
i = ii
}

11 {
res.has_legacy_identity_binary = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamnetworkingidentitylegacybinary(cur_buf, tag_wiretype.wire_type)?
res.legacy_identity_binary = v
i = ii
}

12 {
res.has_identity_string = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.identity_string = v
i = ii
}

5 {
// [packed=false]
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.gameserver_datacenter_ids << v
i = ii
}

8 {
res.has_time_created = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.time_created = v
i = ii
}

9 {
res.has_time_expiry = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.time_expiry = v
i = ii
}

10 {
// [packed=false]
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.app_ids << v
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
pub fn zzz_vproto_internal_new_cmsgsteamdatagramcertificate() CMsgSteamDatagramCertificate {
return CMsgSteamDatagramCertificate{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamdatagramcertificate(o CMsgSteamDatagramCertificate, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamdatagramcertificate(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamDatagramCertificate) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamdatagramcertificate_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamDatagramCertificateSigned {
mut:
unknown_fields []vproto.UnknownField
pub mut:
cert []byte
has_cert bool
ca_key_id u64
has_ca_key_id bool
ca_signature []byte
has_ca_signature bool
private_key_data []byte
has_private_key_data bool
}
pub fn (o &CMsgSteamDatagramCertificateSigned) pack() []byte {
mut res := []byte{}
if o.has_cert {
res << vproto.pack_bytes_field(o.cert, 4)
}

if o.has_ca_key_id {
res << vproto.pack_64bit_field(o.ca_key_id, 5)
}

if o.has_ca_signature {
res << vproto.pack_bytes_field(o.ca_signature, 6)
}

if o.has_private_key_data {
res << vproto.pack_bytes_field(o.private_key_data, 1)
}

return res
}

pub fn cmsgsteamdatagramcertificatesigned_unpack(buf []byte) ?CMsgSteamDatagramCertificateSigned {
mut res := CMsgSteamDatagramCertificateSigned{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
4 {
res.has_cert = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.cert = v
i = ii
}

5 {
res.has_ca_key_id = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.ca_key_id = v
i = ii
}

6 {
res.has_ca_signature = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.ca_signature = v
i = ii
}

1 {
res.has_private_key_data = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.private_key_data = v
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
pub fn zzz_vproto_internal_new_cmsgsteamdatagramcertificatesigned() CMsgSteamDatagramCertificateSigned {
return CMsgSteamDatagramCertificateSigned{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamdatagramcertificatesigned(o CMsgSteamDatagramCertificateSigned, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamdatagramcertificatesigned(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamDatagramCertificateSigned) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamdatagramcertificatesigned_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamDatagramCertificateRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
cert CMsgSteamDatagramCertificate
has_cert bool
}
pub fn (o &CMsgSteamDatagramCertificateRequest) pack() []byte {
mut res := []byte{}
if o.has_cert {
res << zzz_vproto_internal_pack_cmsgsteamdatagramcertificate(o.cert, 1)
}

return res
}

pub fn cmsgsteamdatagramcertificaterequest_unpack(buf []byte) ?CMsgSteamDatagramCertificateRequest {
mut res := CMsgSteamDatagramCertificateRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_cert = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramcertificate(cur_buf, tag_wiretype.wire_type)?
res.cert = v
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
pub fn zzz_vproto_internal_new_cmsgsteamdatagramcertificaterequest() CMsgSteamDatagramCertificateRequest {
return CMsgSteamDatagramCertificateRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamdatagramcertificaterequest(o CMsgSteamDatagramCertificateRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamdatagramcertificaterequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamDatagramCertificateRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamdatagramcertificaterequest_unpack(v)?
return i, unpacked
}