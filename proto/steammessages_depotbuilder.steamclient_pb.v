
// Generated by vproto - Do not modify
module proto

import emily33901.vproto


pub struct CContentBuilderInitDepotBuildRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depotid u32
has_depotid bool
workshop_itemid u64
has_workshop_itemid bool
for_local_cs bool
has_for_local_cs bool
}
pub fn (o &CContentBuilderInitDepotBuildRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_depotid {
res << vproto.pack_uint32_field(o.depotid, 2)
}

if o.has_workshop_itemid {
res << vproto.pack_uint64_field(o.workshop_itemid, 3)
}

if o.has_for_local_cs {
res << vproto.pack_bool_field(o.for_local_cs, 4)
}

return res
}

pub fn ccontentbuilderinitdepotbuildrequest_unpack(buf []byte) ?CContentBuilderInitDepotBuildRequest {
mut res := CContentBuilderInitDepotBuildRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_depotid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.depotid = v
i = ii
}

3 {
res.has_workshop_itemid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.workshop_itemid = v
i = ii
}

4 {
res.has_for_local_cs = true
ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
res.for_local_cs = v
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
pub fn zzz_vproto_internal_new_ccontentbuilderinitdepotbuildrequest() CContentBuilderInitDepotBuildRequest {
return CContentBuilderInitDepotBuildRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuilderinitdepotbuildrequest(o CContentBuilderInitDepotBuildRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuilderinitdepotbuildrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderInitDepotBuildRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuilderinitdepotbuildrequest_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderInitDepotBuildResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
baseline_manifestid u64
has_baseline_manifestid bool
chunk_size u32
has_chunk_size bool
aes_key []byte
has_aes_key bool
rsa_key []byte
has_rsa_key bool
url_host string
has_url_host bool
offset_detection_enabled bool
has_offset_detection_enabled bool
offset_detection_min_clean_chunk u32
has_offset_detection_min_clean_chunk bool
offset_detection_blast_radius_pre u32
has_offset_detection_blast_radius_pre bool
offset_detection_blast_radius_post u32
has_offset_detection_blast_radius_post bool
offset_detection_max_distance_pre u32
has_offset_detection_max_distance_pre bool
offset_detection_max_distance_post u32
has_offset_detection_max_distance_post bool
}
pub fn (o &CContentBuilderInitDepotBuildResponse) pack() []byte {
mut res := []byte{}
if o.has_baseline_manifestid {
res << vproto.pack_uint64_field(o.baseline_manifestid, 1)
}

if o.has_chunk_size {
res << vproto.pack_uint32_field(o.chunk_size, 2)
}

if o.has_aes_key {
res << vproto.pack_bytes_field(o.aes_key, 3)
}

if o.has_rsa_key {
res << vproto.pack_bytes_field(o.rsa_key, 4)
}

if o.has_url_host {
res << vproto.pack_string_field(o.url_host, 5)
}

if o.has_offset_detection_enabled {
res << vproto.pack_bool_field(o.offset_detection_enabled, 6)
}

if o.has_offset_detection_min_clean_chunk {
res << vproto.pack_uint32_field(o.offset_detection_min_clean_chunk, 7)
}

if o.has_offset_detection_blast_radius_pre {
res << vproto.pack_uint32_field(o.offset_detection_blast_radius_pre, 8)
}

if o.has_offset_detection_blast_radius_post {
res << vproto.pack_uint32_field(o.offset_detection_blast_radius_post, 9)
}

if o.has_offset_detection_max_distance_pre {
res << vproto.pack_uint32_field(o.offset_detection_max_distance_pre, 10)
}

if o.has_offset_detection_max_distance_post {
res << vproto.pack_uint32_field(o.offset_detection_max_distance_post, 11)
}

return res
}

pub fn ccontentbuilderinitdepotbuildresponse_unpack(buf []byte) ?CContentBuilderInitDepotBuildResponse {
mut res := CContentBuilderInitDepotBuildResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_baseline_manifestid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.baseline_manifestid = v
i = ii
}

2 {
res.has_chunk_size = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.chunk_size = v
i = ii
}

3 {
res.has_aes_key = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.aes_key = v
i = ii
}

4 {
res.has_rsa_key = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.rsa_key = v
i = ii
}

5 {
res.has_url_host = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.url_host = v
i = ii
}

6 {
res.has_offset_detection_enabled = true
ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
res.offset_detection_enabled = v
i = ii
}

7 {
res.has_offset_detection_min_clean_chunk = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.offset_detection_min_clean_chunk = v
i = ii
}

8 {
res.has_offset_detection_blast_radius_pre = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.offset_detection_blast_radius_pre = v
i = ii
}

9 {
res.has_offset_detection_blast_radius_post = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.offset_detection_blast_radius_post = v
i = ii
}

10 {
res.has_offset_detection_max_distance_pre = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.offset_detection_max_distance_pre = v
i = ii
}

11 {
res.has_offset_detection_max_distance_post = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.offset_detection_max_distance_post = v
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
pub fn zzz_vproto_internal_new_ccontentbuilderinitdepotbuildresponse() CContentBuilderInitDepotBuildResponse {
return CContentBuilderInitDepotBuildResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuilderinitdepotbuildresponse(o CContentBuilderInitDepotBuildResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuilderinitdepotbuildresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderInitDepotBuildResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuilderinitdepotbuildresponse_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderStartDepotUploadRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depotid u32
has_depotid bool
workshop_itemid u64
has_workshop_itemid bool
for_local_cs bool
has_for_local_cs bool
baseline_manifestid u64
has_baseline_manifestid bool
manifest_size u32
has_manifest_size bool
}
pub fn (o &CContentBuilderStartDepotUploadRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_depotid {
res << vproto.pack_uint32_field(o.depotid, 2)
}

if o.has_workshop_itemid {
res << vproto.pack_uint64_field(o.workshop_itemid, 3)
}

if o.has_for_local_cs {
res << vproto.pack_bool_field(o.for_local_cs, 4)
}

if o.has_baseline_manifestid {
res << vproto.pack_uint64_field(o.baseline_manifestid, 5)
}

if o.has_manifest_size {
res << vproto.pack_uint32_field(o.manifest_size, 6)
}

return res
}

pub fn ccontentbuilderstartdepotuploadrequest_unpack(buf []byte) ?CContentBuilderStartDepotUploadRequest {
mut res := CContentBuilderStartDepotUploadRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_depotid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.depotid = v
i = ii
}

3 {
res.has_workshop_itemid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.workshop_itemid = v
i = ii
}

4 {
res.has_for_local_cs = true
ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
res.for_local_cs = v
i = ii
}

5 {
res.has_baseline_manifestid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.baseline_manifestid = v
i = ii
}

6 {
res.has_manifest_size = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.manifest_size = v
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
pub fn zzz_vproto_internal_new_ccontentbuilderstartdepotuploadrequest() CContentBuilderStartDepotUploadRequest {
return CContentBuilderStartDepotUploadRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuilderstartdepotuploadrequest(o CContentBuilderStartDepotUploadRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuilderstartdepotuploadrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderStartDepotUploadRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuilderstartdepotuploadrequest_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderStartDepotUploadResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
depot_build_handle u64
has_depot_build_handle bool
}
pub fn (o &CContentBuilderStartDepotUploadResponse) pack() []byte {
mut res := []byte{}
if o.has_depot_build_handle {
res << vproto.pack_uint64_field(o.depot_build_handle, 1)
}

return res
}

pub fn ccontentbuilderstartdepotuploadresponse_unpack(buf []byte) ?CContentBuilderStartDepotUploadResponse {
mut res := CContentBuilderStartDepotUploadResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_depot_build_handle = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.depot_build_handle = v
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
pub fn zzz_vproto_internal_new_ccontentbuilderstartdepotuploadresponse() CContentBuilderStartDepotUploadResponse {
return CContentBuilderStartDepotUploadResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuilderstartdepotuploadresponse(o CContentBuilderStartDepotUploadResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuilderstartdepotuploadresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderStartDepotUploadResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuilderstartdepotuploadresponse_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderGetMissingDepotChunksRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depot_build_handle u64
has_depot_build_handle bool
}
pub fn (o &CContentBuilderGetMissingDepotChunksRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_depot_build_handle {
res << vproto.pack_uint64_field(o.depot_build_handle, 2)
}

return res
}

pub fn ccontentbuildergetmissingdepotchunksrequest_unpack(buf []byte) ?CContentBuilderGetMissingDepotChunksRequest {
mut res := CContentBuilderGetMissingDepotChunksRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_depot_build_handle = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.depot_build_handle = v
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
pub fn zzz_vproto_internal_new_ccontentbuildergetmissingdepotchunksrequest() CContentBuilderGetMissingDepotChunksRequest {
return CContentBuilderGetMissingDepotChunksRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildergetmissingdepotchunksrequest(o CContentBuilderGetMissingDepotChunksRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildergetmissingdepotchunksrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderGetMissingDepotChunksRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildergetmissingdepotchunksrequest_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderGetMissingDepotChunksResponseChunks {
mut:
unknown_fields []vproto.UnknownField
pub mut:
sha []byte
has_sha bool
}
pub fn (o &CContentBuilderGetMissingDepotChunksResponseChunks) pack() []byte {
mut res := []byte{}
if o.has_sha {
res << vproto.pack_bytes_field(o.sha, 1)
}

return res
}

pub fn ccontentbuildergetmissingdepotchunksresponsechunks_unpack(buf []byte) ?CContentBuilderGetMissingDepotChunksResponseChunks {
mut res := CContentBuilderGetMissingDepotChunksResponseChunks{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_sha = true
ii, v := vproto.unpack_bytes_field(cur_buf, tag_wiretype.wire_type)?
res.sha = v
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
pub fn zzz_vproto_internal_new_ccontentbuildergetmissingdepotchunksresponsechunks() CContentBuilderGetMissingDepotChunksResponseChunks {
return CContentBuilderGetMissingDepotChunksResponseChunks{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildergetmissingdepotchunksresponsechunks(o CContentBuilderGetMissingDepotChunksResponseChunks, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildergetmissingdepotchunksresponsechunks(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderGetMissingDepotChunksResponseChunks) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildergetmissingdepotchunksresponsechunks_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderGetMissingDepotChunksResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
missing_chunks []CContentBuilderGetMissingDepotChunksResponseChunks
total_missing_chunks u32
has_total_missing_chunks bool
total_missing_bytes u64
has_total_missing_bytes bool
}
pub fn (o &CContentBuilderGetMissingDepotChunksResponse) pack() []byte {
mut res := []byte{}
// [packed=false]
for _, x in o.missing_chunks {
res << zzz_vproto_internal_pack_ccontentbuildergetmissingdepotchunksresponsechunks(x, 1)
}

if o.has_total_missing_chunks {
res << vproto.pack_uint32_field(o.total_missing_chunks, 2)
}

if o.has_total_missing_bytes {
res << vproto.pack_uint64_field(o.total_missing_bytes, 3)
}

return res
}

pub fn ccontentbuildergetmissingdepotchunksresponse_unpack(buf []byte) ?CContentBuilderGetMissingDepotChunksResponse {
mut res := CContentBuilderGetMissingDepotChunksResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_ccontentbuildergetmissingdepotchunksresponsechunks(cur_buf, tag_wiretype.wire_type)?
res.missing_chunks << v
i = ii
}

2 {
res.has_total_missing_chunks = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.total_missing_chunks = v
i = ii
}

3 {
res.has_total_missing_bytes = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.total_missing_bytes = v
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
pub fn zzz_vproto_internal_new_ccontentbuildergetmissingdepotchunksresponse() CContentBuilderGetMissingDepotChunksResponse {
return CContentBuilderGetMissingDepotChunksResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildergetmissingdepotchunksresponse(o CContentBuilderGetMissingDepotChunksResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildergetmissingdepotchunksresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderGetMissingDepotChunksResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildergetmissingdepotchunksresponse_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderFinishDepotUploadRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depot_build_handle u64
has_depot_build_handle bool
}
pub fn (o &CContentBuilderFinishDepotUploadRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_depot_build_handle {
res << vproto.pack_uint64_field(o.depot_build_handle, 2)
}

return res
}

pub fn ccontentbuilderfinishdepotuploadrequest_unpack(buf []byte) ?CContentBuilderFinishDepotUploadRequest {
mut res := CContentBuilderFinishDepotUploadRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_depot_build_handle = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.depot_build_handle = v
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
pub fn zzz_vproto_internal_new_ccontentbuilderfinishdepotuploadrequest() CContentBuilderFinishDepotUploadRequest {
return CContentBuilderFinishDepotUploadRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuilderfinishdepotuploadrequest(o CContentBuilderFinishDepotUploadRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuilderfinishdepotuploadrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderFinishDepotUploadRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuilderfinishdepotuploadrequest_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderFinishDepotUploadResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
manifestid u64
has_manifestid bool
prev_reused bool
has_prev_reused bool
}
pub fn (o &CContentBuilderFinishDepotUploadResponse) pack() []byte {
mut res := []byte{}
if o.has_manifestid {
res << vproto.pack_uint64_field(o.manifestid, 1)
}

if o.has_prev_reused {
res << vproto.pack_bool_field(o.prev_reused, 2)
}

return res
}

pub fn ccontentbuilderfinishdepotuploadresponse_unpack(buf []byte) ?CContentBuilderFinishDepotUploadResponse {
mut res := CContentBuilderFinishDepotUploadResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_manifestid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.manifestid = v
i = ii
}

2 {
res.has_prev_reused = true
ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
res.prev_reused = v
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
pub fn zzz_vproto_internal_new_ccontentbuilderfinishdepotuploadresponse() CContentBuilderFinishDepotUploadResponse {
return CContentBuilderFinishDepotUploadResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuilderfinishdepotuploadresponse(o CContentBuilderFinishDepotUploadResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuilderfinishdepotuploadresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderFinishDepotUploadResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuilderfinishdepotuploadresponse_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderCommitAppBuildRequestDepots {
mut:
unknown_fields []vproto.UnknownField
pub mut:
depotid u32
has_depotid bool
manifestid u64
has_manifestid bool
}
pub fn (o &CContentBuilderCommitAppBuildRequestDepots) pack() []byte {
mut res := []byte{}
if o.has_depotid {
res << vproto.pack_uint32_field(o.depotid, 1)
}

if o.has_manifestid {
res << vproto.pack_uint64_field(o.manifestid, 2)
}

return res
}

pub fn ccontentbuildercommitappbuildrequestdepots_unpack(buf []byte) ?CContentBuilderCommitAppBuildRequestDepots {
mut res := CContentBuilderCommitAppBuildRequestDepots{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_depotid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.depotid = v
i = ii
}

2 {
res.has_manifestid = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.manifestid = v
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
pub fn zzz_vproto_internal_new_ccontentbuildercommitappbuildrequestdepots() CContentBuilderCommitAppBuildRequestDepots {
return CContentBuilderCommitAppBuildRequestDepots{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildercommitappbuildrequestdepots(o CContentBuilderCommitAppBuildRequestDepots, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildercommitappbuildrequestdepots(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderCommitAppBuildRequestDepots) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildercommitappbuildrequestdepots_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderCommitAppBuildRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depot_manifests []CContentBuilderCommitAppBuildRequestDepots
build_notes string
has_build_notes bool
live_branch string
has_live_branch bool
}
pub fn (o &CContentBuilderCommitAppBuildRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

// [packed=false]
for _, x in o.depot_manifests {
res << zzz_vproto_internal_pack_ccontentbuildercommitappbuildrequestdepots(x, 2)
}

if o.has_build_notes {
res << vproto.pack_string_field(o.build_notes, 4)
}

if o.has_live_branch {
res << vproto.pack_string_field(o.live_branch, 5)
}

return res
}

pub fn ccontentbuildercommitappbuildrequest_unpack(buf []byte) ?CContentBuilderCommitAppBuildRequest {
mut res := CContentBuilderCommitAppBuildRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_ccontentbuildercommitappbuildrequestdepots(cur_buf, tag_wiretype.wire_type)?
res.depot_manifests << v
i = ii
}

4 {
res.has_build_notes = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.build_notes = v
i = ii
}

5 {
res.has_live_branch = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.live_branch = v
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
pub fn zzz_vproto_internal_new_ccontentbuildercommitappbuildrequest() CContentBuilderCommitAppBuildRequest {
return CContentBuilderCommitAppBuildRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildercommitappbuildrequest(o CContentBuilderCommitAppBuildRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildercommitappbuildrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderCommitAppBuildRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildercommitappbuildrequest_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderCommitAppBuildResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
buildid u32
has_buildid bool
}
pub fn (o &CContentBuilderCommitAppBuildResponse) pack() []byte {
mut res := []byte{}
if o.has_buildid {
res << vproto.pack_uint32_field(o.buildid, 1)
}

return res
}

pub fn ccontentbuildercommitappbuildresponse_unpack(buf []byte) ?CContentBuilderCommitAppBuildResponse {
mut res := CContentBuilderCommitAppBuildResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_buildid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.buildid = v
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
pub fn zzz_vproto_internal_new_ccontentbuildercommitappbuildresponse() CContentBuilderCommitAppBuildResponse {
return CContentBuilderCommitAppBuildResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildercommitappbuildresponse(o CContentBuilderCommitAppBuildResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildercommitappbuildresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderCommitAppBuildResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildercommitappbuildresponse_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderSignInstallScriptRequest {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depotid u32
has_depotid bool
install_script string
has_install_script bool
}
pub fn (o &CContentBuilderSignInstallScriptRequest) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_depotid {
res << vproto.pack_uint32_field(o.depotid, 2)
}

if o.has_install_script {
res << vproto.pack_string_field(o.install_script, 3)
}

return res
}

pub fn ccontentbuildersigninstallscriptrequest_unpack(buf []byte) ?CContentBuilderSignInstallScriptRequest {
mut res := CContentBuilderSignInstallScriptRequest{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_appid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.appid = v
i = ii
}

2 {
res.has_depotid = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.depotid = v
i = ii
}

3 {
res.has_install_script = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.install_script = v
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
pub fn zzz_vproto_internal_new_ccontentbuildersigninstallscriptrequest() CContentBuilderSignInstallScriptRequest {
return CContentBuilderSignInstallScriptRequest{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildersigninstallscriptrequest(o CContentBuilderSignInstallScriptRequest, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildersigninstallscriptrequest(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderSignInstallScriptRequest) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildersigninstallscriptrequest_unpack(v)?
return i, unpacked
}
pub struct CContentBuilderSignInstallScriptResponse {
mut:
unknown_fields []vproto.UnknownField
pub mut:
signed_install_script string
has_signed_install_script bool
}
pub fn (o &CContentBuilderSignInstallScriptResponse) pack() []byte {
mut res := []byte{}
if o.has_signed_install_script {
res << vproto.pack_string_field(o.signed_install_script, 1)
}

return res
}

pub fn ccontentbuildersigninstallscriptresponse_unpack(buf []byte) ?CContentBuilderSignInstallScriptResponse {
mut res := CContentBuilderSignInstallScriptResponse{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_signed_install_script = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.signed_install_script = v
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
pub fn zzz_vproto_internal_new_ccontentbuildersigninstallscriptresponse() CContentBuilderSignInstallScriptResponse {
return CContentBuilderSignInstallScriptResponse{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_ccontentbuildersigninstallscriptresponse(o CContentBuilderSignInstallScriptResponse, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_ccontentbuildersigninstallscriptresponse(buf []byte, tag_wiretype vproto.WireType) ?(int, CContentBuilderSignInstallScriptResponse) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := ccontentbuildersigninstallscriptresponse_unpack(v)?
return i, unpacked
}