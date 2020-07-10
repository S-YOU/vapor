
// Generated by vproto - Do not modify
module proto

import emily33901.vproto


[_allow_multiple_values]
enum ESteamPipeWorkType {
k_esteampipeclientworktype_invalid = 0
k_esteampipeclientworktype_stagefromchunkstores = 1
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_esteampipeworktype(e ESteamPipeWorkType, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_esteampipeworktype(buf []byte, tag_wiretype vproto.WireType) ?(int, ESteamPipeWorkType) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, ESteamPipeWorkType(v)
}
[_allow_multiple_values]
enum ESteamPipeOperationType {
k_esteampipeoperationtype_invalid = 0
k_esteampipeoperationtype_decryptcpu = 1
k_esteampipeoperationtype_diskread = 2
k_esteampipeoperationtype_diskwrite = 3
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_pack_esteampipeoperationtype(e ESteamPipeOperationType, num u32) []byte {
return vproto.pack_int32_field(int(e), num)
}
// FOR INTERNAL USE ONLY
fn zzz_vproto_internal_unpack_esteampipeoperationtype(buf []byte, tag_wiretype vproto.WireType) ?(int, ESteamPipeOperationType) {
i, v := vproto.unpack_int32_field(buf, tag_wiretype)?
return i, ESteamPipeOperationType(v)
}
pub struct CClientMetricsAppInterfaceCreation {
mut:
unknown_fields []vproto.UnknownField
pub mut:
raw_version string
has_raw_version bool
requested_interface_type string
has_requested_interface_type bool
}
pub fn (o &CClientMetricsAppInterfaceCreation) pack() []byte {
mut res := []byte{}
if o.has_raw_version {
res << vproto.pack_string_field(o.raw_version, 1)
}

if o.has_requested_interface_type {
res << vproto.pack_string_field(o.requested_interface_type, 2)
}

return res
}

pub fn cclientmetricsappinterfacecreation_unpack(buf []byte) ?CClientMetricsAppInterfaceCreation {
mut res := CClientMetricsAppInterfaceCreation{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_raw_version = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.raw_version = v
i = ii
}

2 {
res.has_requested_interface_type = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.requested_interface_type = v
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
pub fn zzz_vproto_internal_new_cclientmetricsappinterfacecreation() CClientMetricsAppInterfaceCreation {
return CClientMetricsAppInterfaceCreation{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsappinterfacecreation(o CClientMetricsAppInterfaceCreation, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsappinterfacecreation(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsAppInterfaceCreation) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsappinterfacecreation_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsAppInterfaceMethodCounts {
mut:
unknown_fields []vproto.UnknownField
pub mut:
interface_name string
has_interface_name bool
method_name string
has_method_name bool
call_count u32
has_call_count bool
}
pub fn (o &CClientMetricsAppInterfaceMethodCounts) pack() []byte {
mut res := []byte{}
if o.has_interface_name {
res << vproto.pack_string_field(o.interface_name, 1)
}

if o.has_method_name {
res << vproto.pack_string_field(o.method_name, 2)
}

if o.has_call_count {
res << vproto.pack_uint32_field(o.call_count, 3)
}

return res
}

pub fn cclientmetricsappinterfacemethodcounts_unpack(buf []byte) ?CClientMetricsAppInterfaceMethodCounts {
mut res := CClientMetricsAppInterfaceMethodCounts{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_interface_name = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.interface_name = v
i = ii
}

2 {
res.has_method_name = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.method_name = v
i = ii
}

3 {
res.has_call_count = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.call_count = v
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
pub fn zzz_vproto_internal_new_cclientmetricsappinterfacemethodcounts() CClientMetricsAppInterfaceMethodCounts {
return CClientMetricsAppInterfaceMethodCounts{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsappinterfacemethodcounts(o CClientMetricsAppInterfaceMethodCounts, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsappinterfacemethodcounts(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsAppInterfaceMethodCounts) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsappinterfacemethodcounts_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsAppInterfaceStatsNotification {
mut:
unknown_fields []vproto.UnknownField
pub mut:
game_id u64
has_game_id bool
interfaces_created []CClientMetricsAppInterfaceCreation
methods_called []CClientMetricsAppInterfaceMethodCounts
session_length_seconds u32
has_session_length_seconds bool
}
pub fn (o &CClientMetricsAppInterfaceStatsNotification) pack() []byte {
mut res := []byte{}
if o.has_game_id {
res << vproto.pack_uint64_field(o.game_id, 1)
}

// [packed=false]
for _, x in o.interfaces_created {
res << zzz_vproto_internal_pack_cclientmetricsappinterfacecreation(x, 2)
}

// [packed=false]
for _, x in o.methods_called {
res << zzz_vproto_internal_pack_cclientmetricsappinterfacemethodcounts(x, 3)
}

if o.has_session_length_seconds {
res << vproto.pack_uint32_field(o.session_length_seconds, 4)
}

return res
}

pub fn cclientmetricsappinterfacestatsnotification_unpack(buf []byte) ?CClientMetricsAppInterfaceStatsNotification {
mut res := CClientMetricsAppInterfaceStatsNotification{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_game_id = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.game_id = v
i = ii
}

2 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_cclientmetricsappinterfacecreation(cur_buf, tag_wiretype.wire_type)?
res.interfaces_created << v
i = ii
}

3 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_cclientmetricsappinterfacemethodcounts(cur_buf, tag_wiretype.wire_type)?
res.methods_called << v
i = ii
}

4 {
res.has_session_length_seconds = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.session_length_seconds = v
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
pub fn zzz_vproto_internal_new_cclientmetricsappinterfacestatsnotification() CClientMetricsAppInterfaceStatsNotification {
return CClientMetricsAppInterfaceStatsNotification{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsappinterfacestatsnotification(o CClientMetricsAppInterfaceStatsNotification, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsappinterfacestatsnotification(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsAppInterfaceStatsNotification) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsappinterfacestatsnotification_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsIPv6ConnectivityResult {
mut:
unknown_fields []vproto.UnknownField
pub mut:
protocol_tested u32
has_protocol_tested bool
connectivity_state u32
has_connectivity_state bool
}
pub fn (o &CClientMetricsIPv6ConnectivityResult) pack() []byte {
mut res := []byte{}
if o.has_protocol_tested {
res << vproto.pack_uint32_field(o.protocol_tested, 1)
}

if o.has_connectivity_state {
res << vproto.pack_uint32_field(o.connectivity_state, 2)
}

return res
}

pub fn cclientmetricsipv6connectivityresult_unpack(buf []byte) ?CClientMetricsIPv6ConnectivityResult {
mut res := CClientMetricsIPv6ConnectivityResult{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_protocol_tested = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.protocol_tested = v
i = ii
}

2 {
res.has_connectivity_state = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.connectivity_state = v
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
pub fn zzz_vproto_internal_new_cclientmetricsipv6connectivityresult() CClientMetricsIPv6ConnectivityResult {
return CClientMetricsIPv6ConnectivityResult{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsipv6connectivityresult(o CClientMetricsIPv6ConnectivityResult, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsipv6connectivityresult(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsIPv6ConnectivityResult) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsipv6connectivityresult_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsIPv6ConnectivityNotification {
mut:
unknown_fields []vproto.UnknownField
pub mut:
cell_id u32
has_cell_id bool
results []CClientMetricsIPv6ConnectivityResult
private_ip_is_rfc6598 bool
has_private_ip_is_rfc6598 bool
}
pub fn (o &CClientMetricsIPv6ConnectivityNotification) pack() []byte {
mut res := []byte{}
if o.has_cell_id {
res << vproto.pack_uint32_field(o.cell_id, 1)
}

// [packed=false]
for _, x in o.results {
res << zzz_vproto_internal_pack_cclientmetricsipv6connectivityresult(x, 2)
}

if o.has_private_ip_is_rfc6598 {
res << vproto.pack_bool_field(o.private_ip_is_rfc6598, 3)
}

return res
}

pub fn cclientmetricsipv6connectivitynotification_unpack(buf []byte) ?CClientMetricsIPv6ConnectivityNotification {
mut res := CClientMetricsIPv6ConnectivityNotification{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_cell_id = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.cell_id = v
i = ii
}

2 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_cclientmetricsipv6connectivityresult(cur_buf, tag_wiretype.wire_type)?
res.results << v
i = ii
}

3 {
res.has_private_ip_is_rfc6598 = true
ii, v := vproto.unpack_bool_field(cur_buf, tag_wiretype.wire_type)?
res.private_ip_is_rfc6598 = v
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
pub fn zzz_vproto_internal_new_cclientmetricsipv6connectivitynotification() CClientMetricsIPv6ConnectivityNotification {
return CClientMetricsIPv6ConnectivityNotification{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsipv6connectivitynotification(o CClientMetricsIPv6ConnectivityNotification, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsipv6connectivitynotification(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsIPv6ConnectivityNotification) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsipv6connectivitynotification_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsSteamPipeWorkStatsOperation {
mut:
unknown_fields []vproto.UnknownField
pub mut:
@type ESteamPipeOperationType
has_type bool
num_ops u32
has_num_ops bool
num_bytes u64
has_num_bytes bool
busy_time_ms u64
has_busy_time_ms bool
idle_time_ms u64
has_idle_time_ms bool
sum_run_time_ms u64
has_sum_run_time_ms bool
sum_wait_time_ms u64
has_sum_wait_time_ms bool
}
pub fn (o &CClientMetricsSteamPipeWorkStatsOperation) pack() []byte {
mut res := []byte{}
if o.has_type {
res << zzz_vproto_internal_pack_esteampipeoperationtype(o.@type, 1)
}

if o.has_num_ops {
res << vproto.pack_uint32_field(o.num_ops, 2)
}

if o.has_num_bytes {
res << vproto.pack_uint64_field(o.num_bytes, 3)
}

if o.has_busy_time_ms {
res << vproto.pack_uint64_field(o.busy_time_ms, 4)
}

if o.has_idle_time_ms {
res << vproto.pack_uint64_field(o.idle_time_ms, 5)
}

if o.has_sum_run_time_ms {
res << vproto.pack_uint64_field(o.sum_run_time_ms, 6)
}

if o.has_sum_wait_time_ms {
res << vproto.pack_uint64_field(o.sum_wait_time_ms, 7)
}

return res
}

pub fn cclientmetricssteampipeworkstatsoperation_unpack(buf []byte) ?CClientMetricsSteamPipeWorkStatsOperation {
mut res := CClientMetricsSteamPipeWorkStatsOperation{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_type = true
ii, v := zzz_vproto_internal_unpack_esteampipeoperationtype(cur_buf, tag_wiretype.wire_type)?
res.@type = v
i = ii
}

2 {
res.has_num_ops = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.num_ops = v
i = ii
}

3 {
res.has_num_bytes = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.num_bytes = v
i = ii
}

4 {
res.has_busy_time_ms = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.busy_time_ms = v
i = ii
}

5 {
res.has_idle_time_ms = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.idle_time_ms = v
i = ii
}

6 {
res.has_sum_run_time_ms = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.sum_run_time_ms = v
i = ii
}

7 {
res.has_sum_wait_time_ms = true
ii, v := vproto.unpack_uint64_field(cur_buf, tag_wiretype.wire_type)?
res.sum_wait_time_ms = v
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
pub fn zzz_vproto_internal_new_cclientmetricssteampipeworkstatsoperation() CClientMetricsSteamPipeWorkStatsOperation {
return CClientMetricsSteamPipeWorkStatsOperation{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricssteampipeworkstatsoperation(o CClientMetricsSteamPipeWorkStatsOperation, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricssteampipeworkstatsoperation(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsSteamPipeWorkStatsOperation) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricssteampipeworkstatsoperation_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsSteamPipeWorkStatsNotification {
mut:
unknown_fields []vproto.UnknownField
pub mut:
appid u32
has_appid bool
depotid u32
has_depotid bool
work_type ESteamPipeWorkType
has_work_type bool
operations []CClientMetricsSteamPipeWorkStatsOperation
}
pub fn (o &CClientMetricsSteamPipeWorkStatsNotification) pack() []byte {
mut res := []byte{}
if o.has_appid {
res << vproto.pack_uint32_field(o.appid, 1)
}

if o.has_depotid {
res << vproto.pack_uint32_field(o.depotid, 2)
}

if o.has_work_type {
res << zzz_vproto_internal_pack_esteampipeworktype(o.work_type, 3)
}

// [packed=false]
for _, x in o.operations {
res << zzz_vproto_internal_pack_cclientmetricssteampipeworkstatsoperation(x, 4)
}

return res
}

pub fn cclientmetricssteampipeworkstatsnotification_unpack(buf []byte) ?CClientMetricsSteamPipeWorkStatsNotification {
mut res := CClientMetricsSteamPipeWorkStatsNotification{}
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
res.has_work_type = true
ii, v := zzz_vproto_internal_unpack_esteampipeworktype(cur_buf, tag_wiretype.wire_type)?
res.work_type = v
i = ii
}

4 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_cclientmetricssteampipeworkstatsoperation(cur_buf, tag_wiretype.wire_type)?
res.operations << v
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
pub fn zzz_vproto_internal_new_cclientmetricssteampipeworkstatsnotification() CClientMetricsSteamPipeWorkStatsNotification {
return CClientMetricsSteamPipeWorkStatsNotification{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricssteampipeworkstatsnotification(o CClientMetricsSteamPipeWorkStatsNotification, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricssteampipeworkstatsnotification(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsSteamPipeWorkStatsNotification) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricssteampipeworkstatsnotification_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsReportClientErrorNotificationError {
mut:
unknown_fields []vproto.UnknownField
pub mut:
identifier string
has_identifier bool
message string
has_message bool
count u32
has_count bool
}
pub fn (o &CClientMetricsReportClientErrorNotificationError) pack() []byte {
mut res := []byte{}
if o.has_identifier {
res << vproto.pack_string_field(o.identifier, 1)
}

if o.has_message {
res << vproto.pack_string_field(o.message, 2)
}

if o.has_count {
res << vproto.pack_uint32_field(o.count, 3)
}

return res
}

pub fn cclientmetricsreportclienterrornotificationerror_unpack(buf []byte) ?CClientMetricsReportClientErrorNotificationError {
mut res := CClientMetricsReportClientErrorNotificationError{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_identifier = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.identifier = v
i = ii
}

2 {
res.has_message = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.message = v
i = ii
}

3 {
res.has_count = true
ii, v := vproto.unpack_uint32_field(cur_buf, tag_wiretype.wire_type)?
res.count = v
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
pub fn zzz_vproto_internal_new_cclientmetricsreportclienterrornotificationerror() CClientMetricsReportClientErrorNotificationError {
return CClientMetricsReportClientErrorNotificationError{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsreportclienterrornotificationerror(o CClientMetricsReportClientErrorNotificationError, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsreportclienterrornotificationerror(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsReportClientErrorNotificationError) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsreportclienterrornotificationerror_unpack(v)?
return i, unpacked
}
pub struct CClientMetricsReportClientErrorNotification {
mut:
unknown_fields []vproto.UnknownField
pub mut:
product string
has_product bool
version string
has_version bool
errors []CClientMetricsReportClientErrorNotificationError
}
pub fn (o &CClientMetricsReportClientErrorNotification) pack() []byte {
mut res := []byte{}
if o.has_product {
res << vproto.pack_string_field(o.product, 1)
}

if o.has_version {
res << vproto.pack_string_field(o.version, 2)
}

// [packed=false]
for _, x in o.errors {
res << zzz_vproto_internal_pack_cclientmetricsreportclienterrornotificationerror(x, 3)
}

return res
}

pub fn cclientmetricsreportclienterrornotification_unpack(buf []byte) ?CClientMetricsReportClientErrorNotification {
mut res := CClientMetricsReportClientErrorNotification{}
mut total := 0
		for total < buf.len {
			mut i := 0
			buf_before_wire_type := buf[total..]
			tag_wiretype := vproto.unpack_tag_wire_type(buf_before_wire_type) or { return error('malformed protobuf (couldnt parse tag & wire type)') }
			cur_buf := buf_before_wire_type[tag_wiretype.consumed..]
			match tag_wiretype.tag {
1 {
res.has_product = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.product = v
i = ii
}

2 {
res.has_version = true
ii, v := vproto.unpack_string_field(cur_buf, tag_wiretype.wire_type)?
res.version = v
i = ii
}

3 {
// [packed=false]
ii, v := zzz_vproto_internal_unpack_cclientmetricsreportclienterrornotificationerror(cur_buf, tag_wiretype.wire_type)?
res.errors << v
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
pub fn zzz_vproto_internal_new_cclientmetricsreportclienterrornotification() CClientMetricsReportClientErrorNotification {
return CClientMetricsReportClientErrorNotification{}
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_pack_cclientmetricsreportclienterrornotification(o CClientMetricsReportClientErrorNotification, num u32) []byte {
return vproto.pack_message_field(o.pack(), num)
}
// FOR INTERNAL USE ONLY
pub fn zzz_vproto_internal_unpack_cclientmetricsreportclienterrornotification(buf []byte, tag_wiretype vproto.WireType) ?(int, CClientMetricsReportClientErrorNotification) {
i, v := vproto.unpack_message_field(buf, tag_wiretype)?
mut unpacked := cclientmetricsreportclienterrornotification_unpack(v)?
return i, unpacked
}