// Generated by vproto - Do not modify
module proto

import emily33901.vproto

[_allow_multiple_values]
enum ESteamNetworkingUDPMsgID {
	k_esteamnetworkingudpmsg_challengerequest = 32
	k_esteamnetworkingudpmsg_challengereply = 33
	k_esteamnetworkingudpmsg_connectrequest = 34
	k_esteamnetworkingudpmsg_connectok = 35
	k_esteamnetworkingudpmsg_connectionclosed = 36
	k_esteamnetworkingudpmsg_noconnection = 37
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_new_esteamnetworkingudpmsgid() ESteamNetworkingUDPMsgID {
	return .k_esteamnetworkingudpmsg_challengerequest
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_pack_esteamnetworkingudpmsgid(e ESteamNetworkingUDPMsgID, num u32) []byte {
	return vproto.pack_int32_field(int(e), num)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_pack_esteamnetworkingudpmsgid_packed(e []ESteamNetworkingUDPMsgID, num u32) []byte {
	x := array{
		data: e.data
		len: e.len
		element_size: e.element_size
		cap: e.cap
	}
	return vproto.pack_int32_field_packed(x, num)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_unpack_esteamnetworkingudpmsgid(buf []byte, tag_wiretype vproto.WireType) ?(int, ESteamNetworkingUDPMsgID) {
	i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
	return i, ESteamNetworkingUDPMsgID(v)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_unpack_esteamnetworkingudpmsgid_packed(buf []byte, tag_wiretype vproto.WireType) ?(int, []ESteamNetworkingUDPMsgID) {
	i, v := vproto.unpack_int32_field_packed(buf, tag_wiretype)?
	return i, array{
		data: v.data
		len: v.len
		cap: v.cap
		element_size: v.element_size
	}
}

pub struct CMsgSteamSockets_UDP_ChallengeRequest {
mut:
	unknown_fields   []vproto.UnknownField
pub mut:
	connection_id    u32
	my_timestamp     u64
	protocol_version u32
}

pub fn (o &CMsgSteamSockets_UDP_ChallengeRequest) pack() []byte {
	mut res := []byte{}
	if o.connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.connection_id, 1)
	}
	if o.my_timestamp != u64(0) {
		res << vproto.pack_64bit_field(o.my_timestamp, 3)
	}
	if o.protocol_version != u32(0) {
		res << vproto.pack_uint32_field(o.protocol_version, 4)
	}
	return res
}

pub fn cmsgsteamsockets_udp_challengerequest_unpack(buf []byte) ?CMsgSteamSockets_UDP_ChallengeRequest {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_challengerequest()
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
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.connection_id = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.my_timestamp = v
				i = ii
			}
			4 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.protocol_version = v
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
pub fn (a CMsgSteamSockets_UDP_ChallengeRequest) eq(b CMsgSteamSockets_UDP_ChallengeRequest) bool {
	return true && a.connection_id == b.connection_id &&
		a.my_timestamp == b.my_timestamp &&
		a.protocol_version == b.protocol_version
}

[inline]
pub fn (a CMsgSteamSockets_UDP_ChallengeRequest) ne(b CMsgSteamSockets_UDP_ChallengeRequest) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_ChallengeRequest) eq(b []CMsgSteamSockets_UDP_ChallengeRequest) bool {
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
pub fn (a []CMsgSteamSockets_UDP_ChallengeRequest) ne(b []CMsgSteamSockets_UDP_ChallengeRequest) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_challengerequest() CMsgSteamSockets_UDP_ChallengeRequest {
	return CMsgSteamSockets_UDP_ChallengeRequest{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_challengerequest(o CMsgSteamSockets_UDP_ChallengeRequest, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_challengerequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_ChallengeRequest) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_challengerequest_unpack(v)?
	return i, unpacked
}

pub struct CMsgSteamSockets_UDP_ChallengeReply {
mut:
	unknown_fields   []vproto.UnknownField
pub mut:
	connection_id    u32
	challenge        u64
	your_timestamp   u64
	protocol_version u32
}

pub fn (o &CMsgSteamSockets_UDP_ChallengeReply) pack() []byte {
	mut res := []byte{}
	if o.connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.connection_id, 1)
	}
	if o.challenge != u64(0) {
		res << vproto.pack_64bit_field(o.challenge, 2)
	}
	if o.your_timestamp != u64(0) {
		res << vproto.pack_64bit_field(o.your_timestamp, 3)
	}
	if o.protocol_version != u32(0) {
		res << vproto.pack_uint32_field(o.protocol_version, 4)
	}
	return res
}

pub fn cmsgsteamsockets_udp_challengereply_unpack(buf []byte) ?CMsgSteamSockets_UDP_ChallengeReply {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_challengereply()
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
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.connection_id = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.challenge = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.your_timestamp = v
				i = ii
			}
			4 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.protocol_version = v
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
pub fn (a CMsgSteamSockets_UDP_ChallengeReply) eq(b CMsgSteamSockets_UDP_ChallengeReply) bool {
	return true && a.connection_id == b.connection_id &&
		a.challenge == b.challenge && a.your_timestamp == b.your_timestamp &&
		a.protocol_version == b.protocol_version
}

[inline]
pub fn (a CMsgSteamSockets_UDP_ChallengeReply) ne(b CMsgSteamSockets_UDP_ChallengeReply) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_ChallengeReply) eq(b []CMsgSteamSockets_UDP_ChallengeReply) bool {
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
pub fn (a []CMsgSteamSockets_UDP_ChallengeReply) ne(b []CMsgSteamSockets_UDP_ChallengeReply) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_challengereply() CMsgSteamSockets_UDP_ChallengeReply {
	return CMsgSteamSockets_UDP_ChallengeReply{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_challengereply(o CMsgSteamSockets_UDP_ChallengeReply, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_challengereply(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_ChallengeReply) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_challengereply_unpack(v)?
	return i, unpacked
}

pub struct CMsgSteamSockets_UDP_ConnectRequest {
mut:
	unknown_fields          []vproto.UnknownField
pub mut:
	client_connection_id    u32
	challenge               u64
	my_timestamp            u64
	ping_est_ms             u32
	crypt                   CMsgSteamDatagramSessionCryptInfoSigned
	cert                    CMsgSteamDatagramCertificateSigned
	legacy_protocol_version u32
	identity_string         string
	legacy_client_steam_id  u64
	legacy_identity_binary  CMsgSteamNetworkingIdentityLegacyBinary
}

pub fn (o &CMsgSteamSockets_UDP_ConnectRequest) pack() []byte {
	mut res := []byte{}
	if o.client_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.client_connection_id, 1)
	}
	if o.challenge != u64(0) {
		res << vproto.pack_64bit_field(o.challenge, 2)
	}
	if o.my_timestamp != u64(0) {
		res << vproto.pack_64bit_field(o.my_timestamp, 5)
	}
	if o.ping_est_ms != u32(0) {
		res << vproto.pack_uint32_field(o.ping_est_ms, 6)
	}
	if o.crypt.ne(zzz_vproto_internal_new_cmsgsteamdatagramsessioncryptinfosigned()) {
		res << zzz_vproto_internal_pack_cmsgsteamdatagramsessioncryptinfosigned(o.crypt, 7)
	}
	if o.cert.ne(zzz_vproto_internal_new_cmsgsteamdatagramcertificatesigned()) {
		res << zzz_vproto_internal_pack_cmsgsteamdatagramcertificatesigned(o.cert, 4)
	}
	if o.legacy_protocol_version != u32(0) {
		res << vproto.pack_uint32_field(o.legacy_protocol_version, 8)
	}
	if o.identity_string != '' {
		res << vproto.pack_string_field(o.identity_string, 10)
	}
	if o.legacy_client_steam_id != u64(0) {
		res << vproto.pack_64bit_field(o.legacy_client_steam_id, 3)
	}
	if o.legacy_identity_binary.ne(zzz_vproto_internal_new_cmsgsteamnetworkingidentitylegacybinary()) {
		res <<
			zzz_vproto_internal_pack_cmsgsteamnetworkingidentitylegacybinary(o.legacy_identity_binary, 9)
	}
	return res
}

pub fn cmsgsteamsockets_udp_connectrequest_unpack(buf []byte) ?CMsgSteamSockets_UDP_ConnectRequest {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_connectrequest()
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
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.client_connection_id = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.challenge = v
				i = ii
			}
			5 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.my_timestamp = v
				i = ii
			}
			6 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.ping_est_ms = v
				i = ii
			}
			7 {
				ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramsessioncryptinfosigned(cur_buf,
					tag_wiretype.wire_type)?
				res.crypt = v
				i = ii
			}
			4 {
				ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramcertificatesigned(cur_buf,
					tag_wiretype.wire_type)?
				res.cert = v
				i = ii
			}
			8 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.legacy_protocol_version = v
				i = ii
			}
			10 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.identity_string = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.legacy_client_steam_id = v
				i = ii
			}
			9 {
				ii, v := zzz_vproto_internal_unpack_cmsgsteamnetworkingidentitylegacybinary(cur_buf,
					tag_wiretype.wire_type)?
				res.legacy_identity_binary = v
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
pub fn (a CMsgSteamSockets_UDP_ConnectRequest) eq(b CMsgSteamSockets_UDP_ConnectRequest) bool {
	return true && a.client_connection_id == b.client_connection_id &&
		a.challenge == b.challenge && a.my_timestamp == b.my_timestamp &&
		a.ping_est_ms == b.ping_est_ms && a.crypt.eq(b.crypt) && a.cert.eq(b.cert) &&
		a.legacy_protocol_version == b.legacy_protocol_version &&
		a.identity_string == b.identity_string &&
		a.legacy_client_steam_id == b.legacy_client_steam_id && a.legacy_identity_binary.eq(b.legacy_identity_binary)
}

[inline]
pub fn (a CMsgSteamSockets_UDP_ConnectRequest) ne(b CMsgSteamSockets_UDP_ConnectRequest) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_ConnectRequest) eq(b []CMsgSteamSockets_UDP_ConnectRequest) bool {
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
pub fn (a []CMsgSteamSockets_UDP_ConnectRequest) ne(b []CMsgSteamSockets_UDP_ConnectRequest) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_connectrequest() CMsgSteamSockets_UDP_ConnectRequest {
	return CMsgSteamSockets_UDP_ConnectRequest{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_connectrequest(o CMsgSteamSockets_UDP_ConnectRequest, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_connectrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_ConnectRequest) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_connectrequest_unpack(v)?
	return i, unpacked
}

pub struct CMsgSteamSockets_UDP_ConnectOK {
mut:
	unknown_fields         []vproto.UnknownField
pub mut:
	client_connection_id   u32
	server_connection_id   u32
	your_timestamp         u64
	delay_time_usec        u32
	crypt                  CMsgSteamDatagramSessionCryptInfoSigned
	cert                   CMsgSteamDatagramCertificateSigned
	identity_string        string
	legacy_server_steam_id u64
	legacy_identity_binary CMsgSteamNetworkingIdentityLegacyBinary
}

pub fn (o &CMsgSteamSockets_UDP_ConnectOK) pack() []byte {
	mut res := []byte{}
	if o.client_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.client_connection_id, 1)
	}
	if o.server_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.server_connection_id, 5)
	}
	if o.your_timestamp != u64(0) {
		res << vproto.pack_64bit_field(o.your_timestamp, 3)
	}
	if o.delay_time_usec != u32(0) {
		res << vproto.pack_uint32_field(o.delay_time_usec, 4)
	}
	if o.crypt.ne(zzz_vproto_internal_new_cmsgsteamdatagramsessioncryptinfosigned()) {
		res << zzz_vproto_internal_pack_cmsgsteamdatagramsessioncryptinfosigned(o.crypt, 7)
	}
	if o.cert.ne(zzz_vproto_internal_new_cmsgsteamdatagramcertificatesigned()) {
		res << zzz_vproto_internal_pack_cmsgsteamdatagramcertificatesigned(o.cert, 8)
	}
	if o.identity_string != '' {
		res << vproto.pack_string_field(o.identity_string, 11)
	}
	if o.legacy_server_steam_id != u64(0) {
		res << vproto.pack_64bit_field(o.legacy_server_steam_id, 2)
	}
	if o.legacy_identity_binary.ne(zzz_vproto_internal_new_cmsgsteamnetworkingidentitylegacybinary()) {
		res <<
			zzz_vproto_internal_pack_cmsgsteamnetworkingidentitylegacybinary(o.legacy_identity_binary, 10)
	}
	return res
}

pub fn cmsgsteamsockets_udp_connectok_unpack(buf []byte) ?CMsgSteamSockets_UDP_ConnectOK {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_connectok()
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
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.client_connection_id = v
				i = ii
			}
			5 {
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.server_connection_id = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.your_timestamp = v
				i = ii
			}
			4 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.delay_time_usec = v
				i = ii
			}
			7 {
				ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramsessioncryptinfosigned(cur_buf,
					tag_wiretype.wire_type)?
				res.crypt = v
				i = ii
			}
			8 {
				ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramcertificatesigned(cur_buf,
					tag_wiretype.wire_type)?
				res.cert = v
				i = ii
			}
			11 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.identity_string = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.legacy_server_steam_id = v
				i = ii
			}
			10 {
				ii, v := zzz_vproto_internal_unpack_cmsgsteamnetworkingidentitylegacybinary(cur_buf,
					tag_wiretype.wire_type)?
				res.legacy_identity_binary = v
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
pub fn (a CMsgSteamSockets_UDP_ConnectOK) eq(b CMsgSteamSockets_UDP_ConnectOK) bool {
	return true && a.client_connection_id == b.client_connection_id &&
		a.server_connection_id == b.server_connection_id &&
		a.your_timestamp == b.your_timestamp &&
		a.delay_time_usec == b.delay_time_usec && a.crypt.eq(b.crypt) && a.cert.eq(b.cert) &&
		a.identity_string == b.identity_string &&
		a.legacy_server_steam_id == b.legacy_server_steam_id && a.legacy_identity_binary.eq(b.legacy_identity_binary)
}

[inline]
pub fn (a CMsgSteamSockets_UDP_ConnectOK) ne(b CMsgSteamSockets_UDP_ConnectOK) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_ConnectOK) eq(b []CMsgSteamSockets_UDP_ConnectOK) bool {
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
pub fn (a []CMsgSteamSockets_UDP_ConnectOK) ne(b []CMsgSteamSockets_UDP_ConnectOK) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_connectok() CMsgSteamSockets_UDP_ConnectOK {
	return CMsgSteamSockets_UDP_ConnectOK{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_connectok(o CMsgSteamSockets_UDP_ConnectOK, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_connectok(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_ConnectOK) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_connectok_unpack(v)?
	return i, unpacked
}

pub struct CMsgSteamSockets_UDP_ConnectionClosed {
mut:
	unknown_fields     []vproto.UnknownField
pub mut:
	to_connection_id   u32
	from_connection_id u32
	debug              string
	reason_code        u32
}

pub fn (o &CMsgSteamSockets_UDP_ConnectionClosed) pack() []byte {
	mut res := []byte{}
	if o.to_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.to_connection_id, 4)
	}
	if o.from_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.from_connection_id, 5)
	}
	if o.debug != '' {
		res << vproto.pack_string_field(o.debug, 2)
	}
	if o.reason_code != u32(0) {
		res << vproto.pack_uint32_field(o.reason_code, 3)
	}
	return res
}

pub fn cmsgsteamsockets_udp_connectionclosed_unpack(buf []byte) ?CMsgSteamSockets_UDP_ConnectionClosed {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_connectionclosed()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			4 {
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.to_connection_id = v
				i = ii
			}
			5 {
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.from_connection_id = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.debug = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.reason_code = v
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
pub fn (a CMsgSteamSockets_UDP_ConnectionClosed) eq(b CMsgSteamSockets_UDP_ConnectionClosed) bool {
	return true && a.to_connection_id == b.to_connection_id &&
		a.from_connection_id == b.from_connection_id &&
		a.debug == b.debug && a.reason_code == b.reason_code
}

[inline]
pub fn (a CMsgSteamSockets_UDP_ConnectionClosed) ne(b CMsgSteamSockets_UDP_ConnectionClosed) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_ConnectionClosed) eq(b []CMsgSteamSockets_UDP_ConnectionClosed) bool {
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
pub fn (a []CMsgSteamSockets_UDP_ConnectionClosed) ne(b []CMsgSteamSockets_UDP_ConnectionClosed) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_connectionclosed() CMsgSteamSockets_UDP_ConnectionClosed {
	return CMsgSteamSockets_UDP_ConnectionClosed{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_connectionclosed(o CMsgSteamSockets_UDP_ConnectionClosed, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_connectionclosed(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_ConnectionClosed) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_connectionclosed_unpack(v)?
	return i, unpacked
}

pub struct CMsgSteamSockets_UDP_NoConnection {
mut:
	unknown_fields     []vproto.UnknownField
pub mut:
	from_connection_id u32
	to_connection_id   u32
}

pub fn (o &CMsgSteamSockets_UDP_NoConnection) pack() []byte {
	mut res := []byte{}
	if o.from_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.from_connection_id, 2)
	}
	if o.to_connection_id != u32(0) {
		res << vproto.pack_32bit_field(o.to_connection_id, 3)
	}
	return res
}

pub fn cmsgsteamsockets_udp_noconnection_unpack(buf []byte) ?CMsgSteamSockets_UDP_NoConnection {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_noconnection()
	mut total := 0
	for total < buf.len {
		mut i := 0
		buf_before_wire_type := buf[total..]
		tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or {
			return error('malformed protobuf (couldnt parse tag & wire type)')
		}
		cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
		match tag_wiretype.tag {
			2 {
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.from_connection_id = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.to_connection_id = v
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
pub fn (a CMsgSteamSockets_UDP_NoConnection) eq(b CMsgSteamSockets_UDP_NoConnection) bool {
	return true && a.from_connection_id == b.from_connection_id &&
		a.to_connection_id == b.to_connection_id
}

[inline]
pub fn (a CMsgSteamSockets_UDP_NoConnection) ne(b CMsgSteamSockets_UDP_NoConnection) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_NoConnection) eq(b []CMsgSteamSockets_UDP_NoConnection) bool {
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
pub fn (a []CMsgSteamSockets_UDP_NoConnection) ne(b []CMsgSteamSockets_UDP_NoConnection) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_noconnection() CMsgSteamSockets_UDP_NoConnection {
	return CMsgSteamSockets_UDP_NoConnection{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_noconnection(o CMsgSteamSockets_UDP_NoConnection, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_noconnection(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_NoConnection) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_noconnection_unpack(v)?
	return i, unpacked
}

[_allow_multiple_values]
enum CMsgSteamSockets_UDP_Stats_Flags {
	ack_request_e2e = 2
	ack_request_immediate = 4
	not_primary_transport_e2e = 16
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_new_cmsgsteamsockets_udp_stats_flags() CMsgSteamSockets_UDP_Stats_Flags {
	return .ack_request_e2e
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_stats_flags(e CMsgSteamSockets_UDP_Stats_Flags, num u32) []byte {
	return vproto.pack_int32_field(int(e), num)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_stats_flags_packed(e []CMsgSteamSockets_UDP_Stats_Flags, num u32) []byte {
	x := array{
		data: e.data
		len: e.len
		element_size: e.element_size
		cap: e.cap
	}
	return vproto.pack_int32_field_packed(x, num)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_stats_flags(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_Stats_Flags) {
	i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
	return i, CMsgSteamSockets_UDP_Stats_Flags(v)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_stats_flags_packed(buf []byte, tag_wiretype vproto.WireType) ?(int, []CMsgSteamSockets_UDP_Stats_Flags) {
	i, v := vproto.unpack_int32_field_packed(buf, tag_wiretype)?
	return i, array{
		data: v.data
		len: v.len
		cap: v.cap
		element_size: v.element_size
	}
}

pub struct CMsgSteamSockets_UDP_Stats {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	stats          CMsgSteamDatagramConnectionQuality
	flags          u32
}

pub fn (o &CMsgSteamSockets_UDP_Stats) pack() []byte {
	mut res := []byte{}
	if o.stats.ne(zzz_vproto_internal_new_cmsgsteamdatagramconnectionquality()) {
		res << zzz_vproto_internal_pack_cmsgsteamdatagramconnectionquality(o.stats, 1)
	}
	if o.flags != u32(0) {
		res << vproto.pack_uint32_field(o.flags, 3)
	}
	return res
}

pub fn cmsgsteamsockets_udp_stats_unpack(buf []byte) ?CMsgSteamSockets_UDP_Stats {
	mut res := zzz_vproto_internal_new_cmsgsteamsockets_udp_stats()
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
				ii, v := zzz_vproto_internal_unpack_cmsgsteamdatagramconnectionquality(cur_buf,
					tag_wiretype.wire_type)?
				res.stats = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.flags = v
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
pub fn (a CMsgSteamSockets_UDP_Stats) eq(b CMsgSteamSockets_UDP_Stats) bool {
	return true && a.stats.eq(b.stats) && a.flags == b.flags
}

[inline]
pub fn (a CMsgSteamSockets_UDP_Stats) ne(b CMsgSteamSockets_UDP_Stats) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CMsgSteamSockets_UDP_Stats) eq(b []CMsgSteamSockets_UDP_Stats) bool {
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
pub fn (a []CMsgSteamSockets_UDP_Stats) ne(b []CMsgSteamSockets_UDP_Stats) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cmsgsteamsockets_udp_stats() CMsgSteamSockets_UDP_Stats {
	return CMsgSteamSockets_UDP_Stats{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cmsgsteamsockets_udp_stats(o CMsgSteamSockets_UDP_Stats, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cmsgsteamsockets_udp_stats(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgSteamSockets_UDP_Stats) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgsteamsockets_udp_stats_unpack(v)?
	return i, unpacked
}
