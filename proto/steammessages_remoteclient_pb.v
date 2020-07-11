// Generated by vproto - Do not modify
module proto

import emily33901.vproto

pub struct CMsgRemoteClientStatus {
mut:
	unknown_fields  []vproto.UnknownField
pub mut:
	client_id       u64
	has_client_id   bool
	instance_id     u64
	has_instance_id bool
	status          CMsgRemoteClientBroadcastStatus
	has_status      bool
}

pub fn (o &CMsgRemoteClientStatus) pack() []byte {
	mut res := []byte{}
	if o.has_client_id {
		res << vproto.pack_uint64_field(o.client_id, 1)
	}
	if o.has_instance_id {
		res << vproto.pack_uint64_field(o.instance_id, 2)
	}
	if o.has_status {
		res << zzz_vproto_internal_pack_cmsgremoteclientbroadcaststatus(o.status, 3)
	}
	return res
}

pub fn cmsgremoteclientstatus_unpack(buf []byte) ?CMsgRemoteClientStatus {
	mut res := CMsgRemoteClientStatus{}
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
				res.has_client_id = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.client_id = v
				i = ii
			}
			2 {
				res.has_instance_id = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.instance_id = v
				i = ii
			}
			3 {
				res.has_status = true
				ii, v := zzz_vproto_internal_unpack_cmsgremoteclientbroadcaststatus(cur_buf,
					tag_wiretype.wire_type)?
				res.status = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientstatus() CMsgRemoteClientStatus {
	return CMsgRemoteClientStatus{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientstatus(o CMsgRemoteClientStatus, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientstatus(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientStatus) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientstatus_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientAppStatusAppUpdateInfo {
mut:
	unknown_fields                  []vproto.UnknownField
pub mut:
	time_update_start               u32
	has_time_update_start           bool
	bytes_to_download               u64
	has_bytes_to_download           bool
	bytes_downloaded                u64
	has_bytes_downloaded            bool
	bytes_to_process                u64
	has_bytes_to_process            bool
	bytes_processed                 u64
	has_bytes_processed             bool
	estimated_seconds_remaining     int
	has_estimated_seconds_remaining bool
	update_result                   int
	has_update_result               bool
	update_state                    u32
	has_update_state                bool
}

pub fn (o &CMsgRemoteClientAppStatusAppUpdateInfo) pack() []byte {
	mut res := []byte{}
	if o.has_time_update_start {
		res << vproto.pack_32bit_field(o.time_update_start, 1)
	}
	if o.has_bytes_to_download {
		res << vproto.pack_uint64_field(o.bytes_to_download, 2)
	}
	if o.has_bytes_downloaded {
		res << vproto.pack_uint64_field(o.bytes_downloaded, 3)
	}
	if o.has_bytes_to_process {
		res << vproto.pack_uint64_field(o.bytes_to_process, 4)
	}
	if o.has_bytes_processed {
		res << vproto.pack_uint64_field(o.bytes_processed, 5)
	}
	if o.has_estimated_seconds_remaining {
		res << vproto.pack_int32_field(o.estimated_seconds_remaining, 6)
	}
	if o.has_update_result {
		res << vproto.pack_int32_field(o.update_result, 7)
	}
	if o.has_update_state {
		res << vproto.pack_uint32_field(o.update_state, 8)
	}
	return res
}

pub fn cmsgremoteclientappstatusappupdateinfo_unpack(buf []byte) ?CMsgRemoteClientAppStatusAppUpdateInfo {
	mut res := CMsgRemoteClientAppStatusAppUpdateInfo{}
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
				res.has_time_update_start = true
				ii, v := vproto.unpack_32bit_field(cur_buf, tag_wiretype.wire_type)?
				res.time_update_start = v
				i = ii
			}
			2 {
				res.has_bytes_to_download = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.bytes_to_download = v
				i = ii
			}
			3 {
				res.has_bytes_downloaded = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.bytes_downloaded = v
				i = ii
			}
			4 {
				res.has_bytes_to_process = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.bytes_to_process = v
				i = ii
			}
			5 {
				res.has_bytes_processed = true
				ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
				res.bytes_processed = v
				i = ii
			}
			6 {
				res.has_estimated_seconds_remaining = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.estimated_seconds_remaining = v
				i = ii
			}
			7 {
				res.has_update_result = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.update_result = v
				i = ii
			}
			8 {
				res.has_update_state = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.update_state = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientappstatusappupdateinfo() CMsgRemoteClientAppStatusAppUpdateInfo {
	return CMsgRemoteClientAppStatusAppUpdateInfo{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientappstatusappupdateinfo(o CMsgRemoteClientAppStatusAppUpdateInfo, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientappstatusappupdateinfo(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientAppStatusAppUpdateInfo) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientappstatusappupdateinfo_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientAppStatusShortcutInfo {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	name           string
	has_name       bool
	icon           string
	has_icon       bool
	categories     []string
	exepath        string
	has_exepath    bool
}

pub fn (o &CMsgRemoteClientAppStatusShortcutInfo) pack() []byte {
	mut res := []byte{}
	if o.has_name {
		res << vproto.pack_string_field(o.name, 1)
	}
	if o.has_icon {
		res << vproto.pack_string_field(o.icon, 2)
	}
	// [packed=false]
	for _, x in o.categories {
		res << vproto.pack_string_field(x, 3)
	}
	if o.has_exepath {
		res << vproto.pack_string_field(o.exepath, 4)
	}
	return res
}

pub fn cmsgremoteclientappstatusshortcutinfo_unpack(buf []byte) ?CMsgRemoteClientAppStatusShortcutInfo {
	mut res := CMsgRemoteClientAppStatusShortcutInfo{}
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
				res.has_name = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.name = v
				i = ii
			}
			2 {
				res.has_icon = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.icon = v
				i = ii
			}
			3 {
				// [packed=false]
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.categories << v
				i = ii
			}
			4 {
				res.has_exepath = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.exepath = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientappstatusshortcutinfo() CMsgRemoteClientAppStatusShortcutInfo {
	return CMsgRemoteClientAppStatusShortcutInfo{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientappstatusshortcutinfo(o CMsgRemoteClientAppStatusShortcutInfo, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientappstatusshortcutinfo(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientAppStatusShortcutInfo) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientappstatusshortcutinfo_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientAppStatusAppStatus {
mut:
	unknown_fields       []vproto.UnknownField
pub mut:
	app_id               u32
	has_app_id           bool
	app_state            u32
	has_app_state        bool
	update_info          CMsgRemoteClientAppStatusAppUpdateInfo
	has_update_info      bool
	shortcut_info        CMsgRemoteClientAppStatusShortcutInfo
	has_shortcut_info    bool
	launch_available     bool
	has_launch_available bool
}

pub fn (o &CMsgRemoteClientAppStatusAppStatus) pack() []byte {
	mut res := []byte{}
	if o.has_app_id {
		res << vproto.pack_uint32_field(o.app_id, 1)
	}
	if o.has_app_state {
		res << vproto.pack_uint32_field(o.app_state, 2)
	}
	if o.has_update_info {
		res << zzz_vproto_internal_pack_cmsgremoteclientappstatusappupdateinfo(o.update_info, 3)
	}
	if o.has_shortcut_info {
		res << zzz_vproto_internal_pack_cmsgremoteclientappstatusshortcutinfo(o.shortcut_info, 4)
	}
	if o.has_launch_available {
		res << vproto.pack_bool_field(o.launch_available, 5)
	}
	return res
}

pub fn cmsgremoteclientappstatusappstatus_unpack(buf []byte) ?CMsgRemoteClientAppStatusAppStatus {
	mut res := CMsgRemoteClientAppStatusAppStatus{}
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
				res.has_app_state = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.app_state = v
				i = ii
			}
			3 {
				res.has_update_info = true
				ii, v := zzz_vproto_internal_unpack_cmsgremoteclientappstatusappupdateinfo(cur_buf,
					tag_wiretype.wire_type)?
				res.update_info = v
				i = ii
			}
			4 {
				res.has_shortcut_info = true
				ii, v := zzz_vproto_internal_unpack_cmsgremoteclientappstatusshortcutinfo(cur_buf,
					tag_wiretype.wire_type)?
				res.shortcut_info = v
				i = ii
			}
			5 {
				res.has_launch_available = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_available = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientappstatusappstatus() CMsgRemoteClientAppStatusAppStatus {
	return CMsgRemoteClientAppStatusAppStatus{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientappstatusappstatus(o CMsgRemoteClientAppStatusAppStatus, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientappstatusappstatus(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientAppStatusAppStatus) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientappstatusappstatus_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientAppStatus {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	status_updates []CMsgRemoteClientAppStatusAppStatus
}

pub fn (o &CMsgRemoteClientAppStatus) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.status_updates {
		res << zzz_vproto_internal_pack_cmsgremoteclientappstatusappstatus(x, 1)
	}
	return res
}

pub fn cmsgremoteclientappstatus_unpack(buf []byte) ?CMsgRemoteClientAppStatus {
	mut res := CMsgRemoteClientAppStatus{}
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
				ii, v := zzz_vproto_internal_unpack_cmsgremoteclientappstatusappstatus(cur_buf,
					tag_wiretype.wire_type)?
				res.status_updates << v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientappstatus() CMsgRemoteClientAppStatus {
	return CMsgRemoteClientAppStatus{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientappstatus(o CMsgRemoteClientAppStatus, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientappstatus(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientAppStatus) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientappstatus_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientStartStreamReservedGamepad {
mut:
	unknown_fields         []vproto.UnknownField
pub mut:
	controller_type        u32
	has_controller_type    bool
	controller_subtype     u32
	has_controller_subtype bool
}

pub fn (o &CMsgRemoteClientStartStreamReservedGamepad) pack() []byte {
	mut res := []byte{}
	if o.has_controller_type {
		res << vproto.pack_uint32_field(o.controller_type, 1)
	}
	if o.has_controller_subtype {
		res << vproto.pack_uint32_field(o.controller_subtype, 2)
	}
	return res
}

pub fn cmsgremoteclientstartstreamreservedgamepad_unpack(buf []byte) ?CMsgRemoteClientStartStreamReservedGamepad {
	mut res := CMsgRemoteClientStartStreamReservedGamepad{}
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
				res.has_controller_type = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.controller_type = v
				i = ii
			}
			2 {
				res.has_controller_subtype = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.controller_subtype = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientstartstreamreservedgamepad() CMsgRemoteClientStartStreamReservedGamepad {
	return CMsgRemoteClientStartStreamReservedGamepad{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientstartstreamreservedgamepad(o CMsgRemoteClientStartStreamReservedGamepad, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientstartstreamreservedgamepad(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientStartStreamReservedGamepad) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientstartstreamreservedgamepad_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientStartStream {
mut:
	unknown_fields           []vproto.UnknownField
pub mut:
	app_id                   u32
	has_app_id               bool
	environment              int
	has_environment          bool
	gamepad_count            int
	has_gamepad_count        bool
	launch_option            int
	has_launch_option        bool
	lock_parental_lock       bool
	has_lock_parental_lock   bool
	unlock_parental_lock     string
	has_unlock_parental_lock bool
	maximum_resolution_x     int
	has_maximum_resolution_x bool
	maximum_resolution_y     int
	has_maximum_resolution_y bool
	gamepads                 []CMsgRemoteClientStartStreamReservedGamepad
	audio_channel_count      int
	has_audio_channel_count  bool
	supported_transport      []EStreamTransport
}

pub fn (o &CMsgRemoteClientStartStream) pack() []byte {
	mut res := []byte{}
	if o.has_app_id {
		res << vproto.pack_uint32_field(o.app_id, 1)
	}
	if o.has_environment {
		res << vproto.pack_int32_field(o.environment, 2)
	}
	if o.has_gamepad_count {
		res << vproto.pack_int32_field(o.gamepad_count, 3)
	}
	if o.has_launch_option {
		res << vproto.pack_int32_field(o.launch_option, 4)
	}
	if o.has_lock_parental_lock {
		res << vproto.pack_bool_field(o.lock_parental_lock, 5)
	}
	if o.has_unlock_parental_lock {
		res << vproto.pack_string_field(o.unlock_parental_lock, 6)
	}
	if o.has_maximum_resolution_x {
		res << vproto.pack_int32_field(o.maximum_resolution_x, 7)
	}
	if o.has_maximum_resolution_y {
		res << vproto.pack_int32_field(o.maximum_resolution_y, 8)
	}
	// [packed=false]
	for _, x in o.gamepads {
		res << zzz_vproto_internal_pack_cmsgremoteclientstartstreamreservedgamepad(x, 9)
	}
	if o.has_audio_channel_count {
		res << vproto.pack_int32_field(o.audio_channel_count, 10)
	}
	// [packed=false]
	for _, x in o.supported_transport {
		res << zzz_vproto_internal_pack_estreamtransport(x, 11)
	}
	return res
}

pub fn cmsgremoteclientstartstream_unpack(buf []byte) ?CMsgRemoteClientStartStream {
	mut res := CMsgRemoteClientStartStream{}
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
				res.has_environment = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.environment = v
				i = ii
			}
			3 {
				res.has_gamepad_count = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.gamepad_count = v
				i = ii
			}
			4 {
				res.has_launch_option = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_option = v
				i = ii
			}
			5 {
				res.has_lock_parental_lock = true
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.lock_parental_lock = v
				i = ii
			}
			6 {
				res.has_unlock_parental_lock = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.unlock_parental_lock = v
				i = ii
			}
			7 {
				res.has_maximum_resolution_x = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.maximum_resolution_x = v
				i = ii
			}
			8 {
				res.has_maximum_resolution_y = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.maximum_resolution_y = v
				i = ii
			}
			9 {
				// [packed=false]
				ii, v := zzz_vproto_internal_unpack_cmsgremoteclientstartstreamreservedgamepad(cur_buf,
					tag_wiretype.wire_type)?
				res.gamepads << v
				i = ii
			}
			10 {
				res.has_audio_channel_count = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.audio_channel_count = v
				i = ii
			}
			11 {
				// [packed=false]
				ii, v := zzz_vproto_internal_unpack_estreamtransport(cur_buf, tag_wiretype.wire_type)?
				res.supported_transport << v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientstartstream() CMsgRemoteClientStartStream {
	return CMsgRemoteClientStartStream{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientstartstream(o CMsgRemoteClientStartStream, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientstartstream(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientStartStream) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientstartstream_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientStartStreamResponse {
mut:
	unknown_fields         []vproto.UnknownField
pub mut:
	e_launch_result        int
	has_e_launch_result    bool
	stream_port            u32
	has_stream_port        bool
	launch_options         []int
	auth_token             []byte
	has_auth_token         bool
	transport              EStreamTransport
	has_transport          bool
	relay_server           string
	has_relay_server       bool
	launch_task            string
	has_launch_task        bool
	launch_task_detail     string
	has_launch_task_detail bool
	launch_tasks_done      int
	has_launch_tasks_done  bool
	launch_tasks_total     int
	has_launch_tasks_total bool
}

pub fn (o &CMsgRemoteClientStartStreamResponse) pack() []byte {
	mut res := []byte{}
	if o.has_e_launch_result {
		res << vproto.pack_int32_field(o.e_launch_result, 1)
	}
	if o.has_stream_port {
		res << vproto.pack_uint32_field(o.stream_port, 2)
	}
	// [packed=false]
	for _, x in o.launch_options {
		res << vproto.pack_int32_field(x, 3)
	}
	if o.has_auth_token {
		res << vproto.pack_bytes_field(o.auth_token, 4)
	}
	if o.has_transport {
		res << zzz_vproto_internal_pack_estreamtransport(o.transport, 5)
	}
	if o.has_relay_server {
		res << vproto.pack_string_field(o.relay_server, 6)
	}
	if o.has_launch_task {
		res << vproto.pack_string_field(o.launch_task, 7)
	}
	if o.has_launch_task_detail {
		res << vproto.pack_string_field(o.launch_task_detail, 8)
	}
	if o.has_launch_tasks_done {
		res << vproto.pack_int32_field(o.launch_tasks_done, 9)
	}
	if o.has_launch_tasks_total {
		res << vproto.pack_int32_field(o.launch_tasks_total, 10)
	}
	return res
}

pub fn cmsgremoteclientstartstreamresponse_unpack(buf []byte) ?CMsgRemoteClientStartStreamResponse {
	mut res := CMsgRemoteClientStartStreamResponse{}
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
				res.has_e_launch_result = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.e_launch_result = v
				i = ii
			}
			2 {
				res.has_stream_port = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.stream_port = v
				i = ii
			}
			3 {
				// [packed=false]
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_options << v
				i = ii
			}
			4 {
				res.has_auth_token = true
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
				res.auth_token = v
				i = ii
			}
			5 {
				res.has_transport = true
				ii, v := zzz_vproto_internal_unpack_estreamtransport(cur_buf, tag_wiretype.wire_type)?
				res.transport = v
				i = ii
			}
			6 {
				res.has_relay_server = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.relay_server = v
				i = ii
			}
			7 {
				res.has_launch_task = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_task = v
				i = ii
			}
			8 {
				res.has_launch_task_detail = true
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_task_detail = v
				i = ii
			}
			9 {
				res.has_launch_tasks_done = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_tasks_done = v
				i = ii
			}
			10 {
				res.has_launch_tasks_total = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.launch_tasks_total = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientstartstreamresponse() CMsgRemoteClientStartStreamResponse {
	return CMsgRemoteClientStartStreamResponse{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientstartstreamresponse(o CMsgRemoteClientStartStreamResponse, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientstartstreamresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientStartStreamResponse) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientstartstreamresponse_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientPing {
mut:
	unknown_fields []vproto.UnknownField
}

pub fn (o &CMsgRemoteClientPing) pack() []byte {
	res := []byte{}
	return res
}

pub fn cmsgremoteclientping_unpack(buf []byte) ?CMsgRemoteClientPing {
	res := CMsgRemoteClientPing{}
	return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cmsgremoteclientping() CMsgRemoteClientPing {
	return CMsgRemoteClientPing{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientping(o CMsgRemoteClientPing, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientping(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientPing) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientping_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientPingResponse {
mut:
	unknown_fields []vproto.UnknownField
}

pub fn (o &CMsgRemoteClientPingResponse) pack() []byte {
	res := []byte{}
	return res
}

pub fn cmsgremoteclientpingresponse_unpack(buf []byte) ?CMsgRemoteClientPingResponse {
	res := CMsgRemoteClientPingResponse{}
	return res
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_new_cmsgremoteclientpingresponse() CMsgRemoteClientPingResponse {
	return CMsgRemoteClientPingResponse{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientpingresponse(o CMsgRemoteClientPingResponse, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientpingresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientPingResponse) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientpingresponse_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientAcceptEUla {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	app_id         []u32
}

pub fn (o &CMsgRemoteClientAcceptEUla) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.app_id {
		res << vproto.pack_uint32_field(x, 1)
	}
	return res
}

pub fn cmsgremoteclientaccepteula_unpack(buf []byte) ?CMsgRemoteClientAcceptEUla {
	mut res := CMsgRemoteClientAcceptEUla{}
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
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.app_id << v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientaccepteula() CMsgRemoteClientAcceptEUla {
	return CMsgRemoteClientAcceptEUla{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientaccepteula(o CMsgRemoteClientAcceptEUla, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientaccepteula(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientAcceptEUla) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientaccepteula_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientGetControllerConfig {
mut:
	unknown_fields       []vproto.UnknownField
pub mut:
	app_id               u32
	has_app_id           bool
	controller_index     u32
	has_controller_index bool
}

pub fn (o &CMsgRemoteClientGetControllerConfig) pack() []byte {
	mut res := []byte{}
	if o.has_app_id {
		res << vproto.pack_uint32_field(o.app_id, 1)
	}
	if o.has_controller_index {
		res << vproto.pack_uint32_field(o.controller_index, 3)
	}
	return res
}

pub fn cmsgremoteclientgetcontrollerconfig_unpack(buf []byte) ?CMsgRemoteClientGetControllerConfig {
	mut res := CMsgRemoteClientGetControllerConfig{}
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
			3 {
				res.has_controller_index = true
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.controller_index = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientgetcontrollerconfig() CMsgRemoteClientGetControllerConfig {
	return CMsgRemoteClientGetControllerConfig{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientgetcontrollerconfig(o CMsgRemoteClientGetControllerConfig, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientgetcontrollerconfig(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientGetControllerConfig) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientgetcontrollerconfig_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientGetControllerConfigResponse {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	eresult        int
	has_eresult    bool
	config_vdf     []byte
	has_config_vdf bool
}

pub fn (o &CMsgRemoteClientGetControllerConfigResponse) pack() []byte {
	mut res := []byte{}
	if o.has_eresult {
		res << vproto.pack_int32_field(o.eresult, 1)
	}
	if o.has_config_vdf {
		res << vproto.pack_bytes_field(o.config_vdf, 2)
	}
	return res
}

pub fn cmsgremoteclientgetcontrollerconfigresponse_unpack(buf []byte) ?CMsgRemoteClientGetControllerConfigResponse {
	mut res := CMsgRemoteClientGetControllerConfigResponse{}
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
				res.has_eresult = true
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.eresult = v
				i = ii
			}
			2 {
				res.has_config_vdf = true
				ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
				res.config_vdf = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientgetcontrollerconfigresponse() CMsgRemoteClientGetControllerConfigResponse {
	return CMsgRemoteClientGetControllerConfigResponse{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientgetcontrollerconfigresponse(o CMsgRemoteClientGetControllerConfigResponse, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientgetcontrollerconfigresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientGetControllerConfigResponse) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientgetcontrollerconfigresponse_unpack(v)?
	return i, unpacked
}

pub struct CMsgRemoteClientStreamingEnabled {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	enabled        bool
}

pub fn (o &CMsgRemoteClientStreamingEnabled) pack() []byte {
	mut res := []byte{}
	res << vproto.pack_bool_field(o.enabled, 1)
	return res
}

pub fn cmsgremoteclientstreamingenabled_unpack(buf []byte) ?CMsgRemoteClientStreamingEnabled {
	mut res := CMsgRemoteClientStreamingEnabled{}
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
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.enabled = v
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
pub fn zzz_vproto_internal_new_cmsgremoteclientstreamingenabled() CMsgRemoteClientStreamingEnabled {
	return CMsgRemoteClientStreamingEnabled{}
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cmsgremoteclientstreamingenabled(o CMsgRemoteClientStreamingEnabled, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cmsgremoteclientstreamingenabled(buf []byte, tag_wiretype vproto.WireType) ?(int, CMsgRemoteClientStreamingEnabled) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cmsgremoteclientstreamingenabled_unpack(v)?
	return i, unpacked
}
