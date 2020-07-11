// Generated by vproto - Do not modify
module proto

import emily33901.vproto

[_allow_multiple_values]
enum ELobbyStatus {
	k_elobbystatusinvalid = 0
	k_elobbystatusexists = 1
	k_elobbystatusdoesnotexist = 2
	k_elobbystatusnotamember = 3
}

// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_elobbystatus(e ELobbyStatus, num u32) []byte {
	return vproto.pack_int32_field(int(e), num)
}

// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_elobbystatus(buf []byte, tag_wiretype vproto.WireType) ?(int, ELobbyStatus) {
	i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
	return i, ELobbyStatus(v)
}

pub struct LobbyMatchmakingLegacyGetLobbyStatusRequest {
mut:
	unknown_fields       []vproto.UnknownField
pub mut:
	app_id               u32
	has_app_id           bool
	steamid_lobby        u64
	has_steamid_lobby    bool
	claim_ownership      bool
	has_claim_ownership  bool
	claim_membership     bool
	has_claim_membership bool
	version_num          u32
	has_version_num      bool
}

pub fn (o &LobbyMatchmakingLegacyGetLobbyStatusRequest) pack() []byte {
	mut res := []byte{}
	if o.has_app_id {
		res << vproto.pack_uint32_field(o.app_id, 1)
	}
	if o.has_steamid_lobby {
		res << vproto.pack_64bit_field(o.steamid_lobby, 2)
	}
	if o.has_claim_ownership {
		res << vproto.pack_bool_field(o.claim_ownership, 3)
	}
	if o.has_claim_membership {
		res << vproto.pack_bool_field(o.claim_membership, 4)
	}
	if o.has_version_num {
		res << vproto.pack_uint32_field(o.version_num, 5)
	}
	return res
}

pub fn lobbymatchmakinglegacygetlobbystatusrequest_unpack(buf []byte) ?LobbyMatchmakingLegacyGetLobbyStatusRequest {
	mut res := LobbyMatchmakingLegacyGetLobbyStatusRequest{}
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
				res.has_app_id = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.app_id = v
				i = ii
			}
			2 {
				res.has_steamid_lobby = true
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.steamid_lobby = v
				i = ii
			}
			3 {
				res.has_claim_ownership = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.claim_ownership = v
				i = ii
			}
			4 {
				res.has_claim_membership = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.claim_membership = v
				i = ii
			}
			5 {
				res.has_version_num = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.version_num = v
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

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_lobbymatchmakinglegacygetlobbystatusrequest() LobbyMatchmakingLegacyGetLobbyStatusRequest {
	return LobbyMatchmakingLegacyGetLobbyStatusRequest{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_lobbymatchmakinglegacygetlobbystatusrequest(o LobbyMatchmakingLegacyGetLobbyStatusRequest, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_lobbymatchmakinglegacygetlobbystatusrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, LobbyMatchmakingLegacyGetLobbyStatusRequest) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := lobbymatchmakinglegacygetlobbystatusrequest_unpack(v)?
	return i, unpacked
}

pub struct LobbyMatchmakingLegacyGetLobbyStatusResponse {
mut:
	unknown_fields    []vproto.UnknownField
pub mut:
	app_id            u32
	has_app_id        bool
	steamid_lobby     u64
	has_steamid_lobby bool
	lobby_status      ELobbyStatus
	has_lobby_status  bool
}

pub fn (o &LobbyMatchmakingLegacyGetLobbyStatusResponse) pack() []byte {
	mut res := []byte{}
	if o.has_app_id {
		res << vproto.pack_uint32_field(o.app_id, 1)
	}
	if o.has_steamid_lobby {
		res << vproto.pack_64bit_field(o.steamid_lobby, 2)
	}
	if o.has_lobby_status {
		res << zzz_vproto_internal_pack_elobbystatus(o.lobby_status, 3)
	}
	return res
}

pub fn lobbymatchmakinglegacygetlobbystatusresponse_unpack(buf []byte) ?LobbyMatchmakingLegacyGetLobbyStatusResponse {
	mut res := LobbyMatchmakingLegacyGetLobbyStatusResponse{}
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
				res.has_app_id = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.app_id = v
				i = ii
			}
			2 {
				res.has_steamid_lobby = true
				ii, v := vproto.unpack_64bit_field(cur_buf, tag_wiretype.wire_type)?
				res.steamid_lobby = v
				i = ii
			}
			3 {
				res.has_lobby_status = true
				ii, v := zzz_vproto_internal_unpack_elobbystatus(cur_buf, tag_wiretype.wire_type)?
				res.lobby_status = v
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

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_lobbymatchmakinglegacygetlobbystatusresponse() LobbyMatchmakingLegacyGetLobbyStatusResponse {
	return LobbyMatchmakingLegacyGetLobbyStatusResponse{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_lobbymatchmakinglegacygetlobbystatusresponse(o LobbyMatchmakingLegacyGetLobbyStatusResponse, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_lobbymatchmakinglegacygetlobbystatusresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, LobbyMatchmakingLegacyGetLobbyStatusResponse) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := lobbymatchmakinglegacygetlobbystatusresponse_unpack(v)?
	return i, unpacked
}
