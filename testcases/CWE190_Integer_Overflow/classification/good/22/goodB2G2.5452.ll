@CWE190_Integer_Overflow__int64_t_max_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_84190 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1d276:
  store i32 1, ptr @CWE190_Integer_Overflow__int64_t_max_preinc_22_goodB2G2Global, align 4
  call void @anon0(i64 9223372036854775807)
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1d3ad:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_max_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1d401, label %dec_label_pc_1d3c7

dec_label_pc_1d3c7:                               ; preds = %dec_label_pc_1d3ad
  %2 = icmp eq i64 %data, 9223372036854775807
  br i1 %2, label %dec_label_pc_1d3f2, label %dec_label_pc_1d3d7

dec_label_pc_1d3d7:                               ; preds = %dec_label_pc_1d3c7
  %3 = add i64 %data, 1
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_1d401

dec_label_pc_1d3f2:                               ; preds = %dec_label_pc_1d3c7
  call void @printLine(ptr @global_var_84190)
  br label %dec_label_pc_1d401

dec_label_pc_1d401:                               ; preds = %dec_label_pc_1d3f2, %dec_label_pc_1d3d7, %dec_label_pc_1d3ad
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

