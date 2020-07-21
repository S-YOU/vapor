// Generated by vproto - Do not modify
module proto

import emily33901.vproto

[_allow_multiple_values]
enum EUserReviewScorePreference {
	k_euserreviewscorepreference_unset = 0
	k_euserreviewscorepreference_includeall = 1
	k_euserreviewscorepreference_excludebombs = 2
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_new_euserreviewscorepreference() EUserReviewScorePreference {
	return .k_euserreviewscorepreference_unset
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_pack_euserreviewscorepreference(e EUserReviewScorePreference, num u32) []byte {
	return vproto.pack_int32_field(int(e), num)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_pack_euserreviewscorepreference_packed(e []EUserReviewScorePreference, num u32) []byte {
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
fn zzz_vproto_internal_unpack_euserreviewscorepreference(buf []byte, tag_wiretype vproto.WireType) ?(int, EUserReviewScorePreference) {
	i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
	return i, EUserReviewScorePreference(v)
}

// FOR INTERNAL USE ONLY
[inline]
fn zzz_vproto_internal_unpack_euserreviewscorepreference_packed(buf []byte, tag_wiretype vproto.WireType) ?(int, []EUserReviewScorePreference) {
	i, v := vproto.unpack_int32_field_packed(buf, tag_wiretype)?
	return i, array{
		data: v.data
		len: v.len
		cap: v.cap
		element_size: v.element_size
	}
}

pub struct CStore_GetLocalizedNameForTags_Request {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	language       string
	tagids         []u32
}

pub fn (o &CStore_GetLocalizedNameForTags_Request) pack() []byte {
	mut res := []byte{}
	if o.language != '' {
		res << vproto.pack_string_field(o.language, 1)
	}
	// [packed=false]
	for _, x in o.tagids {
		res << vproto.pack_uint32_field(x, 2)
	}
	return res
}

pub fn cstore_getlocalizednamefortags_request_unpack(buf []byte) ?CStore_GetLocalizedNameForTags_Request {
	mut res := zzz_vproto_internal_new_cstore_getlocalizednamefortags_request()
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
				res.language = v
				i = ii
			}
			2 {
				// [packed=false]
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.tagids << v
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
pub fn (a CStore_GetLocalizedNameForTags_Request) eq(b CStore_GetLocalizedNameForTags_Request) bool {
	return true && a.language == b.language && a.tagids == b.tagids
}

[inline]
pub fn (a CStore_GetLocalizedNameForTags_Request) ne(b CStore_GetLocalizedNameForTags_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_GetLocalizedNameForTags_Request) eq(b []CStore_GetLocalizedNameForTags_Request) bool {
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
pub fn (a []CStore_GetLocalizedNameForTags_Request) ne(b []CStore_GetLocalizedNameForTags_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_getlocalizednamefortags_request() CStore_GetLocalizedNameForTags_Request {
	return CStore_GetLocalizedNameForTags_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_getlocalizednamefortags_request(o CStore_GetLocalizedNameForTags_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_getlocalizednamefortags_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_GetLocalizedNameForTags_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_getlocalizednamefortags_request_unpack(v)?
	return i, unpacked
}

pub struct CStore_GetLocalizedNameForTags_Response_Tag {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	tagid          u32
	english_name   string
	name           string
}

pub fn (o &CStore_GetLocalizedNameForTags_Response_Tag) pack() []byte {
	mut res := []byte{}
	if o.tagid != u32(0) {
		res << vproto.pack_uint32_field(o.tagid, 1)
	}
	if o.english_name != '' {
		res << vproto.pack_string_field(o.english_name, 2)
	}
	if o.name != '' {
		res << vproto.pack_string_field(o.name, 3)
	}
	return res
}

pub fn cstore_getlocalizednamefortags_response_tag_unpack(buf []byte) ?CStore_GetLocalizedNameForTags_Response_Tag {
	mut res := zzz_vproto_internal_new_cstore_getlocalizednamefortags_response_tag()
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
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.tagid = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.english_name = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.name = v
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
pub fn (a CStore_GetLocalizedNameForTags_Response_Tag) eq(b CStore_GetLocalizedNameForTags_Response_Tag) bool {
	return true && a.tagid == b.tagid && a.english_name == b.english_name && a.name == b.name
}

[inline]
pub fn (a CStore_GetLocalizedNameForTags_Response_Tag) ne(b CStore_GetLocalizedNameForTags_Response_Tag) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_GetLocalizedNameForTags_Response_Tag) eq(b []CStore_GetLocalizedNameForTags_Response_Tag) bool {
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
pub fn (a []CStore_GetLocalizedNameForTags_Response_Tag) ne(b []CStore_GetLocalizedNameForTags_Response_Tag) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_getlocalizednamefortags_response_tag() CStore_GetLocalizedNameForTags_Response_Tag {
	return CStore_GetLocalizedNameForTags_Response_Tag{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_getlocalizednamefortags_response_tag(o CStore_GetLocalizedNameForTags_Response_Tag, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_getlocalizednamefortags_response_tag(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_GetLocalizedNameForTags_Response_Tag) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_getlocalizednamefortags_response_tag_unpack(v)?
	return i, unpacked
}

pub struct CStore_GetLocalizedNameForTags_Response {
mut:
	unknown_fields []vproto.UnknownField
pub mut:
	tags           []CStore_GetLocalizedNameForTags_Response_Tag
}

pub fn (o &CStore_GetLocalizedNameForTags_Response) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.tags {
		res << zzz_vproto_internal_pack_cstore_getlocalizednamefortags_response_tag(x, 1)
	}
	return res
}

pub fn cstore_getlocalizednamefortags_response_unpack(buf []byte) ?CStore_GetLocalizedNameForTags_Response {
	mut res := zzz_vproto_internal_new_cstore_getlocalizednamefortags_response()
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
				ii, v := zzz_vproto_internal_unpack_cstore_getlocalizednamefortags_response_tag(cur_buf,
					tag_wiretype.wire_type)?
				res.tags << v
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
pub fn (a CStore_GetLocalizedNameForTags_Response) eq(b CStore_GetLocalizedNameForTags_Response) bool {
	return true && a.tags.eq(b.tags)
}

[inline]
pub fn (a CStore_GetLocalizedNameForTags_Response) ne(b CStore_GetLocalizedNameForTags_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_GetLocalizedNameForTags_Response) eq(b []CStore_GetLocalizedNameForTags_Response) bool {
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
pub fn (a []CStore_GetLocalizedNameForTags_Response) ne(b []CStore_GetLocalizedNameForTags_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_getlocalizednamefortags_response() CStore_GetLocalizedNameForTags_Response {
	return CStore_GetLocalizedNameForTags_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_getlocalizednamefortags_response(o CStore_GetLocalizedNameForTags_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_getlocalizednamefortags_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_GetLocalizedNameForTags_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_getlocalizednamefortags_response_unpack(v)?
	return i, unpacked
}

pub struct CStore_GetStorePreferences_Request {
mut:
	unknown_fields []vproto.UnknownField
}

pub fn (o &CStore_GetStorePreferences_Request) pack() []byte {
	res := []byte{}
	return res
}

pub fn cstore_getstorepreferences_request_unpack(buf []byte) ?CStore_GetStorePreferences_Request {
	res := zzz_vproto_internal_new_cstore_getstorepreferences_request()
	return res
}

[inline]
pub fn (a CStore_GetStorePreferences_Request) eq(b CStore_GetStorePreferences_Request) bool {
	return true
}

[inline]
pub fn (a CStore_GetStorePreferences_Request) ne(b CStore_GetStorePreferences_Request) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_GetStorePreferences_Request) eq(b []CStore_GetStorePreferences_Request) bool {
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
pub fn (a []CStore_GetStorePreferences_Request) ne(b []CStore_GetStorePreferences_Request) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_getstorepreferences_request() CStore_GetStorePreferences_Request {
	return CStore_GetStorePreferences_Request{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_getstorepreferences_request(o CStore_GetStorePreferences_Request, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_getstorepreferences_request(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_GetStorePreferences_Request) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_getstorepreferences_request_unpack(v)?
	return i, unpacked
}

pub struct CStore_UserPreferences {
mut:
	unknown_fields                                   []vproto.UnknownField
pub mut:
	primary_language                                 u32
	secondary_languages                              u32
	platform_windows                                 bool
	platform_mac                                     bool
	platform_linux                                   bool
	hide_adult_content_violence                      bool
	hide_adult_content_sex                           bool
	timestamp_updated                                u32
	hide_store_broadcast                             bool
	review_score_preference                          EUserReviewScorePreference = .k_euserreviewscorepreference_unset
	timestamp_content_descriptor_preferences_updated int
}

pub fn (o &CStore_UserPreferences) pack() []byte {
	mut res := []byte{}
	if o.primary_language != u32(0) {
		res << vproto.pack_uint32_field(o.primary_language, 1)
	}
	if o.secondary_languages != u32(0) {
		res << vproto.pack_uint32_field(o.secondary_languages, 2)
	}
	if o.platform_windows != bool(0) {
		res << vproto.pack_bool_field(o.platform_windows, 3)
	}
	if o.platform_mac != bool(0) {
		res << vproto.pack_bool_field(o.platform_mac, 4)
	}
	if o.platform_linux != bool(0) {
		res << vproto.pack_bool_field(o.platform_linux, 5)
	}
	if o.hide_adult_content_violence != bool(0) {
		res << vproto.pack_bool_field(o.hide_adult_content_violence, 6)
	}
	if o.hide_adult_content_sex != bool(0) {
		res << vproto.pack_bool_field(o.hide_adult_content_sex, 7)
	}
	if o.timestamp_updated != u32(0) {
		res << vproto.pack_uint32_field(o.timestamp_updated, 8)
	}
	if o.hide_store_broadcast != bool(0) {
		res << vproto.pack_bool_field(o.hide_store_broadcast, 9)
	}
	if o.review_score_preference != zzz_vproto_internal_new_euserreviewscorepreference() {
		res << zzz_vproto_internal_pack_euserreviewscorepreference(o.review_score_preference, 10)
	}
	if o.timestamp_content_descriptor_preferences_updated != int(0) {
		res << vproto.pack_int32_field(o.timestamp_content_descriptor_preferences_updated, 11)
	}
	return res
}

pub fn cstore_userpreferences_unpack(buf []byte) ?CStore_UserPreferences {
	mut res := zzz_vproto_internal_new_cstore_userpreferences()
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
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.primary_language = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.secondary_languages = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.platform_windows = v
				i = ii
			}
			4 {
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.platform_mac = v
				i = ii
			}
			5 {
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.platform_linux = v
				i = ii
			}
			6 {
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.hide_adult_content_violence = v
				i = ii
			}
			7 {
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.hide_adult_content_sex = v
				i = ii
			}
			8 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.timestamp_updated = v
				i = ii
			}
			9 {
				ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
				res.hide_store_broadcast = v
				i = ii
			}
			10 {
				ii, v := zzz_vproto_internal_unpack_euserreviewscorepreference(cur_buf,
					tag_wiretype.wire_type)?
				res.review_score_preference = v
				i = ii
			}
			11 {
				ii, v := vproto.unpack_int32_field(cur_buf, tag_wiretype.wire_type)?
				res.timestamp_content_descriptor_preferences_updated = v
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
pub fn (a CStore_UserPreferences) eq(b CStore_UserPreferences) bool {
	return true && a.primary_language == b.primary_language &&
		a.secondary_languages == b.secondary_languages &&
		a.platform_windows == b.platform_windows &&
		a.platform_mac == b.platform_mac &&
		a.platform_linux == b.platform_linux &&
		a.hide_adult_content_violence == b.hide_adult_content_violence &&
		a.hide_adult_content_sex == b.hide_adult_content_sex &&
		a.timestamp_updated == b.timestamp_updated &&
		a.hide_store_broadcast == b.hide_store_broadcast &&
		a.review_score_preference == b.review_score_preference &&
		a.timestamp_content_descriptor_preferences_updated == b.timestamp_content_descriptor_preferences_updated
}

[inline]
pub fn (a CStore_UserPreferences) ne(b CStore_UserPreferences) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_UserPreferences) eq(b []CStore_UserPreferences) bool {
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
pub fn (a []CStore_UserPreferences) ne(b []CStore_UserPreferences) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_userpreferences() CStore_UserPreferences {
	return CStore_UserPreferences{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_userpreferences(o CStore_UserPreferences, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_userpreferences(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_UserPreferences) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_userpreferences_unpack(v)?
	return i, unpacked
}

pub struct CStore_UserTagPreferences_Tag {
mut:
	unknown_fields  []vproto.UnknownField
pub mut:
	tagid           u32
	name            string
	timestamp_added u32
}

pub fn (o &CStore_UserTagPreferences_Tag) pack() []byte {
	mut res := []byte{}
	if o.tagid != u32(0) {
		res << vproto.pack_uint32_field(o.tagid, 1)
	}
	if o.name != '' {
		res << vproto.pack_string_field(o.name, 2)
	}
	if o.timestamp_added != u32(0) {
		res << vproto.pack_uint32_field(o.timestamp_added, 3)
	}
	return res
}

pub fn cstore_usertagpreferences_tag_unpack(buf []byte) ?CStore_UserTagPreferences_Tag {
	mut res := zzz_vproto_internal_new_cstore_usertagpreferences_tag()
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
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.tagid = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
				res.name = v
				i = ii
			}
			3 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.timestamp_added = v
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
pub fn (a CStore_UserTagPreferences_Tag) eq(b CStore_UserTagPreferences_Tag) bool {
	return true && a.tagid == b.tagid && a.name == b.name && a.timestamp_added == b.timestamp_added
}

[inline]
pub fn (a CStore_UserTagPreferences_Tag) ne(b CStore_UserTagPreferences_Tag) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_UserTagPreferences_Tag) eq(b []CStore_UserTagPreferences_Tag) bool {
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
pub fn (a []CStore_UserTagPreferences_Tag) ne(b []CStore_UserTagPreferences_Tag) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_usertagpreferences_tag() CStore_UserTagPreferences_Tag {
	return CStore_UserTagPreferences_Tag{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_usertagpreferences_tag(o CStore_UserTagPreferences_Tag, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_usertagpreferences_tag(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_UserTagPreferences_Tag) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_usertagpreferences_tag_unpack(v)?
	return i, unpacked
}

pub struct CStore_UserTagPreferences {
mut:
	unknown_fields  []vproto.UnknownField
pub mut:
	tags_to_exclude []CStore_UserTagPreferences_Tag
}

pub fn (o &CStore_UserTagPreferences) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.tags_to_exclude {
		res << zzz_vproto_internal_pack_cstore_usertagpreferences_tag(x, 1)
	}
	return res
}

pub fn cstore_usertagpreferences_unpack(buf []byte) ?CStore_UserTagPreferences {
	mut res := zzz_vproto_internal_new_cstore_usertagpreferences()
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
				ii, v := zzz_vproto_internal_unpack_cstore_usertagpreferences_tag(cur_buf,
					tag_wiretype.wire_type)?
				res.tags_to_exclude << v
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
pub fn (a CStore_UserTagPreferences) eq(b CStore_UserTagPreferences) bool {
	return true && a.tags_to_exclude.eq(b.tags_to_exclude)
}

[inline]
pub fn (a CStore_UserTagPreferences) ne(b CStore_UserTagPreferences) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_UserTagPreferences) eq(b []CStore_UserTagPreferences) bool {
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
pub fn (a []CStore_UserTagPreferences) ne(b []CStore_UserTagPreferences) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_usertagpreferences() CStore_UserTagPreferences {
	return CStore_UserTagPreferences{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_usertagpreferences(o CStore_UserTagPreferences, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_usertagpreferences(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_UserTagPreferences) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_usertagpreferences_unpack(v)?
	return i, unpacked
}

pub struct CStore_UserContentDescriptorPreferences_ContentDescriptor {
mut:
	unknown_fields       []vproto.UnknownField
pub mut:
	content_descriptorid u32
	timestamp_added      u32
}

pub fn (o &CStore_UserContentDescriptorPreferences_ContentDescriptor) pack() []byte {
	mut res := []byte{}
	if o.content_descriptorid != u32(0) {
		res << vproto.pack_uint32_field(o.content_descriptorid, 1)
	}
	if o.timestamp_added != u32(0) {
		res << vproto.pack_uint32_field(o.timestamp_added, 2)
	}
	return res
}

pub fn cstore_usercontentdescriptorpreferences_contentdescriptor_unpack(buf []byte) ?CStore_UserContentDescriptorPreferences_ContentDescriptor {
	mut res := zzz_vproto_internal_new_cstore_usercontentdescriptorpreferences_contentdescriptor()
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
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.content_descriptorid = v
				i = ii
			}
			2 {
				ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
				res.timestamp_added = v
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
pub fn (a CStore_UserContentDescriptorPreferences_ContentDescriptor) eq(b CStore_UserContentDescriptorPreferences_ContentDescriptor) bool {
	return true && a.content_descriptorid == b.content_descriptorid &&
		a.timestamp_added == b.timestamp_added
}

[inline]
pub fn (a CStore_UserContentDescriptorPreferences_ContentDescriptor) ne(b CStore_UserContentDescriptorPreferences_ContentDescriptor) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_UserContentDescriptorPreferences_ContentDescriptor) eq(b []CStore_UserContentDescriptorPreferences_ContentDescriptor) bool {
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
pub fn (a []CStore_UserContentDescriptorPreferences_ContentDescriptor) ne(b []CStore_UserContentDescriptorPreferences_ContentDescriptor) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_usercontentdescriptorpreferences_contentdescriptor() CStore_UserContentDescriptorPreferences_ContentDescriptor {
	return CStore_UserContentDescriptorPreferences_ContentDescriptor{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_usercontentdescriptorpreferences_contentdescriptor(o CStore_UserContentDescriptorPreferences_ContentDescriptor, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_usercontentdescriptorpreferences_contentdescriptor(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_UserContentDescriptorPreferences_ContentDescriptor) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_usercontentdescriptorpreferences_contentdescriptor_unpack(v)?
	return i, unpacked
}

pub struct CStore_UserContentDescriptorPreferences {
mut:
	unknown_fields                 []vproto.UnknownField
pub mut:
	content_descriptors_to_exclude []CStore_UserContentDescriptorPreferences_ContentDescriptor
}

pub fn (o &CStore_UserContentDescriptorPreferences) pack() []byte {
	mut res := []byte{}
	// [packed=false]
	for _, x in o.content_descriptors_to_exclude {
		res <<
			zzz_vproto_internal_pack_cstore_usercontentdescriptorpreferences_contentdescriptor(x, 1)
	}
	return res
}

pub fn cstore_usercontentdescriptorpreferences_unpack(buf []byte) ?CStore_UserContentDescriptorPreferences {
	mut res := zzz_vproto_internal_new_cstore_usercontentdescriptorpreferences()
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
				ii, v := zzz_vproto_internal_unpack_cstore_usercontentdescriptorpreferences_contentdescriptor(cur_buf,
					tag_wiretype.wire_type)?
				res.content_descriptors_to_exclude << v
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
pub fn (a CStore_UserContentDescriptorPreferences) eq(b CStore_UserContentDescriptorPreferences) bool {
	return true && a.content_descriptors_to_exclude.eq(b.content_descriptors_to_exclude)
}

[inline]
pub fn (a CStore_UserContentDescriptorPreferences) ne(b CStore_UserContentDescriptorPreferences) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_UserContentDescriptorPreferences) eq(b []CStore_UserContentDescriptorPreferences) bool {
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
pub fn (a []CStore_UserContentDescriptorPreferences) ne(b []CStore_UserContentDescriptorPreferences) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_usercontentdescriptorpreferences() CStore_UserContentDescriptorPreferences {
	return CStore_UserContentDescriptorPreferences{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_usercontentdescriptorpreferences(o CStore_UserContentDescriptorPreferences, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_usercontentdescriptorpreferences(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_UserContentDescriptorPreferences) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_usercontentdescriptorpreferences_unpack(v)?
	return i, unpacked
}

pub struct CStore_GetStorePreferences_Response {
mut:
	unknown_fields                 []vproto.UnknownField
pub mut:
	preferences                    CStore_UserPreferences
	tag_preferences                CStore_UserTagPreferences
	content_descriptor_preferences CStore_UserContentDescriptorPreferences
}

pub fn (o &CStore_GetStorePreferences_Response) pack() []byte {
	mut res := []byte{}
	if o.preferences.ne(zzz_vproto_internal_new_cstore_userpreferences()) {
		res << zzz_vproto_internal_pack_cstore_userpreferences(o.preferences, 1)
	}
	if o.tag_preferences.ne(zzz_vproto_internal_new_cstore_usertagpreferences()) {
		res << zzz_vproto_internal_pack_cstore_usertagpreferences(o.tag_preferences, 2)
	}
	if o.content_descriptor_preferences.ne(zzz_vproto_internal_new_cstore_usercontentdescriptorpreferences()) {
		res <<
			zzz_vproto_internal_pack_cstore_usercontentdescriptorpreferences(o.content_descriptor_preferences, 3)
	}
	return res
}

pub fn cstore_getstorepreferences_response_unpack(buf []byte) ?CStore_GetStorePreferences_Response {
	mut res := zzz_vproto_internal_new_cstore_getstorepreferences_response()
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
				ii, v := zzz_vproto_internal_unpack_cstore_userpreferences(cur_buf, tag_wiretype.wire_type)?
				res.preferences = v
				i = ii
			}
			2 {
				ii, v := zzz_vproto_internal_unpack_cstore_usertagpreferences(cur_buf,
					tag_wiretype.wire_type)?
				res.tag_preferences = v
				i = ii
			}
			3 {
				ii, v := zzz_vproto_internal_unpack_cstore_usercontentdescriptorpreferences(cur_buf,
					tag_wiretype.wire_type)?
				res.content_descriptor_preferences = v
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
pub fn (a CStore_GetStorePreferences_Response) eq(b CStore_GetStorePreferences_Response) bool {
	return true && a.preferences.eq(b.preferences) && a.tag_preferences.eq(b.tag_preferences) &&
		a.content_descriptor_preferences.eq(b.content_descriptor_preferences)
}

[inline]
pub fn (a CStore_GetStorePreferences_Response) ne(b CStore_GetStorePreferences_Response) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_GetStorePreferences_Response) eq(b []CStore_GetStorePreferences_Response) bool {
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
pub fn (a []CStore_GetStorePreferences_Response) ne(b []CStore_GetStorePreferences_Response) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_getstorepreferences_response() CStore_GetStorePreferences_Response {
	return CStore_GetStorePreferences_Response{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_getstorepreferences_response(o CStore_GetStorePreferences_Response, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_getstorepreferences_response(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_GetStorePreferences_Response) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_getstorepreferences_response_unpack(v)?
	return i, unpacked
}

pub struct CStore_StorePreferencesChanged_Notification {
mut:
	unknown_fields                 []vproto.UnknownField
pub mut:
	preferences                    CStore_UserPreferences
	tag_preferences                CStore_UserTagPreferences
	content_descriptor_preferences CStore_UserContentDescriptorPreferences
}

pub fn (o &CStore_StorePreferencesChanged_Notification) pack() []byte {
	mut res := []byte{}
	if o.preferences.ne(zzz_vproto_internal_new_cstore_userpreferences()) {
		res << zzz_vproto_internal_pack_cstore_userpreferences(o.preferences, 1)
	}
	if o.tag_preferences.ne(zzz_vproto_internal_new_cstore_usertagpreferences()) {
		res << zzz_vproto_internal_pack_cstore_usertagpreferences(o.tag_preferences, 2)
	}
	if o.content_descriptor_preferences.ne(zzz_vproto_internal_new_cstore_usercontentdescriptorpreferences()) {
		res <<
			zzz_vproto_internal_pack_cstore_usercontentdescriptorpreferences(o.content_descriptor_preferences, 3)
	}
	return res
}

pub fn cstore_storepreferenceschanged_notification_unpack(buf []byte) ?CStore_StorePreferencesChanged_Notification {
	mut res := zzz_vproto_internal_new_cstore_storepreferenceschanged_notification()
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
				ii, v := zzz_vproto_internal_unpack_cstore_userpreferences(cur_buf, tag_wiretype.wire_type)?
				res.preferences = v
				i = ii
			}
			2 {
				ii, v := zzz_vproto_internal_unpack_cstore_usertagpreferences(cur_buf,
					tag_wiretype.wire_type)?
				res.tag_preferences = v
				i = ii
			}
			3 {
				ii, v := zzz_vproto_internal_unpack_cstore_usercontentdescriptorpreferences(cur_buf,
					tag_wiretype.wire_type)?
				res.content_descriptor_preferences = v
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
pub fn (a CStore_StorePreferencesChanged_Notification) eq(b CStore_StorePreferencesChanged_Notification) bool {
	return true && a.preferences.eq(b.preferences) && a.tag_preferences.eq(b.tag_preferences) &&
		a.content_descriptor_preferences.eq(b.content_descriptor_preferences)
}

[inline]
pub fn (a CStore_StorePreferencesChanged_Notification) ne(b CStore_StorePreferencesChanged_Notification) bool {
	return !a.eq(b)
}

[inline]
pub fn (a []CStore_StorePreferencesChanged_Notification) eq(b []CStore_StorePreferencesChanged_Notification) bool {
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
pub fn (a []CStore_StorePreferencesChanged_Notification) ne(b []CStore_StorePreferencesChanged_Notification) bool {
	return !a.eq(b)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_new_cstore_storepreferenceschanged_notification() CStore_StorePreferencesChanged_Notification {
	return CStore_StorePreferencesChanged_Notification{}
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_pack_cstore_storepreferenceschanged_notification(o CStore_StorePreferencesChanged_Notification, num u32) []byte {
	return vproto.pack_message_field(o.pack(), num)
}

// FOR INTERNAL USE ONLY
[inline]
pub fn zzz_vproto_internal_unpack_cstore_storepreferenceschanged_notification(buf []byte, tag_wiretype vproto.WireType) ?(int, CStore_StorePreferencesChanged_Notification) {
	i, v := vproto.unpack_message_field(buf, tag_wiretype)?
	mut unpacked := cstore_storepreferenceschanged_notification_unpack(v)?
	return i, unpacked
}
