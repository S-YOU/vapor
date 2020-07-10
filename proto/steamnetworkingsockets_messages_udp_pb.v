
// Generated by vproto - Do not modify
module proto

import emily33901.vproto


[_allow_multiple_values]
enum ESteamNetworkingUDpmsgID {
k_esteamnetworkingudpmsg_challengerequest = 32
k_esteamnetworkingudpmsg_challengereply = 33
k_esteamnetworkingudpmsg_connectrequest = 34
k_esteamnetworkingudpmsg_connectok = 35
k_esteamnetworkingudpmsg_connectionclosed = 36
k_esteamnetworkingudpmsg_noconnection = 37
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_esteamnetworkingudpmsgid(e ESteamNetworkingUDpmsgID, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_esteamnetworkingudpmsgid(buf []byte, tag_wiretype vproto.WireType) ?(int, ESteamNetworkingUDpmsgID) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, ESteamNetworkingUDpmsgID(v)
}
pub struct CMsgSteamSocketsUDpchallengeRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
connection_id u32
has_connection_id bool
my_timestamp u64
has_my_timestamp bool
protocol_version u32
has_protocol_version bool
}
pub fn (o &CMsgSteamSocketsUDpchallengeRequest) pack() []byte {
mut res := []byte{}
if o.has_connection_id {
res << vproto.pack_32bit_field(o.connection_id, 1)
}

if o.has_my_timestamp {
res << vproto.pack_64bit_field(o.my_timestamp, 3)
}

if o.has_protocol_version {
res << vproto.pack_uint32_field(o.protocol_version, 4)
}

return res
}

pub fn cmsgsteamsocketsudpchallengerequest_unpack(buf []byte) ?CMsgSteamSocketsUDpchallengeRequest {
mut res := CMsgSteamSocketsUDpchallengeRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.connection_id = v
i = ii
}

3 {
res.has_my_timestamp = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.my_timestamp = v
i = ii
}

4 {
res.has_protocol_version = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.protocol_version = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpchallengerequest() CMsgSteamSocketsUDpchallengeRequest {
return CMsgSteamSocketsUDpchallengeRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpchallengerequest(o CMsgSteamSocketsUDpchallengeRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpchallengerequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpchallengeRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpchallengerequest_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamSocketsUDpchallengeReply {
mut:
unknown_fields []vproto.UnknownField
pub mut:
connection_id u32
has_connection_id bool
challenge u64
has_challenge bool
your_timestamp u64
has_your_timestamp bool
protocol_version u32
has_protocol_version bool
}
pub fn (o &CMsgSteamSocketsUDpchallengeReply) pack() []byte {
mut res := []byte{}
if o.has_connection_id {
res << vproto.pack_32bit_field(o.connection_id, 1)
}

if o.has_challenge {
res << vproto.pack_64bit_field(o.challenge, 2)
}

if o.has_your_timestamp {
res << vproto.pack_64bit_field(o.your_timestamp, 3)
}

if o.has_protocol_version {
res << vproto.pack_uint32_field(o.protocol_version, 4)
}

return res
}

pub fn cmsgsteamsocketsudpchallengereply_unpack(buf []byte) ?CMsgSteamSocketsUDpchallengeReply {
mut res := CMsgSteamSocketsUDpchallengeReply{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.connection_id = v
i = ii
}

2 {
res.has_challenge = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.challenge = v
i = ii
}

3 {
res.has_your_timestamp = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.your_timestamp = v
i = ii
}

4 {
res.has_protocol_version = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.protocol_version = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpchallengereply() CMsgSteamSocketsUDpchallengeReply {
return CMsgSteamSocketsUDpchallengeReply{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpchallengereply(o CMsgSteamSocketsUDpchallengeReply, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpchallengereply(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpchallengeReply) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpchallengereply_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamSocketsUDpconnectRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
client_connection_id u32
has_client_connection_id bool
challenge u64
has_challenge bool
my_timestamp u64
has_my_timestamp bool
ping_est_ms u32
has_ping_est_ms bool
crypt CMsgSteamDatagramSessionCryptInfoSigned
has_crypt bool
cert CMsgSteamDatagramCertificateSigned
has_cert bool
legacy_protocol_version u32
has_legacy_protocol_version bool
identity_string string
has_identity_string bool
legacy_client_steam_id u64
has_legacy_client_steam_id bool
legacy_identity_binary CMsgSteamNetworkingIdentityLegacyBinary
has_legacy_identity_binary bool
}
pub fn (o &CMsgSteamSocketsUDpconnectRequest) pack() []byte {
mut res := []byte{}
if o.has_client_connection_id {
res << vproto.pack_32bit_field(o.client_connection_id, 1)
}

if o.has_challenge {
res << vproto.pack_64bit_field(o.challenge, 2)
}

if o.has_my_timestamp {
res << vproto.pack_64bit_field(o.my_timestamp, 5)
}

if o.has_ping_est_ms {
res << vproto.pack_uint32_field(o.ping_est_ms, 6)
}

if o.has_crypt {
res << zzz_vproto_internal_pack_cmsgsteamdatagramsessioncryptinfosigned(o.crypt, 7)
}

if o.has_cert {
res << zzz_vproto_internal_pack_cmsgsteamdatagramcertificatesigned(o.cert, 4)
}

if o.has_legacy_protocol_version {
res << vproto.pack_uint32_field(o.legacy_protocol_version, 8)
}

if o.has_identity_string {
res << vproto.pack_string_field(o.identity_string, 10)
}

if o.has_legacy_client_steam_id {
res << vproto.pack_64bit_field(o.legacy_client_steam_id, 3)
}

if o.has_legacy_identity_binary {
res << zzz_vproto_internal_pack_cmsgsteamnetworkingidentitylegacybinary(o.legacy_identity_binary, 9)
}

return res
}

pub fn cmsgsteamsocketsudpconnectrequest_unpack(buf []byte) ?CMsgSteamSocketsUDpconnectRequest {
mut res := CMsgSteamSocketsUDpconnectRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_client_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.client_connection_id = v
i = ii
}

2 {
res.has_challenge = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.challenge = v
i = ii
}

5 {
res.has_my_timestamp = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.my_timestamp = v
i = ii
}

6 {
res.has_ping_est_ms = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.ping_est_ms = v
i = ii
}

7 {
res.has_crypt = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramsessioncryptinfosigned(cur_buf, tag_wiretype.wire_type)?
res.crypt = v
i = ii
}

4 {
res.has_cert = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramcertificatesigned(cur_buf, tag_wiretype.wire_type)?
res.cert = v
i = ii
}

8 {
res.has_legacy_protocol_version = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.legacy_protocol_version = v
i = ii
}

10 {
res.has_identity_string = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.identity_string = v
i = ii
}

3 {
res.has_legacy_client_steam_id = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.legacy_client_steam_id = v
i = ii
}

9 {
res.has_legacy_identity_binary = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamnetworkingidentitylegacybinary(cur_buf, tag_wiretype.wire_type)?
res.legacy_identity_binary = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpconnectrequest() CMsgSteamSocketsUDpconnectRequest {
return CMsgSteamSocketsUDpconnectRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpconnectrequest(o CMsgSteamSocketsUDpconnectRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpconnectrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpconnectRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpconnectrequest_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamSocketsUDpconnectOK {
mut:
unknown_fields []vproto.UnknownField
pub mut:
client_connection_id u32
has_client_connection_id bool
server_connection_id u32
has_server_connection_id bool
your_timestamp u64
has_your_timestamp bool
delay_time_usec u32
has_delay_time_usec bool
crypt CMsgSteamDatagramSessionCryptInfoSigned
has_crypt bool
cert CMsgSteamDatagramCertificateSigned
has_cert bool
identity_string string
has_identity_string bool
legacy_server_steam_id u64
has_legacy_server_steam_id bool
legacy_identity_binary CMsgSteamNetworkingIdentityLegacyBinary
has_legacy_identity_binary bool
}
pub fn (o &CMsgSteamSocketsUDpconnectOK) pack() []byte {
mut res := []byte{}
if o.has_client_connection_id {
res << vproto.pack_32bit_field(o.client_connection_id, 1)
}

if o.has_server_connection_id {
res << vproto.pack_32bit_field(o.server_connection_id, 5)
}

if o.has_your_timestamp {
res << vproto.pack_64bit_field(o.your_timestamp, 3)
}

if o.has_delay_time_usec {
res << vproto.pack_uint32_field(o.delay_time_usec, 4)
}

if o.has_crypt {
res << zzz_vproto_internal_pack_cmsgsteamdatagramsessioncryptinfosigned(o.crypt, 7)
}

if o.has_cert {
res << zzz_vproto_internal_pack_cmsgsteamdatagramcertificatesigned(o.cert, 8)
}

if o.has_identity_string {
res << vproto.pack_string_field(o.identity_string, 11)
}

if o.has_legacy_server_steam_id {
res << vproto.pack_64bit_field(o.legacy_server_steam_id, 2)
}

if o.has_legacy_identity_binary {
res << zzz_vproto_internal_pack_cmsgsteamnetworkingidentitylegacybinary(o.legacy_identity_binary, 10)
}

return res
}

pub fn cmsgsteamsocketsudpconnectok_unpack(buf []byte) ?CMsgSteamSocketsUDpconnectOK {
mut res := CMsgSteamSocketsUDpconnectOK{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_client_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.client_connection_id = v
i = ii
}

5 {
res.has_server_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.server_connection_id = v
i = ii
}

3 {
res.has_your_timestamp = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.your_timestamp = v
i = ii
}

4 {
res.has_delay_time_usec = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.delay_time_usec = v
i = ii
}

7 {
res.has_crypt = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramsessioncryptinfosigned(cur_buf, tag_wiretype.wire_type)?
res.crypt = v
i = ii
}

8 {
res.has_cert = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramcertificatesigned(cur_buf, tag_wiretype.wire_type)?
res.cert = v
i = ii
}

11 {
res.has_identity_string = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.identity_string = v
i = ii
}

2 {
res.has_legacy_server_steam_id = true
ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
res.legacy_server_steam_id = v
i = ii
}

10 {
res.has_legacy_identity_binary = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamnetworkingidentitylegacybinary(cur_buf, tag_wiretype.wire_type)?
res.legacy_identity_binary = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpconnectok() CMsgSteamSocketsUDpconnectOK {
return CMsgSteamSocketsUDpconnectOK{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpconnectok(o CMsgSteamSocketsUDpconnectOK, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpconnectok(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpconnectOK) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpconnectok_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamSocketsUDpconnectionClosed {
mut:
unknown_fields []vproto.UnknownField
pub mut:
to_connection_id u32
has_to_connection_id bool
from_connection_id u32
has_from_connection_id bool
debug string
has_debug bool
reason_code u32
has_reason_code bool
}
pub fn (o &CMsgSteamSocketsUDpconnectionClosed) pack() []byte {
mut res := []byte{}
if o.has_to_connection_id {
res << vproto.pack_32bit_field(o.to_connection_id, 4)
}

if o.has_from_connection_id {
res << vproto.pack_32bit_field(o.from_connection_id, 5)
}

if o.has_debug {
res << vproto.pack_string_field(o.debug, 2)
}

if o.has_reason_code {
res << vproto.pack_uint32_field(o.reason_code, 3)
}

return res
}

pub fn cmsgsteamsocketsudpconnectionclosed_unpack(buf []byte) ?CMsgSteamSocketsUDpconnectionClosed {
mut res := CMsgSteamSocketsUDpconnectionClosed{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
4 {
res.has_to_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.to_connection_id = v
i = ii
}

5 {
res.has_from_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.from_connection_id = v
i = ii
}

2 {
res.has_debug = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.debug = v
i = ii
}

3 {
res.has_reason_code = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.reason_code = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpconnectionclosed() CMsgSteamSocketsUDpconnectionClosed {
return CMsgSteamSocketsUDpconnectionClosed{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpconnectionclosed(o CMsgSteamSocketsUDpconnectionClosed, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpconnectionclosed(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpconnectionClosed) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpconnectionclosed_unpack(v)?
return i, unpacked
}
pub struct CMsgSteamSocketsUDpnoConnection {
mut:
unknown_fields []vproto.UnknownField
pub mut:
from_connection_id u32
has_from_connection_id bool
to_connection_id u32
has_to_connection_id bool
}
pub fn (o &CMsgSteamSocketsUDpnoConnection) pack() []byte {
mut res := []byte{}
if o.has_from_connection_id {
res << vproto.pack_32bit_field(o.from_connection_id, 2)
}

if o.has_to_connection_id {
res << vproto.pack_32bit_field(o.to_connection_id, 3)
}

return res
}

pub fn cmsgsteamsocketsudpnoconnection_unpack(buf []byte) ?CMsgSteamSocketsUDpnoConnection {
mut res := CMsgSteamSocketsUDpnoConnection{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
2 {
res.has_from_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.from_connection_id = v
i = ii
}

3 {
res.has_to_connection_id = true
ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
res.to_connection_id = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpnoconnection() CMsgSteamSocketsUDpnoConnection {
return CMsgSteamSocketsUDpnoConnection{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpnoconnection(o CMsgSteamSocketsUDpnoConnection, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpnoconnection(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpnoConnection) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpnoconnection_unpack(v)?
return i, unpacked
}
[_allow_multiple_values]
enum CMsgSteamSocketsUDpstatsFlags {
ack_request_e2e = 2
ack_request_immediate = 4
not_primary_transport_e2e = 16
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_cmsgsteamsocketsudpstatsflags(e CMsgSteamSocketsUDpstatsFlags, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpstatsflags(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpstatsFlags) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, CMsgSteamSocketsUDpstatsFlags(v)
}
pub struct CMsgSteamSocketsUDpstats {
mut:
unknown_fields []vproto.UnknownField
pub mut:
stats CMsgSteamDatagramConnectionQuality
has_stats bool
flags u32
has_flags bool
}
pub fn (o &CMsgSteamSocketsUDpstats) pack() []byte {
mut res := []byte{}
if o.has_stats {
res << zzz_vproto_internal_pack_cmsgsteamdatagramconnectionquality(o.stats, 1)
}

if o.has_flags {
res << vproto.pack_uint32_field(o.flags, 3)
}

return res
}

pub fn cmsgsteamsocketsudpstats_unpack(buf []byte) ?CMsgSteamSocketsUDpstats {
mut res := CMsgSteamSocketsUDpstats{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_stats = true
ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramconnectionquality(cur_buf, tag_wiretype.wire_type)?
res.stats = v
i = ii
}

3 {
res.has_flags = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.flags = v
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
pub fn zzz_vproto_internal_new_cmsgsteamsocketsudpstats() CMsgSteamSocketsUDpstats {
return CMsgSteamSocketsUDpstats{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgsteamsocketsudpstats(o CMsgSteamSocketsUDpstats, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgsteamsocketsudpstats(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSocketsUDpstats) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cmsgsteamsocketsudpstats_unpack(v)?
return i, unpacked
}