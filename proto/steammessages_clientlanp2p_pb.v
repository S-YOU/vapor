// Generated by vproto - Do not modify
module proto

import emily33901.vproto

pub struct CMsgClientLAnp2PRequestChunksChunkKey {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	depot_id       u32
	has_depot_id   bool
	sha            []byte
	has_sha        bool
}

pub fn (o &CMsgClientLAnp2PRequestChunksChunkKey) pack() []byte {
	mut res := []byte{}
	if o.has_depot_id {
		res << vproto.pack_uint32_field(o.depot_id, 1)
	}
	if o.has_sha {
		res << vproto.pack_bytes_field(o.sha, 2)
	}
	return res
}

pub fn cmsgclientlanp2prequestchunkschunkkey_unpack(buf []byte) ?CMsgClientLAnp2PRequestChunksChunkKey {
	mut res := CMsgClientLAnp2PRequestChunksChunkKey{}
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
				res.has_depot_id = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.depot_id = v
				i = ii
			}
			2 {
				res.has_sha = true
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
				res.sha = v
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
pub fn zzz_vproto_internal_new_cmsgclientlanp2prequestchunkschunkkey() CMsgClientLAnp2PRequestChunksChunkKey {
	return CMsgClientLAnp2PRequestChunksChunkKey{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgclientlanp2prequestchunkschunkkey(o CMsgClientLAnp2PRequestChunksChunkKey, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgclientlanp2prequestchunkschunkkey(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgClientLAnp2PRequestChunksChunkKey) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgclientlanp2prequestchunkschunkkey_unpack(v)?
	return i, unpacked
}

pub struct CMsgClientLAnp2PRequestChunks {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	chunk_keys     []CMsgClientLAnp2PRequestChunksChunkKey
}

pub fn (o &CMsgClientLAnp2PRequestChunks) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.chunk_keys {
		res << zzz_vproto_internal_pack_cmsgclientlanp2prequestchunkschunkkey(x, 1)
	}
	return res
}

pub fn cmsgclientlanp2prequestchunks_unpack(buf []byte) ?CMsgClientLAnp2PRequestChunks {
	mut res := CMsgClientLAnp2PRequestChunks{}
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
				// [packed=false]
				ii, v := zzz_vproto_internal_unpack_cmsgclientlanp2prequestchunkschunkkey(cur_buf,
					tag_wiretype.wire_type)?
				res.chunk_keys << v
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
pub fn zzz_vproto_internal_new_cmsgclientlanp2prequestchunks() CMsgClientLAnp2PRequestChunks {
	return CMsgClientLAnp2PRequestChunks{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgclientlanp2prequestchunks(o CMsgClientLAnp2PRequestChunks, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgclientlanp2prequestchunks(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgClientLAnp2PRequestChunks) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgclientlanp2prequestchunks_unpack(v)?
	return i, unpacked
}

pub struct CMsgClientLAnp2PRequestChunksResponseChunkData {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	result         u32
	has_result     bool
	depot_id       u32
	has_depot_id   bool
	sha            []byte
	has_sha        bool
	chunk_data     []byte
	has_chunk_data bool
	encrypted      bool
	has_encrypted  bool
	compressed     bool
	has_compressed bool
}

pub fn (o &CMsgClientLAnp2PRequestChunksResponseChunkData) pack() []byte {
	mut res := []byte{}
	if o.has_result {
		res << vproto.pack_uint32_field(o.result, 1)
	}
	if o.has_depot_id {
		res << vproto.pack_uint32_field(o.depot_id, 2)
	}
	if o.has_sha {
		res << vproto.pack_bytes_field(o.sha, 3)
	}
	if o.has_chunk_data {
		res << vproto.pack_bytes_field(o.chunk_data, 4)
	}
	if o.has_encrypted {
		res << vproto.pack_bool_field(o.encrypted, 5)
	}
	if o.has_compressed {
		res << vproto.pack_bool_field(o.compressed, 6)
	}
	return res
}

pub fn cmsgclientlanp2prequestchunksresponsechunkdata_unpack(buf []byte) ?CMsgClientLAnp2PRequestChunksResponseChunkData {
	mut res := CMsgClientLAnp2PRequestChunksResponseChunkData{}
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
				res.has_result = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.result = v
				i = ii
			}
			2 {
				res.has_depot_id = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.depot_id = v
				i = ii
			}
			3 {
				res.has_sha = true
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
				res.sha = v
				i = ii
			}
			4 {
				res.has_chunk_data = true
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
				res.chunk_data = v
				i = ii
			}
			5 {
				res.has_encrypted = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.encrypted = v
				i = ii
			}
			6 {
				res.has_compressed = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.compressed = v
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
pub fn zzz_vproto_internal_new_cmsgclientlanp2prequestchunksresponsechunkdata() CMsgClientLAnp2PRequestChunksResponseChunkData {
	return CMsgClientLAnp2PRequestChunksResponseChunkData{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgclientlanp2prequestchunksresponsechunkdata(o CMsgClientLAnp2PRequestChunksResponseChunkData, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgclientlanp2prequestchunksresponsechunkdata(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgClientLAnp2PRequestChunksResponseChunkData) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgclientlanp2prequestchunksresponsechunkdata_unpack(v)?
	return i, unpacked
}

pub struct CMsgClientLAnp2PRequestChunksResponse {
mut:
	unknown_fields  []vproto.UnknownField
pub mut:
	chunk_responses []CMsgClientLAnp2PRequestChunksResponseChunkData
}

pub fn (o &CMsgClientLAnp2PRequestChunksResponse) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.chunk_responses {
		res << zzz_vproto_internal_pack_cmsgclientlanp2prequestchunksresponsechunkdata(x, 1)
	}
	return res
}

pub fn cmsgclientlanp2prequestchunksresponse_unpack(buf []byte) ?CMsgClientLAnp2PRequestChunksResponse {
	mut res := CMsgClientLAnp2PRequestChunksResponse{}
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
				// [packed=false]
				ii, v := zzz_vproto_internal_unpack_cmsgclientlanp2prequestchunksresponsechunkdata(cur_buf,
					tag_wiretype.wire_type)?
				res.chunk_responses << v
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
pub fn zzz_vproto_internal_new_cmsgclientlanp2prequestchunksresponse() CMsgClientLAnp2PRequestChunksResponse {
	return CMsgClientLAnp2PRequestChunksResponse{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgclientlanp2prequestchunksresponse(o CMsgClientLAnp2PRequestChunksResponse, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgclientlanp2prequestchunksresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgClientLAnp2PRequestChunksResponse) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgclientlanp2prequestchunksresponse_unpack(v)?
	return i, unpacked
}
